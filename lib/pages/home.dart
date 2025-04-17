

import 'package:agricare/model/catergory_model.dart';
import 'package:agricare/model/pizza_model.dart';
import 'package:agricare/service/category_data.dart';
import 'package:agricare/service/farm_data.dart';
import 'package:agricare/service/pizza_data.dart';
import 'package:agricare/service/widget_support.dart';
import 'package:flutter/material.dart';

import '../model/burger_model.dart';
import '../model/farm_model.dart';
import '../service/burger_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CatergoryModel> categories=[];
  List<PizzaModel> pizza=[];
  List<BurgerModel> burger=[];
  List<FarmModel> farm=[];
  String track = "0";


  @override
  void initState(){
    categories = getCatergories();
    pizza = getPizza();
    burger= getBurger();
    farm= getFarm();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("AgriCare: for a Greener Future.",style: TextStyle(color: Colors.green,fontSize:19,fontWeight: FontWeight.bold,),),

        ),
        drawer: Drawer(

          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(

                accountName: Text('Thala'),
                accountEmail: Text("mahendrasinghdhoni.com"),
                currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('assets/images/img.png'),),
                otherAccountsPictures: [
                  CircleAvatar(foregroundImage: AssetImage('assets/images/img.png'),)
                ],


              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.add),
                title: Text("SHop"),
                onTap: (){},

              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.add),
                title: Text("SHop"),
                onTap: (){},


              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.add),
                title: Text("SHop"),
                onTap: (){},

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('hello'
                    ''),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.add),
                title: Text("SHop"),
                onTap: (){},

              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.add),
                title: Text("SHop"),
                onTap: (){},

              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                trailing: Icon(Icons.add),
                title: Text("SHop"),
                onTap: (){},

              ),

            ],
          ),

        ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0,top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Logo2.png",height: 70,width: 140,fit: BoxFit.cover,),
                    Text("Innovating Agriculture",style: AppWidget.SimpleTextFieldStyle(),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ClipRect(

                      child: Image.asset("assets/images/img.png",height: 60,width: 60,fit: BoxFit.cover,),


                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(


                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(color: Color(0xffececf8)),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: "Search here......."),

                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.search_rounded,color: Colors.white,size: 30,),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              height: 55,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,

                  itemBuilder: (context, index){
                    return CategoryTile(categories[index].name!,categories[index].image!,index.toString(),);

              }

              ),
            ),
            track=="0" ? Expanded(

              child: GridView.builder(
                padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,mainAxisSpacing: 10,crossAxisSpacing: 10),itemCount: pizza.length, itemBuilder: (context,index){
                return FoodTile(pizza[index].name!, pizza[index].image!, pizza[index].price!);

              }),
            ):track=="1"?Expanded(

              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,mainAxisSpacing: 10,crossAxisSpacing: 10),itemCount: burger.length, itemBuilder: (context,index){
                return FoodTile(burger[index].name!, burger[index].image!, burger[index].price!);

              }),
            ):track=="2"?Expanded(

              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,mainAxisSpacing: 10,crossAxisSpacing: 10),itemCount: pizza.length, itemBuilder: (context,index){
                return FoodTile(farm[index].name!, farm[index].image!, farm[index].price!);

              }),
            ):track=="3"?Expanded(

              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,mainAxisSpacing: 10,crossAxisSpacing: 10),itemCount: burger.length, itemBuilder: (context,index){
                return FoodTile(farm[index].name!, burger[index].image!, burger[index].price!);

              }),
            ):Container(),


          ],
        ),

      )













    );
  }
  Widget FoodTile(String name, String image, String price){
    return Container(
      margin: EdgeInsets.only(right: 10  ),
      padding: EdgeInsets.only(left: 10,top:10),
      decoration: BoxDecoration(border: Border.all(color: Colors.black38),borderRadius:BorderRadius.circular(20) ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(image,height: 150,width: 150,fit: BoxFit.fill,)),
          Text(name,style: AppWidget.boldTextFieldStyle(),),
          Text(price+"/r",style: AppWidget.priceTextFieldStyle(),),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30 ,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(20))
                ),
                child: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget CategoryTile(String name, String image,String catergoryindex){
    return GestureDetector(
        onTap: (){
          track=catergoryindex.toString();
          setState(() {

          });
        },
        child: track==catergoryindex?
        Container(
          margin: EdgeInsets.only(right: 20,bottom: 10),
          child: Material(
            elevation: 3,
              borderRadius: BorderRadius.circular(30),

            child: Container(
              padding: EdgeInsets.only(left: 10,right: 10),

              decoration: BoxDecoration(color: Colors.redAccent,),
              child: Row(
                children: [
                  Image.asset(image,height: 50,width: 50,fit: BoxFit.cover,),
                  SizedBox(width: 10,),
                  Text(name,style: AppWidget.whiteTextFieldStyle(),)
                ],
              ),


            ),
          ),
        ):Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.only(right: 10,left: 10),

          decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Image.asset(image,height: 50,width: 50,fit: BoxFit.cover,),
              SizedBox(width: 10,),
              Text(name,style: AppWidget.SimpleTextFieldStyle(),)
            ],
          ),
        )
    );
  }
}

// class CategoryTile extends StatefulWidget {
//   String name,image,catergoryindex;
//   CategoryTile({required this.image,required this.name ,required this.catergoryindex});
//
//   @override
//   State<CategoryTile> createState() => _CategoryTileState();
// }
//
// class _CategoryTileState extends State<CategoryTile> {
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

