import 'package:flutter/material.dart';
import 'package:hotelbooking_uii/hroomsgrid.dart';
import 'package:hotelbooking_uii/hroomslist.dart';


void main() {
  runApp(MaterialApp(
    home: HotelBookingui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotel {
  String? imageUrl;
  String? title;
  String? description;
  int? price;
  double? rating;

  Hotel({this.description, this.imageUrl, this.price, this.rating, this.title});
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    title: "Kochi Marriott Hotel",
    description: "A five star hotel in Kochi",
    price: 1800,
    rating: 4.6,
  ),
  Hotel(
    imageUrl: "https://images.unsplash.com/photo-1618220924273-338d82d6b886?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
    title: "Radison Blu Kochi",
    description: "A five star hotel in Kochi",
    price: 1800,
    rating: 4.3,
  ),
  Hotel(
    imageUrl: "https://images.unsplash.com/photo-1505692952047-1a78307da8f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1896&q=80",
    title: "Grand Hyatt Kochi",
    description: "A five star hotel in Kochi",
    price: 1500,
    rating: 4.7,
  ),
  Hotel(
    imageUrl: "https://plus.unsplash.com/premium_photo-1661962495669-d72424626bdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80",
    title: "Crowne Plaza Kochi",
    description: 'A five star hotel in Kochi',
    price: 180,
    rating: 4.5,
  )
];

class HotelBookingui extends StatefulWidget{
  @override
  State<HotelBookingui> createState() => _HotelBookinguiState();
}

class _HotelBookinguiState extends State<HotelBookingui> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
     body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                "Hello @rjun",
                style: TextStyle(
                  fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 5.0),
                    Text(
                      "Find your favourite Hotel here",
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
             Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1520975916090-3105956dac38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                      fit: BoxFit.cover),
                      boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 12.0),
                                ],
                             ),
                           ),
                         ]
                       ),
                      ),
                     // SearchBar(),
                     Padding(padding: EdgeInsets.all(8),
                     child: Container(
                     height: 36.0,
                     width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFEFEDEE),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10.0)
                ],
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.search,
                      size: 25.0,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for hotels..",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ), 
                    ),
                  ),
                 ],
                ),
              ), 
            ),
            const SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Popular Hotel",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PopularScroll(),   
              const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Hotel Packages",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "view all",
                  style: TextStyle(fontSize: 14.0, color: Colors.blue),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          HotelPackages(),
        ],          
      ),
    );
  }
}