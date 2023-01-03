import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class PopularScroll extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
            height: 230,
            width: double.infinity,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(hotels[index].imageUrl!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          hotels[index].title!,
                          style: const TextStyle(fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          hotels[index].description!,
                          style: const TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${hotels[index].price} / Night",
                              style: const TextStyle(color: Colors.purple),
                            ),
                            Row(
                              children: [
                                Text(
                                  "${hotels[index].rating}",
                                  style: const TextStyle(color: Colors.black),
                                ),
                                const Icon(
                                  Icons.star_half,
                                  color: Colors.green,
                                  size: 16.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                 ),
              );
            },
          ),
       );
     }
  }