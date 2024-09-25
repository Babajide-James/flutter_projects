class JsonPics {
  late int id;
  late String title;
  late String url;

  JsonPics(this.id, this.title, this.url);

  JsonPics.fromJson(Map<String, dynamic> passJson) {
    id = passJson['id'];
    title = passJson['title'];
    url = passJson['url'];
  }
}
