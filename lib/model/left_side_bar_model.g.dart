// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'left_side_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeftSidebar _$LeftSidebarFromJson(Map<String, dynamic> json) => LeftSidebar(
      title: json['title'] as String?,
      iconPath: json['iconPath'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => LeftSidebarChildren.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LeftSidebarToJson(LeftSidebar instance) =>
    <String, dynamic>{
      'title': instance.title,
      'iconPath': instance.iconPath,
      'children': instance.children,
    };

LeftSidebarChildren _$LeftSidebarChildrenFromJson(Map<String, dynamic> json) =>
    LeftSidebarChildren(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$LeftSidebarChildrenToJson(
        LeftSidebarChildren instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
