import 'package:agricare/model/farm_model.dart';

import '../model/farm_model.dart';

List<FarmModel> getFarm(){

  List<FarmModel> farm=[];
  FarmModel farmModel = new FarmModel();

  farmModel.name="Mera Devi";
  farmModel.image="assets/images/img_11.png";
  farmModel.price="50per Shift";
  farm.add(farmModel);
  farmModel=new FarmModel();

  farmModel.name="Ram Pal";
  farmModel.image="assets/images/img_9.png";
  farmModel.price="500 per Shift";
  farm.add(farmModel);
  farmModel=new FarmModel();

  farmModel.name="lettuce";
  farmModel.image="assets/images/img_11.png";
  farmModel.price="500 per Shift";
  farm.add(farmModel);
  farmModel=new FarmModel();

  farmModel.name="Mera Devi";
  farmModel.image="assets/images/img_12.png";
  farmModel.price="500 per Shift";
  farm.add(farmModel);
  farmModel=new FarmModel();

  farmModel.name="Mera Devi";
  farmModel.image="assets/images/img_10.png";
  farmModel.price="500 per Shift";
  farm.add(farmModel);
  farmModel=new FarmModel();

  farmModel.name="Mera Devi";
  farmModel.image="assets/images/img_9.png";
  farmModel.price="500 per Shift";
  farm.add(farmModel);
  farmModel=new FarmModel();

  farmModel.name="Mera Devi";
  farmModel.image="assets/images/img_11.png";
  farmModel.price="500 per Shift";
  farm.add(farmModel);
  farmModel=new FarmModel();


  return farm;

}