class FoodDetail {
  String id;
  String image;
  String name;
  double price;
  double rate;
  String kcal;
  String cookingTime;
  String description;

  FoodDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.kcal,
    required this.cookingTime,
    required this.description,
  });
}

List<FoodDetail> foodsItems = [
  FoodDetail(
    id: '1',
    image:
        'https://static.gatra.com/foldershared/images/2019/fuad/12-Dec/IMG_20191215_134955.jpg',
    name: 'Sate Ayam',
    price: 12,
    rate: 4.5,
    kcal: '100',
    cookingTime: '20 min',
    description:
        "Daging ayam yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu.",
  ),
  FoodDetail(
      id: '2',
      image:
          'https://www.warisankuliner.com/gfx/recipes/temp_thumb-1658299943.jpg',
      name: 'Rendang',
      price: 20,
      rate: 5.0,
      kcal: '100',
      cookingTime: '15 min',
      description:
          "Masakan padang berbahan daging sapi dan santan kelapa sebagai bahan utama dengan kandungan bumbu yang kaya akan rempah-rempah."),
  FoodDetail(
    id: '3',
    image:
        'https://api2.kemenparekraf.go.id/storage/app/uploads/public/620/b45/62a/620b4562adc33870532034.jpg',
    name: 'Bakso',
    price: 5,
    rate: 4.6,
    kcal: '20',
    cookingTime: '10 min',
    description:
        "Makanan indonesia yang berbahan dasar daging dengan campuran tepung tapioka yang dibentuk seperti bola. Dengan campuran mie, bihun, seledri dan bawang goreng",
  ),
  FoodDetail(
    id: '4',
    image:
        'https://asset-2.tstatic.net/jambi/foto/bank/images/resep-pempek-tanpa-ikan.jpg',
    name: 'Pempek',
    price: 8,
    rate: 5.0,
    kcal: '160',
    cookingTime: '08 min',
    description:
        "Makanan khas Palembang berbahan dasar tepung yang dicampur dengan ikan giling lalu digoreng. Lalu dimakan dengan dengan kuah cuko.",
  ),
  FoodDetail(
    id: '5',
    image:
        "https://i.pinimg.com/564x/a7/d5/99/a7d599ac93820a46eecefbd34713e850.jpg",
    name: 'Es Cendol',
    price: 2,
    rate: 4.8,
    kcal: '100',
    cookingTime: '05 min',
    description:
        "Minuman khas Indonesia yang bahan dasarnya terbuat dari tepung beras dan di campur dengan bahan tambahan lainnya yaitu air kapur, ekstrak daun pandan dan garam.",
  ),
  FoodDetail(
    id: '5',
    image: "https://www.astronauts.id/blog/wp-content/uploads/2023/03/Daftar-Resep-Es-Buah-yang-Mudah-dan-Enak-768x512.jpg",
    name: 'Es Buah',
    price: 05,
    rate: 5.0,
    kcal: '10',
    cookingTime: 'Ready',
    description:
        "Potongan dari beberapa buah yang dicampur menjadi satu lalu diberi sirup dan susu agar lebih segar ditambahkan es batu juga",
  ),
];
