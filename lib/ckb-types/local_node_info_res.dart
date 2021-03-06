/*
 * @Author: BaojunCZ
 * @Date: 2019-01-11 11:53:24
 * @LastEditors: your name
 * @LastEditTime: 2019-03-01 12:35:54
 * @Description: file content
 */
import 'package:ckb_sdk/ckb-types/response.dart';
import 'package:ckb_sdk/ckb-types/item/node_info.dart';

class LocalNodeInfoRes extends RPCResponse<NodeInfo> {
  LocalNodeInfoRes(id, jsonrpc, result, error)
      : super(id, jsonrpc, result, error);

  factory LocalNodeInfoRes.fromJson(Map<String, dynamic> json) {
    return LocalNodeInfoRes(
        json['id'],
        json['jsonrpc'],
        json['result'] == null ? null : NodeInfo.fromJson(json['result']),
        json['error'] == null ? null : RPCError.fromJson(json['error']));
  }
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': this.id,
        'jsonrpc': this.jsonrpc,
        'result': this.result,
        'error': this.error
      };
}
