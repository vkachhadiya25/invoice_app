import 'package:flutter/material.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.print,color: Colors.white,)),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                    child: Text("Apollo Pharmaceutical Lab. LTD.",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
                Divider(height: 10,thickness: 3),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Central Seles Depo : plot # 11 , Block # ka, main Road-1,Section # 6, Mirpur, Dhaka 1216, Bangladesh",
                    style: TextStyle(fontSize: 17),
                  ),

                ),
                Text("Tel : +88 02 9030747,9901794196",style: TextStyle(fontSize: 20),),
                Text("Mobile :- 01711-697995",style: TextStyle(fontSize: 20),),
                Divider(height: 10,thickness: 3),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Customer Name : ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("Dr. Shah Alambglr Mila",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Customer Address : ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("Mota Varachha",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Area Name : ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("surat",style: TextStyle(fontSize: 15),),
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
