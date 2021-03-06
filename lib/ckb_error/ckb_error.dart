/*
 * @Author: BaojunCZ
 * @Date: 2019-01-11 13:33:47
 * @LastEditors: your name
 * @LastEditTime: 2019-03-01 12:29:44
 * @Description: api error
 */
import 'package:ckb_sdk/ckb-types/item/error.dart';

class CkbError {
  static var genericErrorCode = -1;
  static var invalidParameters =
      RPCError(genericErrorCode, "Invalid parameters");
  static var emptyResponse =
      RPCError(genericErrorCode, "Empty response");
  static var nullResult = RPCError(genericErrorCode, "Null result");
  static var requstError = "Response Status Code : ";

  static genericError(String message) {
    return RPCError(genericErrorCode, message);
  }

  static getError(code, message) {
    return RPCError(code, message);
  }
}
