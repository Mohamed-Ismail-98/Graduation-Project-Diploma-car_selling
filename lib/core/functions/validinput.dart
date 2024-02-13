import 'package:get/get.dart';

validInput(String val , int min , int max , String type){
  if(type == "username"){
    if(!GetUtils.isUsername(val)){
      return "Not Valid UserName";
    }
  }

  if(type == "email"){
    if(!GetUtils.isEmail(val)){
      return "Not Valid Email";
    }
  }

  if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "Not Valid Phone";
    }
  }

  if(val.isEmpty){
    return "Value Can't be Empty";
  }

  if(val.length < min){
    return "Value Can't be Less Than $min";
  }
  if(val.length > min){
    return "Value Can't be Larger Than $max";
  }

}