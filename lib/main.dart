import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'King Profil',
      theme: ThemeData(
        //primaryColor: const Color.fromRGBO(57, 114, 80, 1),
        primaryColor: const Color.fromRGBO(2, 101, 210, 1),
        fontFamily: 'DM Sans',
      ),
      home: const KingProfil(),
    );
  }
}

class KingProfil extends StatelessWidget {
  const KingProfil({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "King-Martinien",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 65,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                getImageFromAsset(
                    width: width, height: 200, imageUrl: "cover.jpg"),
                Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: profilImage(radius: 80, image: "profil.jpg"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Column(
                children: [
                  const Text(
                    "King Martinien",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Frontend Developer | Web Integrator | Mobile Developer (Android, Flutter)",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                            height: 50,
                            decoration: myDecoration(
                                color: Theme.of(context).primaryColor),
                            child: const Center(
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50,
                          decoration: myDecoration(
                              color: Theme.of(context).primaryColor),
                          child: const Icon(
                            Icons.border_color,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About me",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 15),
                  aboutItem(
                      icon: Icons.home, text: "Bonaberi - Douala, Cameron"),
                  const SizedBox(height: 7),
                  aboutItem(
                      icon: Icons.mail,
                      text: "martinienfokoue@gmail.com",
                      color: Theme.of(context).primaryColor),
                  const SizedBox(height: 7),
                  aboutItem(
                      icon: Icons.phone,
                      text: "+237 657 263 559",
                      color: Theme.of(context).primaryColor),
                  const SizedBox(height: 7),
                  aboutItem(
                    icon: Icons.work,
                    text:
                        "Frontend Developer | Web Integrator | Mobile Developer (Android, Flutter)",
                  ),
                  const SizedBox(height: 7),
                  aboutItem(icon: Icons.favorite, text: "Single"),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Friends",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      friendProfile(image: "62.jpg", friendName: "62"),
                      const SizedBox(width: 12),
                      friendProfile(image: "dev.jpg", friendName: "Wilfried"),
                      const SizedBox(width: 12),
                      friendProfile(image: "sung.jpg", friendName: "O'neil"),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Text(
                      "My Posts",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ),
                  post(
                      imageProfile: "profil.jpg",
                      profilName: "King Martinien",
                      time: "Il y'a 3 jours",
                      postImage: "cover.jpg",
                      postText:
                          "lorem ipsum dolor sit amet concemtur de la humm ...",
                      likes: 10,
                      comments: 0,
                      cardWidth: width),
                  post(
                      imageProfile: "profil.jpg",
                      profilName: "King Martinien",
                      time: "Il y'a 4 jours",
                      postImage: "post.jpg",
                      postText: "Le k du King, yeah...",
                      likes: 0,
                      comments: 0,
                      cardWidth: width),
                  post(
                      imageProfile: "profil.jpg",
                      profilName: "King Martinien",
                      time: "Il y'a 5 jours",
                      postImage: "post3.png",
                      postText:
                          "Hello, I just Started learning Flutter and see this awesome profil card i have done!",
                      likes: 35,
                      comments: 9,
                      cardWidth: width),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

CircleAvatar profilImage(
    {required double radius, required String image, bool haveChild = true}) {
  return CircleAvatar(
    backgroundColor: Colors.white,
    radius: radius,
    child: CircleAvatar(
      backgroundImage: AssetImage("assets/images/$image"),
      radius: haveChild ? radius - 5 : radius,
    ),
  );
}

Image getImageFromAsset(
    {required double width, required double height, required String imageUrl}) {
  return Image.asset(
    "assets/images/$imageUrl",
    width: width,
    height: height,
    fit: BoxFit.cover,
  );
}

BoxDecoration myDecoration({Color? color}) {
  return BoxDecoration(
    color: color,
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  );
}

Row aboutItem({required IconData icon, required String text, Color? color}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(icon),
      const SizedBox(width: 8),
      Expanded(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: color),
        ),
      )
    ],
  );
}

Expanded friendProfile({required String image, required String friendName}) {
  return Expanded(
    child: Column(
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
              color: Colors.grey[400],
              image: DecorationImage(
                image: AssetImage("assets/images/$image"),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              )),
        ),
        const SizedBox(height: 10),
        Text(
          friendName,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Padding postHead(
    {required String imageProfile,
    required String profilName,
    required String time}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
    child: Row(
      children: [
        Row(
          children: [
            profilImage(radius: 25, image: imageProfile, haveChild: false),
            SizedBox(width: 10),
            Text(
              profilName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Spacer(),
        Text(
          time,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Row action(
    {required IconData icon, required String text, bool isColor = false}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(icon, color: isColor ? Colors.blueAccent : Colors.grey),
      SizedBox(width: 5),
      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: isColor ? Colors.blueAccent : Colors.grey,
        ),
      )
    ],
  );
}

Card post(
    {required String imageProfile,
    required String profilName,
    required String time,
    required String postImage,
    required String postText,
    required int likes,
    required int comments,
    required double cardWidth}) {
  return Card(
    color: Colors.grey[100],
    elevation: 15,
    child: SizedBox(
      width: cardWidth,
      child: Column(
        children: [
          postHead(
              imageProfile: imageProfile, profilName: profilName, time: time),
          getImageFromAsset(width: cardWidth, height: 300, imageUrl: postImage),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postText,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                Divider(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      action(
                          icon: Icons.thumb_up,
                          text: likes > 0 ? "$likes Likes" : "$likes Like",
                          isColor: likes > 0),
                      Spacer(),
                      action(
                          icon: Icons.messenger_outline,
                          text: "$comments Comments"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
