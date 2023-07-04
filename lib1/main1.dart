import 'package:flutter/material.dart';
import '/helpers/user_info.dart';
import '/ui/poli_page.dart';
import 'ui/beranda.dart';
import '/ui/login.dart';

// void main() => runApp(MyApp());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  print(token);
  runApp(MaterialApp(
    title: "Klinik APP",
    debugShowCheckedModeBanner: false,
    home: token == null ? Login() : Beranda(),
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Klinik',
//       home: Beranda(),
//     );
//   }
// }
