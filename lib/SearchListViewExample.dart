import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'ViewPdf.dart';

class SearchListViewExample extends StatefulWidget {
  @override
  _SearchListViewExampleState createState() => _SearchListViewExampleState();
}

class _SearchListViewExampleState extends State<SearchListViewExample> {

  List<String> dogsBreedList = List<String>();
  List<String> tempList = List<String>();
  bool isLoading = false;

  @override
  void initState() {
    // TO DO: implement initState
    super.initState();
    _fetchDogsBreed();
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _searchBar(),
              Expanded(
                flex: 1,
                child: _mainData(),
              )
            ],
          ),
        )
    );
          // Center(
      //   child: RaisedButton(
      //     child: Text('Open route'),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => ViewPdf()),
      //       );
      //     },
      //   ),

      // ),
  }

  Widget _searchBar(){
    return Container(
      padding: EdgeInsets.only(bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Поиск по базе данных...",
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (text){
          _filterDogList(text);
        },
      ),
    );
  }

  Widget _mainData(){
    return Center(
      child: isLoading?
      CircularProgressIndicator():
      ListView.builder(
          itemCount: dogsBreedList.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(dogsBreedList[index],),
              onTap: () => Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => Viewpdf()
                 ),
              ),
            );
          }),
    );
  }

  _filterDogList(String text) {
    if(text.isNotEmpty){
      setState(() {
        dogsBreedList = tempList;
      });
    }
    else{
      final List<String> filteredBreeds = List<String>();
      tempList.map((breed){
        if(breed.contains(text.toString().toUpperCase())){
          filteredBreeds.add(breed);
        }
      }).toList();
      setState(() {
        dogsBreedList.clear();
        dogsBreedList.addAll(filteredBreeds);
      });
    }
  }

  _fetchDogsBreed() async{
    setState(() {
      isLoading = true;
    });
    tempList = List<String>();
    final response = await http.get('https://dog.ceo/api/breeds/list/all');
    if(response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);
      jsonResponse['message'].forEach((breed,subbreed){
        tempList.add(breed.toString().toUpperCase());
      });
    }
    else{
      throw Exception("Failed to load Dogs Breeds.");
    }
    setState(() {
      dogsBreedList = tempList;
      isLoading = false;
    });
  }
}