import 'package:agricare/model/pizza_model.dart';

List<PizzaModel> getPizza(){

List<PizzaModel> pizza=[];
PizzaModel pizzaModel = new PizzaModel();

pizzaModel.name="wheat";
pizzaModel.image="assets/images/img_1.png";
pizzaModel.price="50";
pizza.add(pizzaModel);
pizzaModel=new PizzaModel();

pizzaModel.name="corn";
pizzaModel.image="assets/images/img_4.png";
pizzaModel.price="50";
pizza.add(pizzaModel);
pizzaModel=new PizzaModel();

pizzaModel.name="lettuce";
pizzaModel.image="assets/images/img_3.png";
pizzaModel.price="50";
pizza.add(pizzaModel);
pizzaModel=new PizzaModel();

pizzaModel.name="strawberry";
pizzaModel.image="assets/images/img_2.png";
pizzaModel.price="50";
pizza.add(pizzaModel);
pizzaModel=new PizzaModel();

pizzaModel.name="strawberry";
pizzaModel.image="assets/images/img_3.png";
pizzaModel.price="50";
pizza.add(pizzaModel);
pizzaModel=new PizzaModel();

pizzaModel.name="strawberry";
pizzaModel.image="assets/images/img_4.png";
pizzaModel.price="50";
pizza.add(pizzaModel);
pizzaModel=new PizzaModel();

pizzaModel.name="strawberry";
pizzaModel.image="assets/images/img_2.png";
pizzaModel.price="50";
pizza.add(pizzaModel);
pizzaModel=new PizzaModel();


return pizza;

}