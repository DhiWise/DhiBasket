class PostItemsReq {
  Fields? fields;

  PostItemsReq({this.fields});

  PostItemsReq.fromJson(Map<String, dynamic> json) {
    fields = json['fields'] != null ? Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.fields != null) {
      data['fields'] = this.fields?.toJson();
    }
    return data;
  }
}

class Fields {
  String? name;
  String? slug;
  bool? bArchived;
  bool? bDraft;
  String? productid;
  String? email;
  String? userid;
  String? contact;
  String? city;
  String? state;
  String? country;
  String? area;
  int? pincode;
  String? landmark;
  String? type;

  Fields(
      {this.name,
      this.slug,
      this.bArchived,
      this.bDraft,
      this.productid,
      this.email,
      this.contact,
      this.userid,
      this.city,
      this.state,
      this.country,
      this.area,
      this.pincode,
      this.landmark,
      this.type});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    bArchived = json['_archived'];
    bDraft = json['_draft'];
    productid = json['productid'];
    email = json['email'];
    contact = json['contact'];
    userid = json['userid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.bArchived != null) {
      data['_archived'] = this.bArchived;
    }
    if (this.bDraft != null) {
      data['_draft'] = this.bDraft;
    }
    if (this.productid != null) {
      data['productid'] = this.productid;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.userid != null) {
      data['userid'] = this.userid;
    }
    if (this.contact != null) {
      data['contact'] = this.contact;
    }
    return data;
  }
}
