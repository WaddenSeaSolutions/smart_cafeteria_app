import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/managers/events.dart';
import 'package:smart_cafeteria_app/managers/models.dart';
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

  // In OrderScreen
  void confirmOrder() async {
    /*
    // Gather all the orders from the orderCounts map where the count is greater than 0
    List<String> ordersToConfirm = orderCounts.entries
        .where((entry) => entry.value > 0)
        .map((entry) => entry.key)
        .toList();

    // For each order, create a new order object and send it to your database
      var newOrder = {
        'action': 'orderCreateHandler',
        'order': ordersToConfirm,
      };
     */
    final action = OrderCreateAction(
      order: orderCounts.entries
          .map((entry) =>
              OrderOption(optionName: entry.key, active: true, deleted: false))
          .toList(),
    );

    // Send newOrder to your database and wait for the order ID
    String orderId = await widget.webSocketManager.sendOrder(action);
    print('Order ID received: $orderId');

    // Reset orderCounts
    setState(() {
      orderCounts =
          Map.fromIterable(orderCounts.keys, key: (k) => k, value: (v) => 0);
    });

    // Show a pop-up message with the order ID
    showDialog(
      context: context,
      builder: (BuildContext context) {
        print('Showing dialog');

        return AlertDialog(
          title: Text('Order Sent'),
          content: Text(
              'Your order has been sent to the kantine damer. Your order ID is $orderId.'),
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
              leading: Text('${orderCounts[saladOption['optionName']]}x'),
              // Display order count
              trailing: ElevatedButton(
                onPressed: (orderCounts[saladOption['optionName']] ?? 0) < 1 &&
                        orderCounts.values.where((count) => count > 0).length <
                            4
                    ? () {
                        setState(() {
                          orderCounts[saladOption['optionName']] =
                              (orderCounts[saladOption['optionName']] ?? 0) + 1;
                        });
                      }
                    : null,
                child: Text('Order'),
              ),
            );
          } else {
            return SizedBox.shrink(); // Don't display inactive salads
          }
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:
                orderCounts.values.where((count) => count > 0).length >= 1
                    ? confirmOrder
                    : null,
            child: Icon(Icons.check),
            tooltip: 'Confirm Order',
          ),
          SizedBox(width: 10), // Add some spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              setState(() {
                orderCounts = Map.fromIterable(orderCounts.keys,
                    key: (k) => k, value: (v) => 0);
              });
            },
            child: Icon(Icons.cancel),
            tooltip: 'Cancel Order',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
