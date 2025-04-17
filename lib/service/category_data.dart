import 'package:agricare/model/catergory_model.dart';

List<CatergoryModel> getCatergories(){
List<CatergoryModel> catergory=[];
CatergoryModel catergoryModel = new CatergoryModel();

catergoryModel.name="Crop";
catergoryModel.image="assets/images/plant.png";
catergory.add(catergoryModel);
catergoryModel=new CatergoryModel();

catergoryModel.name="Equipments";
catergoryModel.image="assets/images/tractor.png";
catergory.add(catergoryModel);
catergoryModel=new CatergoryModel();

catergoryModel.name="Farm Help";
catergoryModel.image="assets/images/farmer.png";
catergory.add(catergoryModel);
catergoryModel=new CatergoryModel();

catergoryModel.name="Consult";
catergoryModel.image="assets/images/doctor.png";
catergory.add(catergoryModel);
catergoryModel=new CatergoryModel();

return catergory;

}