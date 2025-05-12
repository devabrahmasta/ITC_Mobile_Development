class UserModel {
  String nama;
  String imgUrl;

  UserModel({required this.nama, required this.imgUrl});

  static List<UserModel> data = [
    UserModel(
        nama: 'Bintoro',
        imgUrl:
            'https://th.bing.com/th/id/OIP.L9OLHxU1kf1Vxkj8y5cMIwAAAA?rs=1&pid=ImgDetMain'),
    UserModel(
        nama: 'Krisna',
        imgUrl:
            'https://th.bing.com/th/id/OIP.8oDSA0pY4gfYJaUFyJQrGQHaFc?rs=1&pid=ImgDetMain'),
  ];
}
