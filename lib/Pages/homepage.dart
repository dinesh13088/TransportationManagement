import 'package:flutter/material.dart';
import 'package:trackingapp/Pages/home.dart';
import 'package:trackingapp/Pages/profile.dart';
import 'package:trackingapp/Pages/setting.dart';
import 'package:trackingapp/Pages/travel.dart';
import 'package:trackingapp/Pages/travel_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
   int currentPage =0;
   List<Widget>pages =const [Home(),Travel(),TravelHistory(),Profile(),Setting()];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
        body:pages[currentPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: currentPage,
          onTap: (value)
          {
            setState(() {
              currentPage =value;
            });

          },
          items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Theme.of(context).colorScheme.primary ,size: 25, ), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.bus_alert,color: Theme.of(context).colorScheme.primary,size: 25,), label: 'Travel'),
          BottomNavigationBarItem(icon: Icon(Icons.history,color: Theme.of(context).colorScheme.primary,size: 25,), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Theme.of(context).colorScheme.primary,size: 25,), label: 'Your Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color:Theme.of(context).colorScheme.primary ,size: 25,), label: 'Setting')
       
        ]));
  }
}
