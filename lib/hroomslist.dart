import 'package:flutter/material.dart';

import 'main.dart';

class HotelPackages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Column(
            children: [
              _hotelPackage(0),
              const SizedBox(height: 20),
              _hotelPackage(1),
              const SizedBox(height: 20),
              _hotelPackage(2),
              const SizedBox(height: 20),
              _hotelPackage(3),
            ],
          );
  }
}

_hotelPackage(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 130,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(hotels[index].imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotels[index].title!,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  hotels[index].description!,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "\$${hotels[index].price} / Night",
                  style: const TextStyle(fontSize: 14, color: Colors.purple),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.directions_car,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.hot_tub,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.local_bar,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wifi,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 8,
            child: Center(
              
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red.shade900,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15.0,
                      offset: Offset(2.0, 4.4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Book now",
                    style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: .1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      );
  }

