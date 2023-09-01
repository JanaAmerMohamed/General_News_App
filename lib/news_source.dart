class News{
  String? id;
  String? url;
  String? title;
  String? text ;
  String? publisher;
  String? author;
  String? image;
  String? date;
  News({this.title, this.id, this.url, this.author, this.date, this.image, this.publisher , this.text});
  News.fromJson(Map<String,dynamic > json){
    id = json['id'];
    url = json['url'];
    title = json['title'];
    text = json['text'];
    publisher = json['publisher'];
    author = json['author'];
    image = json['image'];
    date = json['date'];




  }
}