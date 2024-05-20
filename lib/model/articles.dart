class Article{
  late String name;
  late String price;
  late String urlToImg;
  late String ram;
  late String storage;
  late String color;
  late String size;
  late String resolutionDisplay;
  late String technology;
  late String rearCamera;
  late String rearCameraResolution;
  late String frontCamera;
  late String frontCameraResolution;

  Article({
    required this.name,
    required this.price,
    required this.urlToImg,
    required this.ram,
    required this.storage,
    required this.color,
    required this.size,
    required this.resolutionDisplay,
    required this.technology,
    required this.rearCamera,
    required this.rearCameraResolution,
    required this.frontCamera,
    required this.frontCameraResolution,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        name: json['name'],
        price: json['price'],
        urlToImg: json['urlToImg'],
        ram: json['ram'],
        storage: json['storage'],
        color: json['color'],
        size: json['size'],
        resolutionDisplay: json['resolutionDisplay'],
        technology: json['technology'],
        rearCamera: json['rearCamera'],
        rearCameraResolution: json['rearCameraResolution'],
        frontCamera: json['frontCamera'],
        frontCameraResolution: json['frontCameraResolution'],
    );
  }
}