class LaunchDataObject {
  String? name;
  String? dateUtc;
  String? id;

  LaunchDataObject({this.name, this.dateUtc, this.id});

  LaunchDataObject.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dateUtc = json['date_utc'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['date_utc'] = this.dateUtc;
    data['id'] = this.id;
    return data;
  }
}
