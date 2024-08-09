class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
    rating: RatingModel.fromJson(jsonData['rating']));
  }
}


class RatingModel{
  final double rate;
  final int count;

  RatingModel({ required this.count, required this.rate});

  factory RatingModel.fromJson(jsonData){
    return RatingModel(count: jsonData['count'], rate: jsonData['rate']);
  }

}
