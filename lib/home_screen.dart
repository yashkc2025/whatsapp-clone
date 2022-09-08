import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title : const Text('WhatsApp',style: TextStyle(fontSize: 25),),
              bottom : const TabBar(
                tabs: [
                  Tab(child: Icon(Icons.photo_camera)),
                  Tab(child: Text('CHATS',style: TextStyle(fontSize: 15),)),
                  Tab(child: Text('STATUS',style: TextStyle(fontSize: 15),)),
                  Tab(child: Text('CALLS',style: TextStyle(fontSize: 15),),),

                ]
              ),
              actions:  [
                const Icon(Icons.search),
                const SizedBox(width: 10,),
                PopupMenuButton(icon : const Icon(Icons.more_vert),
                    itemBuilder: (context,) =>[
                      const PopupMenuItem(
                        value : '1',
                        child: Text('New Group'),
                      ),
                      const PopupMenuItem(
                        value : '2',
                        child: Text('New Broadcast'),
                      ),
                      const PopupMenuItem(
                        value : '1',
                        child: Text('Linked Devices'),
                      ),
                      const PopupMenuItem(
                        value : '1',
                        child: Text('Starred Message'),
                      ),const PopupMenuItem(
                        value : '1',
                        child: Text('Settings'),
                      ),
                    ]
                ),
                // const Icon(Icons.more_vert),
                const SizedBox(width: 10,)


              ],
          ),
          body: TabBarView(
            children: [
              const Center(child: Text('Camera not detected, Make sure Whatsapp has camera permission', textAlign: TextAlign.center,)),
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context,index){
                    return const ListTile(
                      leading: CircleAvatar(radius: 24,backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511945863317-d60e146e9016?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTh8MTUyMzgwOXx8ZW58MHx8fHw%3D&w=1000&q=80'),),
                      title: Text('Babe'),
                      subtitle: Text('I wanna get banged, so hard, Plea..'),
                      trailing: Text('2:42 PM'),
                    );
                  },
              ),
              ListView.builder(
                itemCount: 2,
                itemBuilder: (context,index){
                  if(index == 0){
                    return Column(
                        children: const[
                           ListTile(
                            leading: CircleAvatar(radius: 24.0,child : CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/474x/66/be/ee/66beee62c937cd5483aa704ea0070c8d--video-game-characters-cartoon-characters.jpg'),radius: 24,),),
                            title: Text('My Status'),
                            subtitle: Text('2:04 AM'),

                          ),
                          const Text('Viewed Updates')
                        ],
                    );

                  }
                  else{
                    return const ListTile(
                      leading: CircleAvatar(backgroundColor : Colors.black,radius: 24.0,child : CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1616790876844-97c0c6057364?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXQlMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),radius: 20.0,),),
                      title: Text('Hele'),
                      subtitle: Text('Yesterday, 10:05'),
                    );
                  }
                },
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: const CircleAvatar(radius: 24,backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511945863317-d60e146e9016?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTh8MTUyMzgwOXx8ZW58MHx8fHw%3D&w=1000&q=80'),),
                    title: const Text('Babe'),
                    subtitle: const Text('2 September, 01:23'),
                    trailing: Icon(index%2==0? Icons.call : Icons.video_call,color: Colors.teal,),
                  );
                },
              )
            ],
          ),
          
        )

    );
  }
}
