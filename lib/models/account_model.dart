class AccountModel {
  int? iD;
  String? username;
  String? password;
  String? doB;
  String? email;
  String? avatarUrl;
  String? publicName;
  String? phoneNumber;

  AccountModel(
      {this.iD,
      this.username,
      this.password,
      this.doB,
      this.email,
      this.avatarUrl,
      this.publicName,
      this.phoneNumber});

  AccountModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    username = json['Username'];
    password = json['Password'];
    doB = json['DoB'];
    email = json['Email'];
    avatarUrl = json['AvatarUrl'];
    publicName = json['PublicName'];
    phoneNumber = json['PhoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Username'] = username;
    data['Password'] = password;
    data['DoB'] = doB;
    data['Email'] = email;
    data['AvatarUrl'] = avatarUrl;
    data['PublicName'] = publicName;
    data['PhoneNumber'] = phoneNumber;
    return data;
  }
}
