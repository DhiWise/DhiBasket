class GetItemsResp {
  List<Items>? items;
  int? count;
  int? limit;
  int? offset;
  int? total;

  GetItemsResp({this.items, this.count, this.limit, this.offset, this.total});

  GetItemsResp.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    count = json['count'];
    limit = json['limit'];
    offset = json['offset'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.items != null) {
      data['items'] = this.items?.map((v) => v.toJson()).toList();
    }
    if (this.count != null) {
      data['count'] = this.count;
    }
    if (this.limit != null) {
      data['limit'] = this.limit;
    }
    if (this.offset != null) {
      data['offset'] = this.offset;
    }
    if (this.total != null) {
      data['total'] = this.total;
    }
    return data;
  }
}

class Items {
  bool? bArchived;
  bool? bDraft;
  String? price;
  String? name;
  Image? image;
  String? slug;
  String? updatedOn;
  String? updatedBy;
  String? createdOn;
  String? createdBy;
  Null publishedOn;
  Null publishedBy;
  String? weight;
  String? sCid;
  String? sId;
  String? userid;
  String? city;
  String? state;
  String? country;
  String? area;
  int? pincode;
  String? landmark;
  String? type;

  Items(
      {this.bArchived,
      this.bDraft,
      this.price,
      this.name,
      this.image,
      this.slug,
      this.updatedOn,
      this.updatedBy,
      this.createdOn,
      this.createdBy,
      this.publishedOn,
      this.publishedBy,
      this.weight,
      this.sCid,
      this.sId,
      this.userid,
      this.city,
      this.state,
      this.country,
      this.area,
      this.pincode,
      this.landmark,
      this.type});

  Items.fromJson(Map<String, dynamic> json) {
    bArchived = json['_archived'];
    bDraft = json['_draft'];
    price = json['price'];
    name = json['name'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
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
    if (this.bArchived != null) {
      data['_archived'] = this.bArchived;
    }
    if (this.bDraft != null) {
      data['_draft'] = this.bDraft;
    }
    if (this.price != null) {
      data['price'] = this.price;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.image != null) {
      data['image'] = this.image?.toJson();
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.updatedOn != null) {
      data['updated-on'] = this.updatedOn;
    }
    if (this.updatedBy != null) {
      data['updated-by'] = this.updatedBy;
    }
    if (this.createdOn != null) {
      data['created-on'] = this.createdOn;
    }
    if (this.createdBy != null) {
      data['created-by'] = this.createdBy;
    }
    if (this.publishedOn != null) {
      data['published-on'] = this.publishedOn;
    }
    if (this.publishedBy != null) {
      data['published-by'] = this.publishedBy;
    }
    if (this.weight != null) {
      data['weight'] = this.weight;
    }
    if (this.sCid != null) {
      data['_cid'] = this.sCid;
    }
    if (this.sId != null) {
      data['_id'] = this.sId;
    }
    return data;
  }
}

class Image {
  String? fileId;
  String? url;
  Null alt;

  Image({this.fileId, this.url, this.alt});

  Image.fromJson(Map<String, dynamic> json) {
    fileId = json['fileId'];
    url = json['url'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.fileId != null) {
      data['fileId'] = this.fileId;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.alt != null) {
      data['alt'] = this.alt;
    }
    return data;
  }
}
