// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DataModel {

 String id;
  String name;
  String image;
  String message;
  num unread_message_count;
  String date;
  DataModel({
    required this.id,
    required this.name,
    required this.image,
    required this.message,
    required this.unread_message_count,
    required this.date,
  });

  

  DataModel copyWith({
    String? id,
    String? name,
    String? image,
    String? message,
    num? unread_message_count,
    String? date,
  }) {
    return DataModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      message: message ?? this.message,
      unread_message_count: unread_message_count ?? this.unread_message_count,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'message': message,
      'unread_message_count': unread_message_count,
      'date': date,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      message: map['message'] as String,
      unread_message_count: map['unread_message_count'] as num,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) => DataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataModel(id: $id, name: $name, image: $image, message: $message, unread_message_count: $unread_message_count, date: $date)';
  }

  @override
  bool operator ==(covariant DataModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.image == image &&
      other.message == message &&
      other.unread_message_count == unread_message_count &&
      other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      image.hashCode ^
      message.hashCode ^
      unread_message_count.hashCode ^
      date.hashCode;
  }
}
