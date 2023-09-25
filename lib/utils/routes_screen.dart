import 'package:flutter/widgets.dart';
import 'package:invoice_app/screen/invoicegenrate_screen.dart';
import 'package:invoice_app/screen/manage_screen.dart';
import 'package:invoice_app/screen/pdf_screen.dart';

Map<String, WidgetBuilder> ItemRoutes = {

  '/' : (Context) => ManageScreen(),
  'invoice' : (Context) => InvoiceScreen(),
  'pdf' : (Context) => PdfScreen(),

};