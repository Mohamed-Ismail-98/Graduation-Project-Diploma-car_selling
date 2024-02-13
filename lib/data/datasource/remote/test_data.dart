import 'package:car_selling/core/classes/crud.dart';
import 'package:car_selling/linkapi.dart';

class TestData{

  Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.test, {});
    response.fold((l) => l, (r) => r);
  }
}