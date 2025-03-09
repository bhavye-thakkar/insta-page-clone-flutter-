import 'package:flutter/material.dart';

class InstaCloning extends StatefulWidget {
  const InstaCloning({Key? key}) : super(key: key);

  @override
  State<InstaCloning> createState() => _InstaCloningState();
}

class _InstaCloningState extends State<InstaCloning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'wanda.s',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              // color: Colors.red,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 180,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/736x/50/81/e4/5081e4968150b00232b54a16940aed89.jpg'),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Wanda S.',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Photographer/NewYork',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profileDetails('150', 'Posts'),
                              SizedBox(
                                width: 10,
                              ),
                              profileDetails('100k', 'Followers'),
                              SizedBox(
                                width: 10,
                              ),
                              profileDetails('3', 'Following')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  Colors.blue)),
                                      onPressed: () {},
                                      child: Text('Follow')),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 120,
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cf-images.us-east-1.prod.boltdns.net/v1/static/5359769168001/5a3cf031-fa8d-430b-9a4c-d4e0f37a58d5/fc76baf9-8084-44f8-ba53-7394b05af59c/1280x720/match/image.jpg'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            color: Colors.orange),
                      ),
                      Text('Title')
                    ],
                  );
                },
              ),
            ),
            // Container(
            //   height: 100,
            //   color: Colors.green,
            // ),
            Expanded(
                child: Container(
              // color: Colors.yellow,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://reellifebygrace.com/wp-content/uploads/2016/09/wanda-maximoff.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(5),
                      height: 150,
                      width: 150,
                      // color: Colors.red,
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text1, text2) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 24),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}