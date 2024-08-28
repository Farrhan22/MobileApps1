import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SMKN 4 Mobile Apps',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Home Tab
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to SMKN 4',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Merupakan sekolah kejuruan berbasis Teknologi Informasi dan Komunikasi. Sekolah ini didirikan dan dirintis pada tahun 2008 kemudian dibuka pada tahun 2009 yang saat ini terakreditasi A. Terletak di Jalan Raya Tajur Kp. Buntar, Muarasari, Bogor, sekolah ini berdiri di atas lahan seluas 12.724 m2 dengan berbagai fasilitas pendukung di dalamnya. Terdapat 54 staff pengajar dan 22 orang staff tata usaha, dikepalai oleh Drs. Mulya Mulprihartono, M. Si, sekolah ini merupakan investasi pendidikan yang tepat untuk putra/putri anda.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Learn More'),
                ),
              ],
            ),
          ),
          // Schedule Tab
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                ListTile(
                  title: Text('PR Matematika'),
                  subtitle: Text('Due: August 30, 2024'),
                ),
                ListTile(
                  title: Text('Mobile Apps Project'),
                  subtitle: Text('Due: September 5, 2024'),
                ),
                ListTile(
                  title: Text('Liburan'),
                  subtitle: Text('September 10, 2024'),
                ),
                // Add more schedule items here
              ],
            ),
          ),
          // Information Tab
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                ListTile(
                  title: Text('Rencana Lomba 17 Agustus'),
                  subtitle: Text('August 20, 2024'),
                  isThreeLine: true,
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Handle tap
                  },
                ),
                ListTile(
                  title: Text('Pemilihan Ketua Osis'),
                  subtitle: Text('August 25, 2024'),
                  isThreeLine: true,
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Handle tap
                  },
                ),
              ],
            ),
          ),
          // Card Tab
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Student Name: Dika Hadi'),
                    subtitle: Text('Class: X PPLG 3'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Student Name: Muhammad Farhan Abdullah'),
                    subtitle: Text('Class: X PPLG 3'),
                  ),
                ),
                // Add more student cards here
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.schedule), text: 'Schedule'),
            Tab(icon: Icon(Icons.info), text: 'Information'),
            Tab(icon: Icon(Icons.credit_card), text: 'Card'),
          ],
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.blue,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
