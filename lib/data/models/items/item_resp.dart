import 'package:grocery_app/data/models/items/fruits_resp.dart';

class ItemResp {
  List<Items> items = [];
  int count = 0;
  int limit = 0;
  int offset = 0;
  int total = 0;

  ItemResp({
    required this.items,
    required this.count,
    required this.limit,
    required this.offset,
    required this.total,
  });
  ItemResp.empty();

  ItemResp.fromJson(Map<String, dynamic> json) {
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

  Map<String, dynamic> toJson() {
    return {
      'items': this.items.map((v) => v.toJson()).toList(),
      'count': this.count,
      'limit': this.limit,
      'offset': this.offset,
      'total': this.total,
    };
  }
}

class Items {
  bool bArchived = true;
  bool bDraft = true;
  String price = " ";
  String name = " ";
  Image image = Image.empty();
  String slug = "";
  String updatedOn = "";
  String updatedBy = "";
  String createdOn = "";
  String createdBy = "";
  String publishedOn = "";
  String publishedBy = "";
  String weight = "";
  String sCid = "";
  String sId = "";
  String userid = "";
  String city = "";
  String state = "";
  String country = "";
  String area = "";
  int pincode = 0;
  String landmark = " ";
  String type = " ";

  Items({
    required this.bArchived,
    required this.bDraft,
    required this.price,
    required this.name,
    required this.image,
    required this.slug,
    required this.updatedOn,
    required this.updatedBy,
    required this.createdOn,
    required this.createdBy,
    required this.publishedOn,
    required this.publishedBy,
    required this.weight,
    required this.sCid,
    required this.sId,
    required this.userid,
    required this.city,
    required this.state,
    required this.country,
    required this.area,
    required this.pincode,
    required this.landmark,
    required this.type,
  });

  Items.fromJson(Map<String, dynamic> json) {
    bArchived = json['_archived'];
    bDraft = json['_draft'];
    price = json['price'];
    name = json['name'];
    image =
        json['image'] != null ? Image.fromJson(json['image']) : Image.empty();
    slug = json['slug'];
    updatedOn = json['updated-on'];
    updatedBy = json['updated-by'];
    createdOn = json['created-on'];
    createdBy = json['created-by'];
    publishedOn = json['published-on'];
    publishedBy = json['published-by'];
    weight = json['weight'];
    sCid = json['_cid'];
    sId = json['_id'];
    city = json['city'];
    state = json['state'];
    userid = json['userid'];
    pincode = json['pincode'];
    landmark = json['landmark'];
    country = json['country'];
    area = json['area'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['_archived'] = this.bArchived;
    data['_draft'] = this.bDraft;
    data['price'] = this.price;
    data['name'] = this.name;
    data['image'] = this.image.toJson();
    data['slug'] = this.slug;
    data['updated-on'] = this.updatedOn;
    data['updated-by'] = this.updatedBy;
    data['created-on'] = this.createdOn;
    data['created-by'] = this.createdBy;
    data['published-on'] = this.publishedOn;
    data['published-by'] = this.publishedBy;
    data['weight'] = this.weight;
    data['_cid'] = this.sCid;
    data['_id'] = this.sId;
    return data;
  }
}
