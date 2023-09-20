class FruitsResp {
  List<FruitItem> items = [];
  int count = 0;
  int limit = 0;
  int offset = 0;
  int total = 0;

  FruitsResp({
    required this.items,
    required this.count,
    required this.limit,
    required this.offset,
    required this.total,
  });

  FruitsResp.empty();

  FruitsResp.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      json['items'].forEach((v) {
        items.add(FruitItem.fromJson(v));
      });
    }
    count = json['count'] ?? ' ';
    limit = json['limit'] ?? ' ';
    offset = json['offset'] ?? ' ';
    total = json['total'] ?? ' ';
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

class FruitItem {
  bool bArchived = true;
  bool bDraft = true;
  String price = "";
  String name = "";
  Image image = Image.empty();
  String slug = " ";
  String updatedOn = " ";
  String updatedBy = " ";
  String createdOn = " ";
  String createdBy = " ";
  String publishedOn = " ";
  String publishedBy = " ";
  String weight = " ";
  String sCid = " ";
  String sId = " ";
  String categoryid = " ";

  FruitItem({
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
    required this.categoryid,
  });

  FruitItem.fromJson(Map<String, dynamic> json) {
    bArchived = json['_archived'] ?? ' ';
    bDraft = json['_draft'] ?? ' ';
    price = json['price'] ?? ' ';
    name = json['name'] ?? ' ';
    image =
        json['image'] != null ? Image.fromJson(json['image']) : Image.empty();
    slug = json['slug'] ?? ' ';
    updatedOn = json['updated-on'] ?? ' ';
    updatedBy = json['updated-by'] ?? ' ';
    createdOn = json['created-on'] ?? ' ';
    createdBy = json['created-by'] ?? ' ';
    publishedOn = json['published-on'] ?? ' ';
    publishedBy = json['published-by'] ?? ' ';
    weight = json['weight'] ?? ' ';
    sCid = json['_cid'] ?? ' ';
    sId = json['_id'] ?? ' ';
    categoryid = json['categoryid'] ?? ' ';
  }

  Map<String, dynamic> toJson() {
    return {
      '_archived': this.bArchived,
      '_draft': this.bDraft,
      'price': this.price,
      'name': this.name,
      'image': this.image.toJson(),
      'slug': this.slug,
      'updated-on': this.updatedOn,
      'updated-by': this.updatedBy,
      'created-on': this.createdOn,
      'created-by': this.createdBy,
      'published-by': this.publishedBy,
      'weight': this.weight,
      '_cid': this.sCid,
      '_id': this.sId,
      'categoryid': this.categoryid,
    };
  }
}

class Image {
  String fileId = "";
  String url = "";
  String alt = "";

  Image.empty();

  Image({
    required this.fileId,
    required this.url,
    required this.alt,
  });

  Image.fromJson(Map<String, dynamic> json) {
    fileId = json['fileId'] ?? ' ';
    url = json['url'] ?? ' ';
    alt = json['alt'] ?? ' ';
  }

  Map<String, dynamic> toJson() {
    return {
      'fileId': this.fileId,
      'url': this.url,
      'alt': this.alt,
    };
  }
}
