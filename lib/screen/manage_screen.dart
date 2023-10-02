import 'package:flutter/material.dart';

import '../utils/global_class.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({super.key});

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            "Manage Producats",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'pdf');
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: Global.g1.invoiceScreenList
                .map((e) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${e['Quantity']}",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${e['Producat Name']}",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "${e['Total']} Tk",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'invoice',
                                            arguments: e);
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Pcs",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${e['Name']}",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${e['Type']}",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${e['Bonus']}",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          Global.g1.invoiceScreenList.remove(e);
                                        });
                                      },
                                      icon: Icon(Icons.delete)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        floatingActionButton: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'invoice').then((value) {
                setState(() {});
              });
            },
            icon: Icon(
              Icons.add,
              color: Colors.blue,
              size: 35,
            )),
      ),
    );
  }
}
