
import 'package:flutter/material.dart';
import 'package:online5_modul_lesson_5/models/products_modul.dart';

import 'likes_page.dart';

class HomeWorkPage extends StatefulWidget {

   HomeWorkPage({Key? key, }) : super(key: key);
  @override
  _HomeWorkPageState createState() => _HomeWorkPageState();
}

class _HomeWorkPageState extends State<HomeWorkPage> {
  List<String> categories = ["All", "Red", "Blue", "Green", "Black", "white"];
  int selected = 0;
  int likesIteamCount=0;
  bool istap=false;
  List<Product> product = [Product(
      id: 1,
      name: "Pdp Car",
      type: "Eldectric",
      cost: "1000\$",
      image: "assets/images/im_car4.jpg",
      isLike: false,
      categoriya: "Green"),
    Product(
        id:2 ,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car0.jpg",
        isLike: false,
        categoriya: "Red"),Product(
        id: 3,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car0.jpg",
        isLike: false,
        categoriya: "Red"),Product(
        id: 4,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car0.jpg",
        isLike: false,
        categoriya: "Red"),Product(
        id: 5,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car0.jpg",
        isLike: false,
        categoriya: "Red"),Product(
        id: 6,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car0.jpg",
        isLike: false,
        categoriya: "Red"),
    Product(
        id:7 ,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car1.jpg",
        isLike: false,
        categoriya: "Blue"),
    Product(
        id:8,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car4.jpg",
        isLike: false,
        categoriya: "Green"),
    Product(
        id: 9 ,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car3.png",
        isLike: false,
        categoriya: "White"),
    Product(
        id: 10,
        name: "Pdp CarCAr",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car3.png",
        isLike: false,
        categoriya: "Black"),
    Product(
        id:11 ,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car0.jpg",
        isLike: false,
        categoriya: "Red"),
    Product(
        id:12 ,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car1.jpg",
        isLike: false,
        categoriya: "Blue"),
    Product(
        id:13 ,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car4.jpg",
        isLike: false,
        categoriya: "Green"),
    Product(
        id: 14,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car3.png",
        isLike: false,
        categoriya: "White"),
    Product(
        id: 15,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car3.png",
        isLike: false,
        categoriya: "Black"),
  ];
  List<Product>search=[];
  List<Product>likes=[];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    addElemnt();
  }
void addElemnt(){
  search.addAll(product);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Cars",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions:  [
          Icon(
            Icons.notifications_none,
            color: Colors.red,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
      GestureDetector(child:Padding(padding: EdgeInsets.only(top: 5),child:  Column(children: [
        CircleAvatar(backgroundColor: likesIteamCount ==0?Colors.white:Colors.red,
            radius: 8,child:likesIteamCount !=0? Text("${likesIteamCount}",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),):Text("")),
        Icon(
          Icons.shopping_cart,
          color: Colors.red,
        ),
      ],
      ),),
      onTap:(){
        _likes();
      }
      ),

          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      onPressed: () {
                        setState(() {
                          search.clear();
                          selected = index;
                          for(int i=0;i<product.length;i++){
                            if(selected !=0 &&categories[index]==product[i].categoriya){
                              search.add(product[i]);
                            }
                            else if(selected==0){
                              search.add(product[i]);
                            }
                          }
                        });
                      },
                      shape: StadiumBorder(),
                      elevation: 0,
                      hoverColor: Colors.white,
                      height: 40,
                      minWidth: 80,
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: selected == index ? Colors.white : Colors.grey,
                        ),
                      ),
                      color: selected == index ? Colors.red : Colors.white,
                    );
                  }),
            ),
            ListView.builder(
                itemCount:search.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image:AssetImage(search[index].image),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87.withOpacity(0.9),
                              Colors.black87.withOpacity(0.5),
                              Colors.black87.withOpacity(0.1),
                            ]),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                product[index].name,
                                style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                product[index].type,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent.shade100
                                        .withOpacity(0.8)),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              search[index].cost,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                          MaterialButton(onPressed: (){
                            setState(() {
                              _likesCount(index);
                            });
                          },
                            height: 30,
                            minWidth: 30,
                            child: CircleAvatar(
                              child:  Icon(Icons.favorite_outline,color:Colors.white,),
                                backgroundColor:
                                search[index].isLike? Colors.red:Colors.blue,
                            )


                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
  void _likes() async {
  setState(() async {
    var newList=await
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LikesPage(search:likes,)));
   print(newList.length);
   setState(() {
     likesIteamCount =newList.length;
   });

    for(int i=0;i<search.length;i++){
      if(!newList.contains(search[i])){
        search[i].isLike=false;
      }
      else{
        print("=======================");
        (print(product[i].id));

      }
    }
  });
  }
  void _likesCount(index){
    if(search[index].isLike!=true) {likes.add(search[index]);likesIteamCount++;}
       else {likes.remove(search[index]);likesIteamCount--;}
    search[index].isLike = !search[index].isLike;
  }
}
