import 'package:flutter/material.dart';
import 'package:invoice_app/utils/global_class.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtNo = TextEditingController();
  TextEditingController txtProduactName = TextEditingController();
  TextEditingController txtType = TextEditingController();
  TextEditingController txtQuantity = TextEditingController();
  TextEditingController txtEarn = TextEditingController();
  TextEditingController txtTotal = TextEditingController();
  double total = 0;

  @override
  Widget build(BuildContext context) {
    Map? m1 = ModalRoute.of(context)!.settings.arguments as Map? ;
    if(m1!=null)
      {
        txtName.text = m1!['Name'];
        txtNo.text= m1!['No'];
        txtProduactName.text = m1!['Producat Name'];
        total = m1!['Total'];
        txtQuantity.text = m1!['Quantity'];
        txtEarn.text = m1!['Bonus'];
        txtType.text = m1!['Type'];
      }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          centerTitle: true,
          title: Text(
            "Invoice Genrator",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'pdf');
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Customer's Name",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade600),
                          )),
                      TextField(
                        controller: txtName,
                        decoration: InputDecoration(
                          hintText: "Choose Customer Name",
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        controller: txtNo,
                        decoration: InputDecoration(
                          hintText: "Invoice No.",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Choose Product",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade600),
                          )),
                      TextField(
                        controller: txtProduactName,
                        decoration: InputDecoration(
                          hintText: "Choose Product",
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: txtType,
                        decoration: InputDecoration(
                          hintText: "Type",
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                            child: TextField(
                              controller: txtQuantity,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "Quantity",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          SizedBox(
                            width: 120,
                            child: TextField(
                              controller: txtEarn,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "Bonus",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    total = double.parse(txtEarn.text) *
                                        double.parse(txtQuantity.text);
                                  });
                                  Map m1 = {
                                    "Name": txtName.text,
                                    "No": txtNo.text,
                                    "Producat Name": txtProduactName.text,
                                    "Type": txtType.text,
                                    "Quantity": txtQuantity.text,
                                    "Bonus": txtEarn.text,
                                    "Total": total,
                                  };
                                  Global.g1.invoiceScreenList.add(m1);
                                  Navigator.pushNamed(context, '/')
                                      .then((e) {});
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.blue,
                                      fontSize: 25),
                                )),
                            Divider(
                              height: 10,
                              color: Colors.grey.shade600,
                            ),
                            Text(
                              "Total Payment : ${total}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
