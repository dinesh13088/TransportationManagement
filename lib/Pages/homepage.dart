import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    radius: 20,
                    foregroundImage:
                        const AssetImage('Assest/Images/dinesh.jpg'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Good Morning !!\nDinesh Tamang',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Costumer Id : 001',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('\$ 1000'),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          
          showUnselectedLabels: true,
        
          currentIndex: 0,
          items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Theme.of(context).colorScheme.primary ,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.bus_alert,color: Theme.of(context).colorScheme.primary,), label: 'Travel'),
          BottomNavigationBarItem(icon: Icon(Icons.history,color: Theme.of(context).colorScheme.primary,), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Theme.of(context).colorScheme.primary,), label: 'Your Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color:Theme.of(context).colorScheme.primary ,), label: 'Setting')
       
        ]));
  }
}
