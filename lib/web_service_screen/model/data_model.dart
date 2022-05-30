class DataModel {
  String? name;
  String? disc;

  DataModel(this.name, this.disc);

  DataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    disc = json['disc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['dis'] = disc;
    return data;
  }
}
