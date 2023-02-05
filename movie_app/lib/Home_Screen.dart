
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/login.dart';

import 'VideoApp.dart';
import 'data.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(actions: [
        IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        }, icon: Icon(Icons.logout_outlined))
      ], title: Text('Movie App'),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: const TextField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 220, 216, 216),
                filled: true,
                hintText: "Find you movie or flim you went",
                prefixIcon: Icon(
                  Icons.search,
                  size: 40,
                ),
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(80, 42, 157, 0.059)),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
          ),
      
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Text(
              "popular movias",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height:300,
            width:400,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getData.length,
              itemBuilder: (context, index){
                return Column(
                  
                  children: [
                    InkWell(
                      onTap: (){
                        if(index==0){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp()));
                      
                      }
                      else if(index==1){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp3()));
                      }
                      else if(index==2){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp1()));
                      }
                        else if(index==3){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp2()));
                      }
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        width:200 ,
                      height:180,                  
                      decoration: BoxDecoration(  
                        borderRadius: BorderRadius.circular(4),                                     
                        image: DecorationImage(
                          
                          fit: BoxFit.cover,
                          image: AssetImage(getData[index].image),),),
                      ),
                    ),
                    Text(getData[index].name,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text(getData[index].rating.toString(),style: TextStyle(fontSize:20),)
                          ],
                        ),
                        SizedBox(width: 25,),
                          Text("Hrs${getData[index].time.toString()}",
                    style: TextStyle(fontSize: 20),
                    ),
                      ],
                    ),
                  
                  ],
                );
            
              } ,
              ),
          ),
          //ofka
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            
            child: Text(
              "Tranding",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height:300,
            width:400,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getAnotherData.length,
              itemBuilder: (context, index){
                return Column(
                  
                  children: [
                    InkWell(
                      onTap: () {
                        if(index==0){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp3()));
                        }
                        if(index==1){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp2()));
                        }
                        if(index==3){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp1()));
                        }
                       else if(index==3){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp()));
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp3()));
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        width:200 ,
                      height:180,                  
                      decoration: BoxDecoration(  
                        borderRadius: BorderRadius.circular(4),                 
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(getAnotherData[index].image),),),
                      ),
                    ),
                    Text(getAnotherData[index].name,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text(getAnotherData[index].rating.toString(),style: TextStyle(fontSize:20),)
                          ],
                        ),
                        SizedBox(width: 25,),
                          Text("Hrs${getAnotherData[index].time.toString()}",
                    style: TextStyle(fontSize: 20),
                    ),
                      ],
                    ),
                  
                  ],
                );
            
              } ,
              ),
          ),
        ]
        ),
      ),
    );
  }
}
