import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/managers/websocket_manager.dart';

class OrderScreen extends StatefulWidget {
  final WebSocketManager webSocketManager;

  OrderScreen({required this.webSocketManager});

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late StreamSubscription<String> _subscription;
  List<dynamic> orderOptions = [];
  Map<String, int> orderCounts = {}; // Map to keep track of order counts

  @override
  void initState() {
    super.initState();
    widget.webSocketManager.fetchOrderOptions();
    _subscription = widget.webSocketManager.getMessages().listen((message) {
      final data = jsonDecode(message);
      if (data['eventType'] == 'orderOptions') {
        setState(() {
          orderOptions = data['orderOptions'];
          // Initialize orderCounts for each order option
          orderOptions.forEach((option) {
            orderCounts[option['optionName']] = 0;
          });
        });
      }
    });
  }

  void confirmOrder() {
    // Gather all the orders from the orderCounts map where the count is greater than 0
    List<String> ordersToConfirm = orderCounts.entries
        .where((entry) => entry.value > 0)
        .map((entry) => entry.key)
        .toList();

    // For each order, create a new order object and send it to your database
    for (String order in ordersToConfirm) {
      var newOrder = {
        'action': ' Your action here',
        'timestamp': DateTime.now().toIso8601String(),
        'payment': false,
        'done': false,
        'userid': widget.webSocketManager.userid, // Use the userid from the WebSocketManager
        'order': order,
      };

      // Send newOrder to your database
      widget.webSocketManager.sendOrder(newOrder);
    }

    // Reset orderCounts
    setState(() {
      orderCounts = Map.fromIterable(orderCounts.keys, key: (k) => k, value: (v) => 0);
    });

    // Show a pop-up message
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order Sent'),
          content: Text('Your order has been sent to the kantine damer.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderScreen'),
      ),
      body: ListView.builder(
        itemCount: orderOptions.length,
        itemBuilder: (context, index) {
          final saladOption = orderOptions[index];
          if (saladOption['active']) {
            return ListTile(
              title: Text(saladOption['optionName']),
              leading: Text('${orderCounts[saladOption['optionName']]}x'), // Display order count
              trailing: ElevatedButton(
                onPressed: orderCounts[saladOption['optionName']]! >= 1 // Disable button if order count is 1 or more
                    ? null
                    : () {
                  setState(() {
                    orderCounts[saladOption['optionName']] = (orderCounts[saladOption['optionName']] ?? 0) + 1;                  });
                  // Handle order logic here
                },
                child: Text('Order'),
              ),
            );
          } else {
            return SizedBox.shrink(); // Don't display inactive salads
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: orderCounts.values.where((count) => count > 0).length >= 4 ? confirmOrder : null,
        child: Icon(Icons.check),
        tooltip: 'Confirm Order',
      ),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}