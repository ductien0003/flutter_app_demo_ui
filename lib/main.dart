

import 'package:flutter/material.dart';
import 'package:flutter_app_demo_ui/search_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Bloc"),
        ),
        body: SearchView(),
      ),
    );
  }
}


// class User{
//   String _name;
//   String get name => _name;
//   set name(newName) => _name=newName;
// }
//
// class BasicProvider extends StatelessWidget {
//   const BasicProvider({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           DemoConsumerWidget();
//         DemoWithoutCosumberWidget();
//         ],
//       ),
//     );
//   }
// }
//
// class DemoConsumerWidget extends StatelessWidget {
//   const DemoConsumerWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<User>(
//       builder: (context, user, child) => Text(user.name),
//     );
//   }
// }
//
// class DemoWithoutConsumerWidget extends StatelessWidget {
//   const DemoWithoutConsumerWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     User user = Provider.of<User>(context);
//     return Container(
//       child: Text(user.name),
//     );
//   }
// }


// class FutureWidget extends StatefulWidget {
//   const FutureWidget({Key? key}) : super(key: key);
//
//   @override
//   State<FutureWidget> createState() => _FutureWidgetState();
// }
//
// class _FutureWidgetState extends State<FutureWidget> {
//   StreamController<String> timmerStreamController = StreamController<String>();
//   @override
//   void iniState (){
//     super.initState();
//     initStream();
//   }
//
//   Stream<String> streamData(){
//     // return null;
//     return Stream<String>.periodic(Duration(seconds:1), (value){
//       return value.toString();
//     });
//   }
//
//   void initStream (){
//     Stream.periodic(Duration(seconds:1), (value){
//       return value;
//     }).take(10).listen((value) {
//       timmerStreamController.sink.add(value.toString());
//       if (value ==9){
//         timmerStreamController.close();
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//          StreamBuilder<String>(
//            stream:timmerStreamController.stream,
//            builder: (context,snapshot) {
//              if (snapshot.hasError){
//                return Text(snapshot.error.toString(),);}
//
//              switch(snapshot.connectionState){
//                case ConnectionState.none:
//                  return Text("Not connected to the stream or Null");
//                case ConnectionState.waiting:
//                  return Text("awaiting interaction");
//                case ConnectionState.active:
//                  return Text("${snapshot.data}");
//                case ConnectionState.done:
//                  return Text("Stream has finished");
//                default: return Text(" ");
//              }
//
//              return Text("Waiting for result..");
//
//
//            }
//          ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }





  // StreamController<int> controller = StreamController<int>();
  // controller.stream.listen((data) { print(data+1);});
  //
  // controller.sink.add(100);
  // controller.sink.add(200);
  //
  // print("=====");
  //
  //
  // Stream<int> stream = Stream.periodic(Duration(seconds:1), (value) {return value;});
  // stream.transform(StreamTransformer.fromHandlers(handleData: (input,sink){
  //   var newValue=input*1000;
  //   sink.add(newValue);
  //
  //
  // })).take(10).listen((data){print(data);});


  // var data = Future<int>.delayed(Duration(seconds: 4), () {
  //   return 100;
  // });
  // Stream<int> stream = Stream<int>.fromFuture(data).asBroadcastStream();
  // stream.listen((data) {
  //   print(data.toString());
  // },
  //     onDone: () {
  //       print("Done");
  //     }
  // );
  // stream.listen((data) {
  //   print(data.toString());
  // },
  //     onDone: () {
  //       print("Done");
  //     }
  // );

  // var data1 = Iterable.generate(10, (value) {
  //   return value;
  // });

  // Stream<int> stream1 = Stream<int>.fromIterable(data1);
  // stream1.listen((data) {
  //   print(data.toString());
  // },
  //     onDone: () {
  //       print("Done");
  //     });

  // Stream<int> stream2=Stream<int>.periodic(Duration(seconds:1),(value) {return value;});
  // var subscription =stream2.take(12).listen((data) {
  //   print(data.toString());
  // },
  //     onDone: () {
  //       print("Done");
  //     });
  // Future.delayed(Duration(seconds: 3),(){subscription.pause(
  //     Future.delayed(Duration(microseconds: 100),
  //             (){
  //           print("pause");
  //         })
  // );});
  // Future.delayed(Duration(seconds: 7),(){subscription.resume();});
  //
  
  // stream2.listen((data) {
  //   print(data.toString());
  // },
  //     onDone: () {
  //       print("Done");
  //     });





// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home: FutureWidget(),
//     );
//   }
// }
//
//
//
// class FutureWidget extends StatefulWidget {
//   const FutureWidget({Key? key}) : super(key: key);
//
//   @override
//   State<FutureWidget> createState() => _FutureWidgetState();
// }
//
// class _FutureWidgetState extends State<FutureWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//          FutureBuilder<int>(
//            future:delayNumber(),
//            builder: (context,snapshot) {
//              if (snapshot.hasError){
//                return Text(snapshot.error.toString(),);}
//              if (snapshot.hasData){
//                return Text(snapshot.data.toString(),);}
//
//              return Text("Waiting for result..");
//
//
//            }
//          ),
//             RaisedButton(onPressed: () async {
//               try{var number = await delayNumberWithError();
//               print(number);}
//                   catch(e){
//                 print(e.toString());
//                   }
//                   print("123");
//
//       },
//             child: Text("Demo Flutter"),)
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Future <void> asyncMethod(){
//   return Future.delayed(Duration(seconds: 4), ()=>print("asyncMethod"));
//
// }
// Future<int> delayNumber(){
//   return Future.delayed(Duration(seconds: 4), ()=>100);
// }
//
//
// Future<int> delayNumberWithError(){
//   return Future.delayed(Duration(seconds: 4), ()=> throw Exception("Co Loi Xay Ra"));
// }
//
// Future<int> getAge(){
//   final c =Completer<int>();
//   Future.delayed(Duration(seconds: 4), ()=>{
//     c.complete(100),
//   });
//   return c.future;
// }
// class DemoBuildContext extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Demo Build Context"),
//       ),
//       body: OngBa(),
//     );
//   }
// }
//
//
//
//
// class OngBa extends StatelessWidget {
//   const OngBa({Key? key}) : super(key: key);
//   Widget child;
//   OngBa({this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//
//     );
//   }
// }
//
//
// class ChaMe extends StatelessWidget {
//   const ChaMe({Key? key}) : super(key: key);
//   Widget child;
//   ChaMe({this.child});
//   String layTenConTrai(){
//     return "Hung";
//   }
//
//   String layTenConGai(){
//     return "Hoa";
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     )
//   }
// }
//
// class ConTrai extends StatelessWidget {
//   const ConTrai({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     ChaMe chaMe = context.dependOnInheritedWidgetOfExactType(ChaMe());
//     return: Container(
//     child: Text(chaMe.layTenConTrai()),
//     );
//   }
// }
//
//
// class ConGai extends StatelessWidget {
//   const ConGai({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     ChaMe chaMe =context.findAncestorWidgetOfExactType(ChaMe);
//     return Container(
//       child: Text(chaMe.layTenConGai()),
//     );
//   }
// }


// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Demo 1"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("HomePage1"),
//             MyStatefulWidget(),
//           ],
//         ),
//         ),
//       );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _count=0;
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       child:Column(
//         children: [
//           Text("current $_count", style: TextStyle(fontSize:40),),
//           RaisedButton(
//             onPressed:() {
//               setState (() {
//                 _count++;
//               });
//             },
//             child:Text("Click me", style: TextStyle(fontSize:20),),
//           )
//         ],
//       ),
//     );
//   }
// }


