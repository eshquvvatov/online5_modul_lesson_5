import 'package:flutter/material.dart';
class PullRefrish extends StatefulWidget {
  const PullRefrish({Key? key}) : super(key: key);

  @override
  _PullRefrishState createState() => _PullRefrishState();
}

class _PullRefrishState extends State<PullRefrish> {
  String ok="njdkafnakjfn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pull Refrish"),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        child:
        ListView.builder(
          itemCount: 10,
            itemBuilder:(context,index){
            return Container(
              child: Text(ok,style: TextStyle(color: Colors.white,fontSize: 30),),
              height: 80,
              alignment: Alignment.center,
              margin:EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(bottom: 10,top: 10),
              decoration: BoxDecoration(color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            );
            }),
        onRefresh: (){
          return Future.delayed(Duration(seconds: 3),(){
            setState(() {
          ok="jfaknfkjnfkna";
            });
           ;});
        },
      ),
    );
  }
}
