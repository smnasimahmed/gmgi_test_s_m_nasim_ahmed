class Post {
  String name;
  String email;
  String compName;

  Post({required this.name, required this.email, this.compName = ''});

  factory Post.fromJson(Map<String, Object?> jsonMap) {
    return Post(
      name: jsonMap['name'] != null ? jsonMap['name'] as String : 'null',
      email: jsonMap['email'] != null ? jsonMap['email'] as String : 'null',
      compName: jsonMap['company'] != null
          ? Company.fromJson(jsonMap['company'] as Map<String, Object?>)
              .companyName
          : 'null',
    );
  }
}

class Company {
  String companyName;
  Company({required this.companyName});

  factory Company.fromJson(Map<String, Object?> compJsonMap) {
    return Company(
        companyName: compJsonMap['name'] != null
            ? compJsonMap['name'] as String
            : 'null');
  }
}
