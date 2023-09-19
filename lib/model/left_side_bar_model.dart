import 'package:json_annotation/json_annotation.dart';
part 'left_side_bar_model.g.dart';

@JsonSerializable()
class LeftSidebar {
  String? title;
  String? iconPath;
  List<LeftSidebarChildren>? children;

  LeftSidebar({this.title, this.iconPath, this.children});

  factory LeftSidebar.fromJson(Map<String, dynamic> json) =>
      _$LeftSidebarFromJson(json);
  Map<String, dynamic> toJson() => _$LeftSidebarToJson(this);
}

@JsonSerializable()
class LeftSidebarChildren {
  String? title;

  LeftSidebarChildren({
    this.title,
  });

  factory LeftSidebarChildren.fromJson(Map<String, dynamic> json) =>
      _$LeftSidebarChildrenFromJson(json);
  Map<String, dynamic> toJson() => _$LeftSidebarChildrenToJson(this);
}
