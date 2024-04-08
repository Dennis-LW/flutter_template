import 'package:flutter/material.dart';

class DrawerTemplate extends StatelessWidget {
  const DrawerTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue[100],
          //   ),
          //   child: Text('header'.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold),),
          // ),
          const UserAccountsDrawerHeader(
            accountName: Text('User',style: TextStyle(fontWeight: FontWeight.bold),), 
            accountEmail: Text('user@gmail.com',style: TextStyle(fontWeight: FontWeight.normal),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://fastly.picsum.photos/id/22/4434/3729.jpg?hmac=fjZdkSMZJNFgsoDh8Qo5zdA_nSGUAWvKLyyqmEt2xs0'),//from picsum
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 104, 182, 246),
              image: DecorationImage(
                image: NetworkImage('https://fastly.picsum.photos/id/27/3264/1836.jpg?hmac=p3BVIgKKQpHhfGRRCbsi2MCAzw8mWBCayBsKxxtWO8g'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.white10, BlendMode.lighten)
              ),
            ),
          ),
          ListTile(
            title: const Text('Messages', textAlign: TextAlign.right,),
            trailing: const Icon(Icons.message, color: Colors.blue, size: 24,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Favorite', textAlign: TextAlign.right,),
            trailing: const Icon(Icons.favorite, color: Colors.blue, size: 24,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Setting', textAlign: TextAlign.right,),
            trailing: const Icon(Icons.settings, color: Colors.blue, size: 24,),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}