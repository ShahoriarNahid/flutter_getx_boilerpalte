// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'right_side_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RightSidebar _$RightSidebarFromJson(Map<String, dynamic> json) => RightSidebar(
      title: json['title'] as String?,
      svgPath: json['svgPath'] as String?,
      rightSidebarofSideBar: (json['rightSidebarofSideBar'] as List<dynamic>?)
          ?.map(
              (e) => RightSidebarofSideBar.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RightSidebarToJson(RightSidebar instance) =>
    <String, dynamic>{
      'title': instance.title,
      'svgPath': instance.svgPath,
      'rightSidebarofSideBar': instance.rightSidebarofSideBar,
    };

RightSidebarofSideBar _$RightSidebarofSideBarFromJson(
        Map<String, dynamic> json) =>
    RightSidebarofSideBar(
      subTitle: json['subTitle'] as String?,
      subSvgPath: json['subSvgPath'] as String?,
      subChildren: (json['subChildren'] as List<dynamic>?)
          ?.map((e) => RightSidebarChildrenofChildern.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RightSidebarofSideBarToJson(
        RightSidebarofSideBar instance) =>
    <String, dynamic>{
      'subTitle': instance.subTitle,
      'subSvgPath': instance.subSvgPath,
      'subChildren': instance.subChildren,
    };

RightSidebarChildrenofChildern _$RightSidebarChildrenofChildernFromJson(
        Map<String, dynamic> json) =>
    RightSidebarChildrenofChildern(
      subTitleofTitle: json['subTitleofTitle'] as String?,
    );

Map<String, dynamic> _$RightSidebarChildrenofChildernToJson(
        RightSidebarChildrenofChildern instance) =>
    <String, dynamic>{
      'subTitleofTitle': instance.subTitleofTitle,
    };
