class FacebookUser {
  final String userId;
  final String? name;
  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? email;

  FacebookUser.fromMap(Map<String, dynamic> map)
      : userId = map['id'] as String,
        name = map['name'] as String?,
        firstName = map['first_name'] as String?,
        middleName = map['middle_name'] as String?,
        lastName = map['last_name'] as String?,
        email = map['email'] as String?;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'name': name,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'email': email,
    };
  }
}
