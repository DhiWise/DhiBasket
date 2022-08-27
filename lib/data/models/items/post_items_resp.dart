class PostItemsResp {
  String? email;
  bool? bArchived;
  bool? bDraft;
  String? name;
  String? userid;
  String? contact;
  String? slug;
  String? updatedOn;
  String? updatedBy;
  String? createdOn;
  String? createdBy;
  String? publishedOn;
  String? publishedBy;
  String? sCid;
  String? sId;

  PostItemsResp(
      {this.email,
      this.bArchived,
      this.bDraft,
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

  PostItemsResp.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    bArchived = json['_archived'];
    bDraft = json['_draft'];
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
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.bArchived != null) {
      data['_archived'] = this.bArchived;
    }
    if (this.bDraft != null) {
      data['_draft'] = this.bDraft;
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
