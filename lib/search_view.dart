import 'package:flutter/material.dart';
import 'package:flutter_app_demo_ui/search_bloc.dart';


class SearchView extends StatelessWidget {

  const SearchView({Key? key}) : super(key: key);
  final SearchBloc searchBloc = SearchBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SearchBox(
            bloc: searchBloc,
          ),
          Result(
            bloc: searchBloc,
          ),
        ],
      ),
    );
  }
}

class SearchBox extends StatefulWidget {
  final SearchBloc bloc;
  SearchBox({SearchBloc bloc}) : this.bloc = bloc;


  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final searchContronller = TextEditingController();
  @override
  void initState (){
    super.initState();
    searchContronller.addListener(() {
      var query = searchContronller.text;
    })
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: searchContronller,
        decoration: InputDecoration(
            suffixIcon:Icon(Icons.search),
            hintText: "search...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),


      ),
    );
  }
}


class Result extends StatefulWidget {
  final SearchBloc bloc;
  Result({SearchBloc bloc}) : this.bloc = bloc;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

