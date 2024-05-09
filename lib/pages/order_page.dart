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

  @override
  void initState() {
    super.initState();
    widget.webSocketManager.fetchOrderOptions();
    _subscription = widget.webSocketManager.getMessages().listen((message) {
      final data = jsonDecode(message);
      if (data['action'] == 'orderOptionRead') {
        setState(() {
          orderOptions = data['data'];
        });
      }
    });
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
              title: Text(saladOption['optionname']),
              trailing: ElevatedButton(
                onPressed: () {
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
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}