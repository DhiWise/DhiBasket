class GetFruitsResp {
  List<Items>? items;
  int? count;
  int? limit;
  int? offset;
  int? total;

  GetFruitsResp({this.items, this.count, this.limit, this.offset, this.total});

  GetFruitsResp.fromJson(Map<String, dynamic> json) {
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
  String? categoryid;

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
      this.categoryid});

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
    categoryid = json['categoryid'];
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
    if (this.categoryid != null) {
      data['categoryid'] = this.categoryid;
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
