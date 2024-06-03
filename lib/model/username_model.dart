// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class usernameModel {
  String username;
  usernameModel({
    required this.username,
  });

  usernameModel copyWith({
    String? username,
  }) {
    return usernameModel(
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory usernameModel.fromMap(Map<String, dynamic> map) {
    return usernameModel(
      username: map['username'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory usernameModel.fromJson(String source) => usernameModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'usernameModel(username: $username)';

  @override
  bool operator ==(covariant usernameModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username;
  }

  @override
  int get hashCode => username.hashCode;
 }
