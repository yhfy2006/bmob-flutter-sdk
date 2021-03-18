library bmobrole;

import 'package:json_annotation/json_annotation.dart';

import 'package:data_plugin/bmob/table/bmob_object.dart';

import 'package:data_plugin/bmob/type/bmob_relation.dart';

import 'package:data_plugin/bmob/type/bmob_pointer.dart';

part 'bmob_role.g.dart';

@JsonSerializable()
class BmobRole extends BmobObject {
  factory BmobRole.fromJson(Map<String, dynamic> json) =>
      _$BmobRoleFromJson(json);

  Map<String, dynamic> toJson() => _$BmobRoleToJson(this);

  String name;
  Map<String, dynamic> roles;
  Map<String, dynamic> users;

  BmobRole();

  @override
  Map getParams() {
    // TODO: implement getParams
    return toJson();
  }

  ///设置角色
  void setRoles(BmobRelation bmobRelation) {
    roles = bmobRelation.toJson();
  }

  ///设置用户
  void setUsers(BmobRelation bmobRelation) {
    users = bmobRelation.toJson();
  }
}
