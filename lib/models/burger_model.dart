class Burger {
  String description;
  int id;
  String image;
  List<String> ingredients;
  List<String> method;
  String name;
  String refer;
  int serves;
  String time;
  String tips;

  Burger({
    this.description,
    this.id,
    this.image,
    this.ingredients,
    this.method,
    this.name,
    this.refer,
    this.serves,
    this.time,
    this.tips
  });

  Burger.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    id = json['id'];
    image = json['image'];
    ingredients = json['ingredients'].cast<String>();
    method = json['method'].cast<String>();
    name = json['name'];
    refer = json['refer'];
    serves = json['serves'];
    time = json['time'];
    tips = json['tips'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['id'] = this.id;
    data['image'] = this.image;
    data['ingredients'] = this.ingredients;
    data['method'] = this.method;
    data['name'] = this.name;
    data['refer'] = this.refer;
    data['serves'] = this.serves;
    data['time'] = this.time;
    data['tips'] = this.tips;
    return data;
  }
}
