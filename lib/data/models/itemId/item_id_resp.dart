class ItemID {
  List<Items> items = [];
  int count = 0;
  int limit = 0;
  int offset = 0;
  int total = 0;

  ItemID({
    required this.items,
    required this.count,
    required this.limit,
    required this.offset,
    required this.total,
  });
  ItemID.empty();

  ItemID.fromJson(Map<String, dynamic> json) {
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
  String email = "";
  String name = "";
  String userid = "";
  String contact = "";
  String slug = "";
  String updatedOn = "";
  String updatedBy = "";
  String createdOn = "";
  String createdBy = "";
  String publishedOn = "";
  String publishedBy = "";
  String sCid = "";
  String sId = "";

  Items({
    required this.bArchived,
    required this.bDraft,
    required this.email,
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
    final Map<String, dynamic> data = {
      '_archived': this.bArchived,
      '_draft': this.bDraft,
      'email': this.email,
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
    return data;
  }
}
