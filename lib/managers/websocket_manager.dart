import 'dart:convert';
import 'package:smart_cafeteria_app/managers/events.dart';
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
    _channel = WebSocketChannel.connect(Uri.parse(url));
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

  Future<int> sendOrder(OrderCreateAction action) async {
    // Convert the action to a JSON string
    String actionJson = jsonEncode(action);

    // Wait for the response from the server
    final response =  _broadcastStream.firstWhere((data) {
      var decodedData = jsonDecode(data);
      return decodedData['eventType'] == 'orderCreated';
    });

    // Send the action JSON string over the WebSocket connection
    _channel?.sink.add(actionJson);

    // Parse the response and return the order ID
    var data = jsonDecode(await response);
    return data['order']['Id'];
  }
}