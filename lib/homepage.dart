import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            //color: Color.fromARGB(255, 142, 179, 197),
            gradient: LinearGradient(
              colors: [
                Color(0XFFD4E7FE),
                Color(0XFFD9F9FB),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.8, 0.2],
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: const TextSpan(
                      text: "Hoşgeldiniz",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: "26 Eylül 2022",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.2),
                          blurRadius: 12,
                          spreadRadius: 8,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://bublogta.com/wp-content/uploads/2021/05/aaron-burden-y02jEX_B0O0-unsplash-8903ea0d-1536x1153.jpg",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: const [
                      Text(
                        "Merhaba Fatma",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Color(0XFF343E87),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Bu Haftaki Progmamın",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 244, 244, 248),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Başarılar dilerim...",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 244, 244, 248),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 185,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 25,
            ),
            height: MediaQuery.of(context).size.height - 230,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                buildTitleRow("BUGÜNÜN DERSLERİ", 2),
                const SizedBox(height: 20),
                buildClassItem(),
                buildClassItem(),
                buildTitleRow("YAPILACAKLAR", 3),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildTaskItem(5, "Flutter firebase öğren", Colors.red),
                      buildTaskItem(4, "ui design yap,", Colors.blue),
                      buildTaskItem(
                        1,
                        "Bu projede SingleChildScrollView,rich text,extract method ve bir çok özellik öğrendim",
                        Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container buildTaskItem(int numDays, String courseTitle, Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.pink.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$numDays günlük süren var",
            style: TextStyle(
              fontSize: 10,
              color: color,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                "$numDays 2022",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 100,
            child: Text(
              courseTitle,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildTitleRow(String title, int number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              text: title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "($number)",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ]),
        ),
        const Text(
          "Tüm Dersler",
          style: TextStyle(
            fontSize: 12,
            color: Color(0XFF343E87),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Container buildClassItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(15, 221, 18, 35),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "11:00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "AM",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: const Text(
                  " İlkokul Matematik Özel Ders",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.mark_chat_read,
                    color: Colors.grey,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 160,
                    child: const Text(
                      " Arı Yayınları+Bilfen ",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://www.picng.com/upload/book/png_book_29162.png",
                    ),
                    radius: 10,
                  ),
                  SizedBox(width: 5),
                  Text(
                    " Arı Yayınları+Bilfen ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
