class PostItemsReq {
  Fields fields = Fields.empty();
  PostItemsReq.empty();
  PostItemsReq({required this.fields});

  PostItemsReq.fromJson(Map<String, dynamic> json) {
    fields = json['fields'] != null ? Fields.fromJson(json['fields']) : fields;
  }

  Map<String, dynamic> toJson() {
    return {'fields': this.fields.toJson()};
  }
}

class Fields {
  String name = " ";
  String slug = " ";
  bool bArchived = true;
  bool bDraft = true;
  String productid = " ";
  String email = " ";
  String userid = " ";
  String contact = " ";
  String city = " ";
  String state = " ";
  String country = " ";
  String area = " ";
  int pincode = 0;
  String landmark = " ";
  String type = " ";

  Fields({
    required this.name,
    this.slug = '',
    this.bArchived = false,
    this.bDraft = false,
    this.productid = '',
    this.email = '',
    this.contact = '',
    required this.userid,
    this.city = '',
    this.state = '',
    this.country = '',
    this.area = '',
    this.pincode = 0,
    this.landmark = '',
    this.type = '',
  });

  Fields.empty();

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

  Map<String, dynamic> toJson() => {
        'name': this.name,
        'slug': this.slug,
        '_archived': this.bArchived,
        '_draft': this.bDraft,
        'productid': this.productid,
        'email': this.email,
        'userid': this.userid,
        'contact': this.contact,
      };
}
