import 'package:flutter/material.dart';
import 'package:njangi_hub/shared/shared.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool smallSize = size.width < 500;
    return Scaffold(
        appBar: AppBar(
          title: const Text('F-Attend', style: TextStyle(color: Colors.blue),),
          actions: [
            if(size.width < 750)
              IconButton(icon: const Icon(Icons.search, size: 25), onPressed: (){}),
            if(size.width >= 750)
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ), child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    isDense: true,
                  ),
                ),
              ),),
            if(!smallSize)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(onPressed: (){}, child: const Text('Home')),
                  TextButton(onPressed: (){}, child: const Text('About')),
                  TextButton(onPressed: (){}, child: const Text('Contact')),
                  TextButton(onPressed: (){}, child: const Text('FAQ')),
                ],
              ),
            IconButton(icon: const Icon(Icons.person_pin, size: 30), onPressed: (){})
          ],
        ),
        drawer: Container(
          width: size.width * 2/3,
          height: size.height,
          color: Theme.of(context).colorScheme.background,
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(
            maxWidth: 300,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(onPressed: (){}, child: const Text('Home')),
              TextButton(onPressed: (){}, child: const Text('About')),
              TextButton(onPressed: (){}, child: const Text('Contact')),
              TextButton(onPressed: (){}, child: const Text('FAQ')),
            ],
          ),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.multiply,
            color: Colors.black.withOpacity(0.5),
            image: const DecorationImage(
              image: AssetImage(Assets.imagesAshleyPic),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConstrainedBox(constraints: const BoxConstraints(
                  maxWidth: 500,
                ),
                  child: Text('Welcome to F-ATTEND Revolutionizing Atendance Management',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width > 500 ? 35 : 25,
                      )),
                ),
                FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                      shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
                  ),
                  child: const Text('Get Started',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                ),
                const SizedBox()
              ],
            ),
          ),
        ));
  }
}
