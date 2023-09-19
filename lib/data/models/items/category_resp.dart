import 'fruits_resp.dart';

class CategoryResp {
  List<CategoryItems> items = [];
  int count = 0;
  int limit = 0;
  int offset = 0;
  int total = 0;

  CategoryResp({
    required this.items,
    required this.count,
    required this.limit,
    required this.offset,
    required this.total,
  });
  CategoryResp.empty();
  CategoryResp.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      json['items'].forEach((v) {
        if (v != null) items.add(CategoryItems.fromJson(v));
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

class CategoryItems {
  bool bArchived = true;
  bool bDraft = true;
  String color = '';
  String description = '';
  String name = '';
  Image icon = Image.empty();
  String slug = "";
  String updatedOn = "";
  String updatedBy = "";
  String createdOn = "";
  String createdBy = "";
  String publishedOn = "";
  String publishedBy = "";
  String sCid = "";
  String sId = "";

  CategoryItems({
    required this.color,
    required this.bArchived,
    required this.bDraft,
    required this.description,
    required this.name,
    required this.icon,
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

  CategoryItems.fromJson(Map<String, dynamic> json) {
    print("[+] Color: json['color']");
    color = json['color'] ?? ' ';
    bArchived = json['_archived'] ?? true;
    bDraft = json['_draft'] ?? true;
    description = json['description'] ?? ' ';
    name = json['name'] ?? ' ';
    icon = json['icon'] != null ? Image.fromJson(json['icon']) : Image.empty();
    slug = json['slug'] ?? ' ';
    updatedOn = json['updated-on'] ?? ' ';
    updatedBy = json['updated-by'] ?? ' ';
    createdOn = json['created-on'] ?? ' ';
    createdBy = json['created-by'] ?? ' ';
    publishedOn = json['published-on'] ?? ' ';
    publishedBy = json['published-by'] ?? ' ';
    sCid = json['_cid'] ?? ' ';
    sId = json['_id'] ?? ' ';
  }

  Map<String, dynamic> toJson() {
    return {
      'color': this.color,
      '_archived': this.bArchived,
      '_draft': this.bDraft,
      'description': this.description,
      'name': this.name,
      'icon': this.icon.toJson(),
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

// class Icon {
//   String? fileId;
//   String? url;
//   Null alt;

//   Icon({this.fileId, this.url, this.alt});

//   Icon.fromJson(Map<String, dynamic> json) {
//     fileId = json['fileId'];
//     url = json['url'];
//     alt = json['alt'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     if (this.fileId != null) {
//       data['fileId'] = this.fileId;
//     }
//     if (this.url != null) {
//       data['url'] = this.url;
//     }
//     if (this.alt != null) {
//       data['alt'] = this.alt;
//     }
//     return data;
//   }
// }
