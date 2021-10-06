class Place {
  final String title;
  final String name;
  final String description;
  final String image;
  final String smallPoster;

  Place({
    required this.image,
    required this.smallPoster,
    required this.title,
    required this.name,
    required this.description,
  });
}

final List<Place> allPlaces = [
  Place(
    title: "日本国",
    name: "Japan",
    description: "Get into the future in",
    image: "assets/images/japan.jpg",
    smallPoster: "assets/images/kyoto-small.jpg",
  ),
  Place(
    title: "東京都",
    name: "Tokyo",
    description: "Get into the future in",
    image: "assets/images/tokyo.jpg",
    smallPoster: "assets/images/tokyo-small.jpg",
  ),
  Place(
    title: "京都市",
    name: "Kyoto",
    description: "Turn back the time in",
    image: "assets/images/kyoto.jpg",
    smallPoster: "assets/images/kyoto-small.jpg",
  ),
  Place(
    title: "大阪市",
    name: "Osaka",
    description: "Get impressed by",
    image: "assets/images/osaka.jpg",
    smallPoster: "assets/images/osaka-small.jpg",
  ),
  Place(
    title: "奈良市",
    name: "Nara",
    description: "Make friends with natur",
    image: "assets/images/nara.jpg",
    smallPoster: "assets/images/nara-small.jpg",
  ),
];
