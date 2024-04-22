import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketManager {
  WebSocketChannel? _channel;

  void connect(String url) {
    _channel = IOWebSocketChannel.connect(url);
  }

  void sendMessage(String message) {
    _channel?.sink.add(message);
  }

  Stream<String> getMessages() {
    return _channel!.stream.map((data) => data as String);
  }

  void close() {
    _channel?.sink.close();
  }
}
