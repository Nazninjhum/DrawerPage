import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/ims.jpg'),
        ),
      ),
      drawer: Drawer(
        child: ListView(

          children: [
            UserAccountsDrawerHeader(accountName: Text('Naznin Akter'), accountEmail: Text('nazninnaznin725@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/jhumur.jpg'),
              ),
            ),
            ListTile(
              title: Text('All inboxes'),
              leading: Icon(Icons.all_inbox_rounded),
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.supervised_user_circle_rounded),
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.label_outline),
            ),
            ListTile(
              title: Text('All labels',style: TextStyle(fontSize: 13),),
            ),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star_border_sharp),
            ),
            ListTile(
              title: Text('Snoozed'),
              leading: Icon(CupertinoIcons.clock),
            ),
            ListTile(
              title: Text('Important'),
              leading: Icon(Icons.label_important_outline),
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send_rounded),
            ),
            ListTile(
              title: Text('Scheduled'),
              leading: Icon(Icons.schedule_send_rounded),
            ),
            ListTile(
              title: Text('Outbox'),
              leading: Icon(Icons.outbox_outlined),
            ),
            ListTile(
              title: Text('Drafts'),
              leading: Icon(Icons.file_copy_outlined),
            ),
            ListTile(
              title: Text('All mail'),
              leading: Icon(Icons.mail_outline_outlined),
            ),
            ListTile(
              title: Text('Spam'),
              leading: Icon(CupertinoIcons.exclamationmark_circle),
            ),
            ListTile(
              title: Text('Trash'),
              leading: Icon(Icons.delete_outline_outlined),
            ),
            ListTile(
              title: Text('Google apps',style: TextStyle(fontSize: 13),),
            ),
            ListTile(
              title: Text('Calendar'),
              leading: Icon(Icons.calendar_today_outlined),
            ),
            ListTile(
              title: Text('Contacts'),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Help & feedback'),
              leading: Icon(CupertinoIcons.question_circle),
            ),
          ],
        ),
      ),
    );
  }
}

