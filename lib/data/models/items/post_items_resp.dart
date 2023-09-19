class PostItemsResp {
  String email = " ";
  bool bArchived = true;
  bool bDraft = true;
  String name = " ";
  String userid = " ";
  String contact = " ";
  String slug = " ";
  String updatedOn = " ";
  String updatedBy = " ";
  String createdOn = " ";
  String createdBy = " ";
  String publishedOn = " ";
  String publishedBy = " ";
  String sCid = " ";
  String sId = " ";
  PostItemsResp.empty();
  PostItemsResp({
    required this.email,
    required this.bArchived,
    required this.bDraft,
    required this.name,
    required this.userid,
    required this.contact,
    required this.slug,
    required this.updatedOn,
    required this.updatedBy,
    required this.createdOn,
    required this.createdBy,
    required this.publishedOn,
    required this.publishedBy,
    required this.sCid,
    required this.sId,
  });

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
    return {
      'email': this.email,
      '_archived': this.bArchived,
      '_draft': this.bDraft,
      'name': this.name,
      'userid': this.userid,
      'contact': this.contact,
      'slug': this.slug,
      'updated-on': this.updatedOn,
      'updated-by': this.updatedBy,
      'created-on': this.createdOn,
      'created-by': this.createdBy,
      'published-on': this.publishedOn,
      'published-by': this.publishedBy,
      '_cid': this.sCid,
      '_id': this.sId,
    };
  }
}
