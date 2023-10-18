import 'dart:convert';
import 'package:intl/intl.dart';

NewsList newsFromJson(String str) => NewsList.fromJson(json.decode(str));

String newsToJson(NewsList data) => json.encode(data.toJson());

class NewsList {
  List<News> newslist;

  NewsList({
    this.newslist,
  });

  factory NewsList.fromJson(Map<String, dynamic> json) => NewsList(
        newslist: List<News>.from(json['news'].map((x) => News.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'newslist': List<dynamic>.from(newslist.map((x) => x.toJson())),
      };
}

class News {
  String id;
  String newsId;
  String headlines;
  String content;
  String contentImage;
  List<String> location;
  String locationName;
  String createdAt;
  String createdBy;
  String status;

  News({
    this.id,
    this.newsId,
    this.headlines,
    this.content,
    this.contentImage,
    this.location,
    this.locationName,
    this.createdAt,
    this.createdBy,
    this.status,
  });

  factory News.fromJson(Map<String, dynamic> json) => News(
        id: json['_id'],
        newsId: json['news_id'],
        headlines: json['headlines'],
        content: json['content'],
        contentImage: json['content_image'],
        location: json['location'],
        locationName: json['location_name'],
        createdAt: json['createdAt'],
        createdBy: json['createdBy'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'news_id': newsId,
        'headlines': headlines,
        'content': content,
        'content_image': contentImage,
        'location': location,
        'location_name': locationName,
        'created_at': createdAt,
        'created_by': createdBy,
        'status': status,
      };
}
