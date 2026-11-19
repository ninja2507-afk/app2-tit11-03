
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Profile',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ส่วนที่ 1 : AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'my_social_profile',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),

      // ส่วนที่ 2-6 : Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ส่วนที่ 2 : ส่วนหัวโปรไฟล์
              Row(
                children: [

                  CircleAvatar(
                    radius: 46,
                    backgroundImage: const NetworkImage(
                      'https://thaidigitalprint.com/wp-content/uploads/2025/06/anime-17.jpg.avif',
                    ),
                  ),

                  Expanded(
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [

                        Column(
                          children: const [
                            Text(
                              '03',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('โพสต์'),
                          ],
                        ),

                        Column(
                          children: const [
                            Text(
                              '125',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('ผู้ติดตาม'),
                          ],
                        ),

                        Column(
                          children: const [
                            Text(
                              '250',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('กำลังติดตาม'),
                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 20),

              // ส่วนที่ 3 : ชื่อและแนะนำตัว
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  Text(
                    'กฤติน สว่างพฤกษ์ (นินจา)',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    'นักศึกษาแผนกเทคโนโลยีสารสนเทศ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  Text(
                    'สับสนในการเขียน Flutter 💙',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 18),

              // ส่วนที่ 4 : ปุ่มติดตามและข้อความ
              Row(
                children: [

                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: const Text('ข้อความ'),
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 20),

              // ส่วนที่ 5 : แถบไอคอน
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [

                  Icon(
                    Icons.grid_on,
                    size: 30,
                    color: Colors.black,
                  ),

                  Icon(
                    Icons.person_pin,
                    size: 30,
                    color: Colors.grey,
                  ),

                ],
              ),

              const SizedBox(height: 12),

              // ส่วนที่ 6 : แกลเลอรีภาพ 3 รูป
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1,

                children: [

                  Image.network(
                    'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.6435-9/90812948_2008843895925695_8927332551165476864_n.jpg?stp=dst-jpg_tt6&cstp=mx720x899&ctp=s720x899&_nc_cat=105&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=833d8c&_nc_ohc=d1eML9ayIocQ7kNvwH8c163&_nc_oc=AdrEsdoeE_UQbnV8x8ZK3leSpN1gCjOBrZqVvrqo_C6otVKWx9iq_K55fUM83_L_E9E&_nc_zt=23&_nc_ht=scontent.fbkk5-6.fna&_nc_gid=4eLnFrxYTAoazCWa-uK5pA&_nc_ss=7b289&oh=00_AQRoXj8EQ_v5IWz9-v4wi5fdPuO5B56QYhGDt2YuUan5LA&oe=6B25F9A0',
                    fit: BoxFit.cover,
                  ),

                  Image.network(
                    'https://img.thaicdn.net/u/sutasinee/3/59288351.jpg',
                    fit: BoxFit.cover,
                  ),

                  Image.network(
                    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400',
                    fit: BoxFit.cover,
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
