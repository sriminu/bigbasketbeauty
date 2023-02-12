import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: Bigbasket(),
  ));
}

class Bigbasket extends StatelessWidget {
  List makeup1 = [
    [
      'https://images.unsplash.com/photo-1616683693504-3ea7e9ad6fec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxpcHN0aWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=2000&q=60',
      'MAKEUP'
    ],
    [
      'https://media.istockphoto.com/id/654575368/photo/beauty-spraying-perfume-on-herself.jpg?s=612x612&w=0&k=20&c=NKy-wQxjbat1-WKAE4vbZ_kbiSS1uETzrAWXwKOZgts=',
      'FREGRANCE & DEOS'
    ],
    [
      'https://media.istockphoto.com/id/1312113135/photo/young-woman-beauty-portrait.jpg?s=612x612&w=0&k=20&c=bdwj162cjbPcL-240gz2BwJ8S0NjthFSiCGApAbElJk=',
      'SKINCARE'
    ],
    [
      'https://media.istockphoto.com/id/1126839409/photo/brown-haired-woman-with-curly-hairstyle.jpg?s=612x612&w=0&k=20&c=gJelIQ2v5sw9CeR-LDItglj60OXmeoMdSD8GD7j5fJc=',
      'HAIR CARE'
    ],
    [
      'https://media.istockphoto.com/id/1144544333/photo/bet-you-wish-you-had-a-beard-like-his.jpg?s=612x612&w=0&k=20&c=SogbqkhGjVej-K5KEmYK6P5eSImxh7HOOA6NIL5-C3E=',
      'MENS GROOMING',
    ],
    [
      'https://images.pexels.com/photos/6635921/pexels-photo-6635921.jpeg?auto=compress&cs=tinysrgb&w=600',
      'BATH & HANDWASH'
    ],
    [
      'https://media.istockphoto.com/id/623848324/photo/start-the-day-with-a-little-sparkle.jpg?s=612x612&w=0&k=20&c=8kp7J1zCWkGvDj2jxtoNmmUYTLcqAjlLJEFx0W42Q14=',
      'ORAL CARE'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('the'),
              Text('beauty'),
              Text('store'),
            ],
          ),
          leading: Icon(Icons.arrow_back_ios_new),
          actions: [
            Icon(Icons.search),
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(makeup1[index][0]),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            bottom: 20,
                            left: 30,
                            child: Text(
                              makeup1[index][1],
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: 7),
          ),
        ]));
  }
}
