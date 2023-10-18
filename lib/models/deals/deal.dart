import 'dart:convert';
import 'package:intl/intl.dart';

Deals dealFromJson(String str) => Deals.fromJson(json.decode(str));

String dealToJson(Deals data) => json.encode(data.toJson());

class Deals {
  List<Deal> deals;

  Deals({
    this.deals,
  });

  factory Deals.fromJson(Map<String, dynamic> json) => Deals(
        deals: List<Deal>.from(json['deals'].map((x) => Deal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'deals': List<dynamic>.from(deals.map((x) => x.toJson())),
      };
}

class Deal {
  String id;
  String dealId;
  String entityId;
  String product;
  String dealImage;
  String deal;
  String expiryDate;
  String createdAt;
  String createdBy;
  String status;

  Deal({
    this.id,
    this.dealId,
    this.entityId,
    this.product,
    this.dealImage,
    this.deal,
    this.expiryDate,
    this.createdAt,
    this.createdBy,
    this.status,
  });

  factory Deal.fromJson(Map<String, dynamic> json) => Deal(
        id: json['_id'],
        dealId: json['deal_id'],
        entityId: json['entity_id'],
        product: json['product'],
        dealImage: json['deal_image'],
        deal: json['deal'],
        expiryDate: json['expiry_date'],
        createdAt: json['created_at'],
        createdBy: json['created_by'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'deal_id': dealId,
        'entity_id': entityId,
        'product': product,
        'deal_image': dealImage,
        'deal': deal,
        'expiry_date': expiryDate,
        'created_at': createdAt,
        'created_by': createdBy,
        'status': status,
      };
}
