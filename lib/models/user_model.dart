class UserModel {
  String firstName;
  String lastName;
  String email;
  String kitchenName;
  String kitchenAddress;
  String password;
  String mobileNumber;
 
  double latitude;
  double longitude;
  String pincode;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.kitchenName,
    required this.kitchenAddress,
    required this.password,
    required this.mobileNumber,
      required this.latitude,
    required this.longitude,
    required this.pincode,
  });


  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'kitchen_name': kitchenName,
      'kitchen_address': kitchenAddress,
      'password': password,
      'number': mobileNumber,
       'latitude': latitude,
      'longitude': longitude,
      'pincode': pincode,
    };
  }

 
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      kitchenName: json['kitchen_name'],
      kitchenAddress: json['kitchen_address'],
      password: json['password'],
      mobileNumber: json['number'],
     latitude: json['latitude'],
     longitude: json['longitude'],
      pincode: json['pincode'],
    );
  }
}
