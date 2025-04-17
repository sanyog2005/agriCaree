import 'package:agricare/model/burger_model.dart';

List<BurgerModel> getBurger(){

  List<BurgerModel> burger=[];
  BurgerModel burgerModel = new BurgerModel();

  burgerModel.name="harvester";
  burgerModel.image="assets/images/img_5.png";
  burgerModel.price="500";
  burger.add(burgerModel);
  burgerModel=new BurgerModel();

  burgerModel.name="tractor";
  burgerModel.image="assets/images/img_6.png";
  burgerModel.price="540";
  burger.add(burgerModel);
  burgerModel=new BurgerModel();

  burgerModel.name="harrow";
  burgerModel.image="assets/images/img_7.png";
  burgerModel.price="500";
  burger.add(burgerModel);
  burgerModel=new BurgerModel();

  burgerModel.name="tractor";
  burgerModel.image="assets/images/img_8.png";
  burgerModel.price="500";
  burger.add(burgerModel);
  burgerModel=new BurgerModel();

  burgerModel.name="tractor";
  burgerModel.image="assets/images/img_5.png";
  burgerModel.price="700";
  burger.add(burgerModel);
  burgerModel=new BurgerModel();

  burgerModel.name="trawler";
  burgerModel.image="assets/images/img_6.png";
  burgerModel.price="800";
  burger.add(burgerModel);
  burgerModel=new BurgerModel();

  burgerModel.name="harrow";
  burgerModel.image="assets/images/img_7.png";
  burgerModel.price="400";
  burger.add(burgerModel);
  burgerModel=new BurgerModel();


  return burger ;

}