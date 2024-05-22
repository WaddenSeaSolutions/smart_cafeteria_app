import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_cafeteria_app/managers/events.dart';
import 'package:smart_cafeteria_app/managers/models.dart';
import 'package:smart_cafeteria_app/managers/websocket_manager.dart';

const NumberOfPossibleSaledSelections = 4;

class OrderScreen extends StatefulWidget {
  final WebSocketManager webSocketManager;

  OrderScreen({required this.webSocketManager});

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late StreamSubscription<String> _subscription;
  List<OrderOption> orderOptions = [];
  Set<int> selections = {};
  Map<String, int> orderCounts = {}; // Map to keep track of order counts

  @override
  void initState() {
    super.initState();
    widget.webSocketManager.fetchOrderOptions();
    _subscription = widget.webSocketManager.getMessages().listen((message) {
      final data = jsonDecode(message);
      if (data['eventType'] == 'orderOptions') {
        final event = OrderOptionsEvent.fromJson(data);
        setState(() {
          orderOptions = event.orderOptions;
        });
      }
    });
  }

  // In OrderScreen
  void confirmOrder() async {
    final action = OrderCreateAction(OrderOptionId: selections.toList());

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

  selectOption(OrderOption saladOption) {
    setState(() {
      if (selections.length < NumberOfPossibleSaledSelections) {
        selections.add(saladOption.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderScreen'),
      ),
      body: Column(
        children: [
          Text("Du har ${NumberOfPossibleSaledSelections - selections.length} valg mulighed tilbage",),
           Expanded(
            child: ListView.builder(
              itemCount: orderOptions.length,
              itemBuilder: (context, index) {
                final saladOption = orderOptions[index];
                if (saladOption.active) {
                  return ListTile(
                    title: Text(saladOption.optionName),
                    leading: Text(selections.contains(saladOption.id) ? "1x" : '0x'),
                    // Display order count
                    trailing: ElevatedButton(
                      onPressed: selections.contains(saladOption.id) ||
                              selections.length >= NumberOfPossibleSaledSelections
                          ? null
                          : () => selectOption(saladOption),
                      child: Text('Order'),
                    ),
                  );
                } else {
                  return SizedBox.shrink(); // Don't display inactive salads
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: selections.isNotEmpty ? confirmOrder : null,
            child: Icon(Icons.check),
            tooltip: 'Confirm Order',
          ),
          SizedBox(width: 10), // Add some spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              setState(() {
                selections.clear();
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
