class LoggedUserModel {
  final String id;
  final String email;
  final String name;
  final String imgUrl;
  final List<String> roles;

  LoggedUserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.imgUrl,
    required this.roles,
  });

  factory LoggedUserModel.fromJson(Map<String, dynamic> json) {
    return LoggedUserModel(
      id: json['id'] ?? '',
      email: json['email'] ?? '',
      name: json['name'] ?? '',
      imgUrl: json['imgUrl'] ?? '',
      roles: json['roles'] != null ? List<String>.from(json['roles']) : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'imgUrl': imgUrl,
      'roles': roles,
    };
  }

  LoggedUserModel copyWith({
    String? id,
    String? email,
    String? name,
    String? imgUrl,
    List<String>? roles,
  }) {
    return LoggedUserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      roles: roles ?? this.roles,
    );
  }
}
