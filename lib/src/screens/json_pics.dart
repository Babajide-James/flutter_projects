class JsonPics {
  int id;
  String title;
  String url;

  JsonPics(this.id, this.title, this.url);

  JsonPics.fromJson(Map<String, dynamic> passJson)
      : id = passJson['id'],
        title = passJson['title'],
        url = passJson['url'];
}
