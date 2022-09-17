import 'dart:async';

class SearchBloc{
var data =["a", "b", "c", "d", "e", "f", "g","j"];

StreamController<List<String>> searchController = StreamController<List<String>>();


search(String query){
   if (query.isEmpty){
     searchController.sink.add(data);
     return;
   }
   _filter(query).then((result){
     searchController.sink.add(result);
   });
 }

 Future<List<String>> _filter( String query) {
   var c = Completer<List<String>>();
   List<String> result = [];

   data.forEach((value) {
     if (value.contains(query)) {
       result.add(value);
     }
   });


   c.complete(result);
   return c.future;
 }



dispose (){
  searchController.close();
}
}


