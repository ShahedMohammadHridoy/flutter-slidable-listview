class User {
  final String name;
  final String email;
  final String image;

  User({
    required this.name,
    required this.email,
    required this.image,
  });
}


final allUsers = [
  User(
    name: 'Shahed Mohammad Hridoy',
    email: 'shahed@gmail.com',
    image: 'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-1/286816493_5129934747104799_3398545415827979223_n.jpg?stp=dst-jpg_p160x160&_nc_cat=100&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=jsqZoaDPOHYAX8861AV&_nc_ht=scontent.fdac24-1.fna&oh=00_AfAvO53lyUi8HiX35aOzG63rw1WlBGuFjhZWxb93qynd5w&oe=64094668'
  ),
  User(
      name: 'Md. Nazim',
      email: 'nazim@gmail.com',
      image: 'https://images.pexels.com/photos/15174803/pexels-photo-15174803.jpeg?cs=srgb&dl=pexels-un-bu%C3%B1uelo-15174803.jpg&fm=jpg&_gl=1*80yqu3*_ga*MTc1NDcxMjEyMy4xNjc3OTU3NzA4*_ga_8JE65Q40S6*MTY3Nzk1NzcwNy4xLjEuMTY3Nzk1Nzg5OC4wLjAuMA..'
  ),
  User(
      name: 'Hasib Uddin',
      email: 'hasib@uddin.com',
      image: 'https://images.pexels.com/photos/11785073/pexels-photo-11785073.jpeg?cs=srgb&dl=pexels-nikita-igonkin-11785073.jpg&fm=jpg&_gl=1*332db3*_ga*MTc1NDcxMjEyMy4xNjc3OTU3NzA4*_ga_8JE65Q40S6*MTY3Nzk1NzcwNy4xLjEuMTY3Nzk1Nzk2MC4wLjAuMA..'
  ),
];