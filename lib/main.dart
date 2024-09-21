import 'package:flutter/material.dart';

void main (){




  runApp(myapp());




}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home(),

theme: ThemeData(




),
    );
  }
}
 class home extends StatelessWidget {
   const home({super.key});

   @override
   Widget build(BuildContext context) {
     return DefaultTabController(length: 5, child: Scaffold(

       appBar: AppBar(
         backgroundColor: Colors.lightGreenAccent,
         title: Text('MediaApp',style: TextStyle(
           color: Colors.white,fontWeight: FontWeight.w600
         ),),
         actions: [

          IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),

           IconButton(onPressed: (){}, icon:Icon(Icons.search)),
           IconButton(onPressed: (){}, icon:Icon(Icons.add)),



         ],
         bottom: TabBar(tabs:[


           Tab(icon: Icon(Icons.home),),
           Tab(icon: Icon(Icons.messenger),),

           Tab(icon: Icon(Icons.add_box_outlined),),

           Tab(icon: Icon(Icons.ondemand_video),),

           Tab(icon: Icon(Icons.person),),


         ]),

       ),


backgroundColor: Colors.blue,
body: GridView.builder(
    
    itemCount: 50,
    
    
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 2,mainAxisSpacing: 0.1), itemBuilder: (context,index){
  
  
  return SingleChildScrollView(
    child: Column(
      children: [
        Text('roll- ${index}'),
        Divider(height:2,)
      ],
    ),
  );
  
  
})
     ),

     );
   }
 }

