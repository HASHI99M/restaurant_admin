import 'package:flutter/material.dart';
import 'package:restaurant_admin/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
        title: Text('Restaurant management'),
        backgroundColor: Colors.red[600],
      ),
      drawer: DrawerScreen(),
      body: Container(
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 , childAspectRatio: .9),
         children: [
           CardItem(title: 'Home',icon: Icons.home,color: Colors.green,),
           CardItem(title: 'Category',icon: Icons.category,color: Colors.orange,),
           CardItem(title: 'Orders',icon: Icons.speaker_notes,color: Colors.blue,),
           CardItem(title: 'Food',icon: Icons.fastfood_sharp,color: Colors.red,),
           CardItem(title: 'Orders in progress',icon: Icons.timer,color: Colors.deepOrangeAccent,),
           CardItem(title: 'Notifications',icon: Icons.notifications,color: Colors.lightGreen,),
         ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const CardItem({Key key, this.icon, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(

        child: InkWell(
          onTap: (){},
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 90 , color: color,),
                SizedBox(height: 10,),
                Text(title , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 , letterSpacing: 1.2 , color: Colors.grey),textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
