import 'package:grocery_app/data/models/items/fruits_resp.dart';

class ProductResp {
  List<Items> items = [];
  int count = 0;
  int limit = 0;
  int offset = 0;
  int total = 0;
  ProductResp.empty();
  ProductResp({
    required this.items,
    required this.count,
    required this.limit,
    required this.offset,
    required this.total,
  });

  ProductResp.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      json['items'].forEach((v) {
        items.add(Items.fromJson(v));
      });
    }
    count = json['count'];
    limit = json['limit'];
    offset = json['offset'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() => {
        'items': this.items.map((v) => v.toJson()).toList(),
        'count': this.count,
        'limit': this.limit,
        'offset': this.offset,
        'total': this.total,
      };
}

class Items {
  bool bArchived = true;
  bool bDraft = true;
  String price = "";
  String weight = "";
  String name = "";
  Image image = Image.empty();
  String slug = " ";
  String categoryid = " ";
  String updatedOn = " ";
  String updatedBy = " ";
  String createdOn = " ";
  String createdBy = " ";
  String publishedOn = " ";
  String publishedBy = " ";
  String sCid = "";
  String sId = "";
  String description = " ";

  Items({
    required this.bArchived,
    required this.bDraft,
    required this.price,
    required this.weight,
    required this.name,
    required this.image,
    required this.slug,
    required this.categoryid,
    required this.updatedOn,
    required this.updatedBy,
    required this.createdOn,
    required this.createdBy,
    required this.publishedOn,
    required this.publishedBy,
    required this.sCid,
    required this.sId,
    required this.description,
  });

  Items.fromJson(Map<String, dynamic> json) {
    bArchived = json['_archived'];
    bDraft = json['_draft'];
    price = json['price'];
    weight = json['weight'];
    name = json['name'];
    image = json['image'] != null ? Image.fromJson(json['image']) : image;
    slug = json['slug'];
    categoryid = json['categoryid'];
    updatedOn = json['updated-on'];
    updatedBy = json['updated-by'];
    createdOn = json['created-on'];
    createdBy = json['created-by'];
    publishedOn = json['published-on'];
    publishedBy = json['published-by'];
    sCid = json['_cid'];
    sId = json['_id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['_archived'] = this.bArchived;
    data['_draft'] = this.bDraft;
    data['price'] = this.price;
    data['weight'] = this.weight;
    data['name'] = this.name;
    data['image'] = this.image.toJson();
    data['slug'] = this.slug;
    data['categoryid'] = this.categoryid;
    data['updated-on'] = this.updatedOn;
    data['updated-by'] = this.updatedBy;
    data['created-on'] = this.createdOn;
    data['created-by'] = this.createdBy;
    data['published-on'] = this.publishedOn;
    data['published-by'] = this.publishedBy;
    data['_cid'] = this.sCid;
    data['_id'] = this.sId;
    data['description'] = this.description;
    return data;
  }
}

// class Image {
//   String? fileId;
//   String? url;
//   Null alt;

//   Image({this.fileId, this.url, this.alt});

//   Image.fromJson(Map<String, dynamic> json) {
//     fileId = json['fileId'];
//     url = json['url'];
//     alt = json['alt'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     if (this.fileId != null) {
//       data['fileId'] = this.fileId;
//     }
//     if (this.url != null) {
//       data['url'] = this.url;
//     }
//     if (this.alt != null) {
//       data['alt'] = this.alt;
//     }
//     return data;
//   }
// }
