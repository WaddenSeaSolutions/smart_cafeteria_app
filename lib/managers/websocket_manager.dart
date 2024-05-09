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

  // Method to connect to the WebSocket server
  void connect(String url) {
    // If the channel is already connected, return to avoid creating a new connection
    if (_channel != null) {
      return;
    }
    _channel = IOWebSocketChannel.connect(url);
    _broadcastStream = _channel!.stream.asBroadcastStream();
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
}
