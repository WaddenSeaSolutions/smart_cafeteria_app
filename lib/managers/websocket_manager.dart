import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketManager {
  // Static field for the singleton instance
  static final WebSocketManager _instance = WebSocketManager._internal();

  late Stream<dynamic> _broadcastStream;

  // Private constructor for internal instantiation
  WebSocketManager._internal();

  // Getter to access the singleton instance
  static WebSocketManager get instance => _instance;

  // WebSocketChannel instance
  WebSocketChannel? _channel;

  // User ID
  String? userid;

  // Method to connect to the WebSocket server
  void connect(String url) {
    // If the channel is already connected, return to avoid creating a new connection
    if (_channel != null) {
      return;
    }
    _channel = IOWebSocketChannel.connect(url);
    _broadcastStream = _channel!.stream.asBroadcastStream();
    print('WebSocket connected to $url'); // Add this line

  }

  // Method to send a message through the WebSocket
  void sendMessage(String message) {
    _channel?.sink.add(message);
  }

  // Method to get a stream of messages from the WebSocket
  Stream<String> getMessages() {
    return _broadcastStream.map((data) => data as String);
  }

  // Method to close the WebSocket connection
  void close() {
    _channel?.sink.close();
    _channel = null; // Reset the channel when it's closed
  }

  void fetchOrderOptions() {
    final request = {
      'action': 'orderOptionRead',
    };

    final jsonData = jsonEncode(request);

    sendMessage(jsonData);
  }

  Future<String> sendOrder(Map<String, dynamic> order) async {
    try {
      // Remove the 'id' field from the order
      order.remove('id');

      // Convert the order to a JSON string
      String orderJson = jsonEncode(order);

      // Send the order JSON string over the WebSocket connection
      _channel?.sink.add(orderJson);
      print('Order sent: $orderJson'); // Add this line


      // Wait for the response from the server
      String response = await _broadcastStream.firstWhere((data) => jsonDecode(data)['action'] == 'orderCreateHandler');
      print('Response received: $response'); // Add this line

      // Extract the order ID from the response
      String orderId = jsonDecode(response)['orderId'];

      return orderId;
    } catch (e) {
      print('An error occurred while sending the order: $e');
      // Handle the exception here. You might want to show an error message to the user,
      // log the error, or take some other action.
      throw e;
    }
  }
}