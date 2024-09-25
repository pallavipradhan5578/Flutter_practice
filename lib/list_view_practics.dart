import 'package:flutter/material.dart';
class ListViewPractics extends StatefulWidget {
  const ListViewPractics({super.key});

  @override
  State<ListViewPractics> createState() => _ListViewPracticsState();
}

class _ListViewPracticsState extends State<ListViewPractics> {
  var arrNames=["Pallu","Riya","Sonam","Nikki","khushi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrNames[index] ,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index] ,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrNames[index] ,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrNames[index] ,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          )
          ],

          ),
        );
      },itemCount: arrNames.length,
        separatorBuilder: (context,index){
        return Divider(height: 100,thickness: 2);
        }


      )
    );
  }

}
