import 'package:flutter/material.dart';
import 'package:online5_modul_lesson_5/models/products_modul.dart';

class LikesPage extends StatefulWidget {
   LikesPage({Key? key,required this.search}) : super(key: key);
late List <Product>search=[];
  @override
  _LikesPageState createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your favorite Cars"),
      leading: IconButton(onPressed: (){
        for(int i=0;widget.search.length>i;i++){
          print(widget.search[i].id);
          print(widget.search[i].isLike);
          print(widget.search[i].categoriya);
        }
        Navigator.pop(context,widget.search);
      }, icon: Icon(Icons.arrow_back),),
      centerTitle: true,),
      body: Padding(padding: EdgeInsets.all(20),child: ListView.builder(
          itemCount:widget.search.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image:AssetImage(widget.search[index].image),
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
                          widget.search[index].name,
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.search[index].type,
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
                        widget.search[index].cost,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                    MaterialButton(onPressed: (){
                      setState(() {

                        widget.search.remove(widget.search[index]);

                      });

                    },
                        height: 30,
                        minWidth: 30,
                        child: CircleAvatar(
                          child:  Icon(Icons.favorite_outline,color:Colors.white,),
                          backgroundColor: Colors.red
                        )


                    )
                  ],
                ),
              ),
            );
          }),)

    );
  }
}
