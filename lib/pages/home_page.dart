import 'package:flutter/material.dart';
import 'package:online5_modul_lesson_5/models/products_modul.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["All", "Red", "Blue", "Green", "Black", "white"];
  int selected = 0;

  List<Product> product = [
    Product(
        id: 1,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car0.jpg",
        isLike: false,
        categoriya: "Red"),
    Product(
        id: 2,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car1.jpg",
        isLike: false,
        categoriya: "Blue"),
    Product(
        id: 3,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car2.jpg",
        isLike: false,
        categoriya: "Green"),
    Product(
        id: 4,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car3.png",
        isLike: false,
        categoriya: "White"),
    Product(
        id:5,
        name: "Pdp Car",
        type: "Eldectric",
        cost: "1000\$",
        image: "assets/images/im_car4.jpg",
        isLike: false,
        categoriya: "Black"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Cars",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag),
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return iteamOfProducts(index);
                    }),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(product[index].image))),
                      child: Container(
                        height: 220,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87.withOpacity(0.9),
                                  Colors.black87.withOpacity(0.5),
                                  Colors.black87.withOpacity(0.1),
                                ])),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SizedBox(height: 10,),
                            ListTile(
                                title: Text(
                                  "PDP Car",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                trailing:CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: GestureDetector(child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.grey,
                        ),onTap:(){ Icon(
                            Icons.favorite_outlined,
                            color: Colors.grey);
                        } ,
                        )
                      )
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                product[index].type,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 10),
                              child: Text(
                                product[index].cost,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }

  Container iteamOfProducts(int index) {
    return Container(
      padding: index != (categories.length - 1)
          ? EdgeInsets.only(left: 5)
          : EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        color: selected == index ? Colors.grey : Colors.white,
        elevation: 0,
        shape: StadiumBorder(),
        onPressed: () {
          setState(() {
            selected = index;
          });
        },
        child: Text(
          categories[index],
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
