import 'package:json_annotation/json_annotation.dart';
part 'right_side_bar_model.g.dart';

@JsonSerializable()
class RightSidebar {
  String? title;
  String? svgPath;
  List<RightSidebarofSideBar>? rightSidebarofSideBar;

  RightSidebar({this.title, this.svgPath, this.rightSidebarofSideBar});

  factory RightSidebar.fromJson(Map<String, dynamic> json) =>
      _$RightSidebarFromJson(json);
  Map<String, dynamic> toJson() => _$RightSidebarToJson(this);
}

@JsonSerializable()
class RightSidebarofSideBar {
  String? subTitle;
  String? subSvgPath;
  List<RightSidebarChildrenofChildern>? subChildren;

  RightSidebarofSideBar({this.subTitle, this.subSvgPath, this.subChildren});

  factory RightSidebarofSideBar.fromJson(Map<String, dynamic> json) =>
      _$RightSidebarofSideBarFromJson(json);
  Map<String, dynamic> toJson() => _$RightSidebarofSideBarToJson(this);
}

@JsonSerializable()
class RightSidebarChildrenofChildern {
  String? subTitleofTitle;

  RightSidebarChildrenofChildern({
    this.subTitleofTitle,
  });

  factory RightSidebarChildrenofChildern.fromJson(Map<String, dynamic> json) =>
      _$RightSidebarChildrenofChildernFromJson(json);
  Map<String, dynamic> toJson() => _$RightSidebarChildrenofChildernToJson(this);
}
