
import 'dart:convert';

ScannedDataModel scannedDataModelFromMap(String str) => ScannedDataModel.fromMap(json.decode(str));

String scannedDataModelToMap(ScannedDataModel data) => json.encode(data.toMap());

class ScannedDataModel {
  String? code;
  int? total;
  int? offset;
  List<ScannedItem>? items;

  ScannedDataModel({
    this.code,
    this.total,
    this.offset,
    this.items,
  });

  factory ScannedDataModel.fromMap(Map<String, dynamic> json) => ScannedDataModel(
    code: json["code"],
    total: json["total"],
    offset: json["offset"],
    items: json["items"] == null ? [] : List<ScannedItem>.from(json["items"]!.map((x) => ScannedItem.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "code": code,
    "total": total,
    "offset": offset,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toMap())),
  };
}

class ScannedItem {
  String? ean;
  String? title;
  String? description;
  String? brand;
  String? model;
  String? color;
  String? size;
  String? dimension;
  String? weight;
  String? category;
  String? currency;
  double? lowestRecordedPrice;
  double? highestRecordedPrice;
  List<String>? images;
  List<Offer>? offers;
  String? elid;

  ScannedItem({
    this.ean,
    this.title,
    this.description,
    this.brand,
    this.model,
    this.color,
    this.size,
    this.dimension,
    this.weight,
    this.category,
    this.currency,
    this.lowestRecordedPrice,
    this.highestRecordedPrice,
    this.images,
    this.offers,
    this.elid,
  });

  factory ScannedItem.fromMap(Map<String, dynamic> json) => ScannedItem(
    ean: json["ean"],
    title: json["title"],
    description: json["description"],
    brand: json["brand"],
    model: json["model"],
    color: json["color"],
    size: json["size"],
    dimension: json["dimension"],
    weight: json["weight"],
    category: json["category"],
    currency: json["currency"],
    lowestRecordedPrice: json["lowest_recorded_price"]?.toDouble(),
    highestRecordedPrice: json["highest_recorded_price"]?.toDouble(),
    images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
    offers: json["offers"] == null ? [] : List<Offer>.from(json["offers"]!.map((x) => Offer.fromMap(x))),
    elid: json["elid"],
  );

  Map<String, dynamic> toMap() => {
    "ean": ean,
    "title": title,
    "description": description,
    "brand": brand,
    "model": model,
    "color": color,
    "size": size,
    "dimension": dimension,
    "weight": weight,
    "category": category,
    "currency": currency,
    "lowest_recorded_price": lowestRecordedPrice,
    "highest_recorded_price": highestRecordedPrice,
    "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
    "offers": offers == null ? [] : List<dynamic>.from(offers!.map((x) => x.toMap())),
    "elid": elid,
  };
}

class Offer {
  String? merchant;
  String? domain;
  String? title;
  String? currency;
  String? listPrice;
  double? price;
  String? shipping;
  String? condition;
  String? availability;
  String? link;
  int? updatedT;

  Offer({
    this.merchant,
    this.domain,
    this.title,
    this.currency,
    this.listPrice,
    this.price,
    this.shipping,
    this.condition,
    this.availability,
    this.link,
    this.updatedT,
  });

  factory Offer.fromMap(Map<String, dynamic> json) => Offer(
    merchant: json["merchant"],
    domain: json["domain"],
    title: json["title"],
    currency: json["currency"],
    listPrice: json["list_price"],
    price: json["price"]?.toDouble(),
    shipping: json["shipping"],
    condition: json["condition"],
    availability: json["availability"],
    link: json["link"],
    updatedT: json["updated_t"],
  );

  Map<String, dynamic> toMap() => {
    "merchant": merchant,
    "domain": domain,
    "title": title,
    "currency": currency,
    "list_price": listPrice,
    "price": price,
    "shipping": shipping,
    "condition": condition,
    "availability": availability,
    "link": link,
    "updated_t": updatedT,
  };
}
