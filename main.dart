import 'package:flutter/material.dart';

void main() => runApp(CampXApp());

class CampXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student CampX App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CampX Dashboard'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SectionCard(
            title: 'Attendance',
            content: 'You have 92% attendance this semester.',
            icon: Icons.check_circle_outline,
            color: Colors.green[100]!,
          ),
          SectionCard(
            title: 'Fees',
            content: '₹40,000 of ₹60,000 paid.\nNext due: 10 Sept 2025',
            icon: Icons.account_balance_wallet_outlined,
            color: Colors.orange[100]!,
          ),
          SectionCard(
            title: 'CGPA',
            content: 'Your current CGPA is 8.45',
            icon: Icons.grade_outlined,
            color: Colors.blue[100]!,
          ),
          SectionCard(
            title: 'Campus Events',
            content: 'TechFest: 12 Sept 2025\nHackathon: 5 Oct 2025',
            icon: Icons.event_note_outlined,
            color: Colors.purple[100]!,
          ),
        ],
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final Color color;

  const SectionCard({
    required this.title,
    required this.content,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 40, color: Colors.indigo),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  content,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
