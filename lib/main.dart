// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'data.dart';
import 'colorsfile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),

      home:
      Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){},icon: Icon(Icons.menu),),
          title: Text('Home'),
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ]
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 300,
                child: Swiper(
                  autoplay: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context ,int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  viewportFraction: 0.8,
                  scale: 0.9,
                  pagination: SwiperPagination(),
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(128, 128, 0, 128),
                  child:
                  Text('Welcome',
                   style: TextStyle(
                     fontSize: 20,
                   ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Image(
                            image: NetworkImage('assets/images/img1.jpg',
                            ),
                            width: 300,
                            height :150,
                            fit: BoxFit.fill,
                          )

                        ),
                        Container(
                          child: Text('Garden'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                            child: Image(
                              image: NetworkImage('assets/images/img1.jpg',
                              ),
                              width: 300,
                              height :150,
                              fit: BoxFit.fill,
                            )

                        ),
                        Container(
                          child: Text('Matoshree Park'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                            child: Image(
                              image: NetworkImage('assets/images/img1.jpg',
                              ),
                              width: 300,
                              height :150,
                              fit: BoxFit.fill,
                            )

                        ),
                        Container(
                          child: Text('Theme Park'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.purple,
          child: Row(
            children: [
              Expanded(
                child: IconButton(icon: Icon(Icons.home), onPressed: () {}),
              ),
              Expanded(
                child: IconButton( icon:Icon(Icons.edit),onPressed: (){} ),
              ),
              Expanded(
                child:IconButton(icon: Icon(Icons.settings), onPressed: () {}),
              ),
              Expanded(
                child: IconButton(icon: Icon(Icons.logout), onPressed: () {}),
              ),
            ],
          ),
        ),
        ),
      );
  }
}

