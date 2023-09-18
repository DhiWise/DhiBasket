class GetItemIdResp {
  List<Items>? items;
  int? count;
  int? limit;
  int? offset;
  int? total;

  GetItemIdResp({this.items, this.count, this.limit, this.offset, this.total});

  GetItemIdResp.fromJson(Map<String, dynamic> json) {
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
  String? email;
  String? name;
  String? userid;
  String? contact;
  String? slug;
  String? updatedOn;
  String? updatedBy;
  String? createdOn;
  String? createdBy;
  Null publishedOn;
  Null publishedBy;
  String? sCid;
  String? sId;

  Items(
      {this.bArchived,
      this.bDraft,
      this.email,
      this.name,
      this.userid,
      this.contact,
      this.slug,
      this.updatedOn,
      this.updatedBy,
      this.createdOn,
      this.createdBy,
      this.publishedOn,
      this.publishedBy,
      this.sCid,
      this.sId});

  Items.fromJson(Map<String, dynamic> json) {
    bArchived = json['_archived'];
    bDraft = json['_draft'];
    email = json['email'];
    name = json['name'];
    userid = json['userid'];
    contact = json['contact'];
    slug = json['slug'];
    updatedOn = json['updated-on'];
    updatedBy = json['updated-by'];
    createdOn = json['created-on'];
    createdBy = json['created-by'];
    publishedOn = json['published-on'];
    publishedBy = json['published-by'];
    sCid = json['_cid'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.bArchived != null) {
      data['_archived'] = this.bArchived;
    }
    if (this.bDraft != null) {
      data['_draft'] = this.bDraft;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.userid != null) {
      data['userid'] = this.userid;
    }
    if (this.contact != null) {
      data['contact'] = this.contact;
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
    if (this.sCid != null) {
      data['_cid'] = this.sCid;
    }
    if (this.sId != null) {
      data['_id'] = this.sId;
    }
    return data;
  }
}
