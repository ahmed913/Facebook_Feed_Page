import 'package:facebook_feed_page/data/user.dart';
import 'package:facebook_feed_page/styles/palette.dart';
import 'package:facebook_feed_page/widgets/additiona_options.dart';
import 'package:facebook_feed_page/widgets/contact_list.dart';
import 'package:facebook_feed_page/widgets/create_post.dart';
import 'package:facebook_feed_page/widgets/posts.dart';
import 'package:facebook_feed_page/widgets/profileAvatar.dart';
import 'package:facebook_feed_page/widgets/responsive.dart';
import 'package:facebook_feed_page/widgets/rooms.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final TrackingScrollController _trackingScrollController =
  TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: Responsive(
            mobile:
            _HomeScreenMobile(scrollController: _trackingScrollController),
            desktop:
            _HomeScreenDesktop(scrollController: _trackingScrollController),
          ),
        ),
      )
    );
  }
}
class _HomeScreenMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const _HomeScreenMobile({
    required this.scrollController,
  }) ;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return NestedScrollView(
      controller: scrollController,
        headerSliverBuilder: (context , innerBoxIsScrolled) => [
          Responsive.isDesktop(context)
              ? PreferredSize(
            preferredSize: Size(screenSize.width, 100.0),
            child: SliverAppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              snap: true,
              title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "facebook",
                        style: TextStyle(
                            color: Palette.facebookBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            letterSpacing: -1
                        ),


                      ),

                    ),
                    Spacer(),
                    Container(
                      width: 600,
                      child: TabBar(
                        indicatorColor: Palette.facebookBlue,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Palette.facebookBlue,
                        onTap: (index) {},
                        tabs: [
                          Tab(
                              icon: Icon(
                                Icons.home,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.group,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.ondemand_video_sharp,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.notification_important_outlined,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.menu,
                              )),
                        ],
                      ),
                    ),
                    Spacer()
                  ]

              ),
              actions: [
                Row(
                  children: [
                    ProfileAvatar(imageUrl: currentUser.imageUrl),
                    SizedBox(width: 20,),

                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image(
                          image: AssetImage('assets/icons/messenger.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],


            ),
          )
              : SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            pinned: true,
            floating: true,
            snap: true,
            title: Text(
              "facebook",
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1
              ),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image(
                    image: AssetImage('assets/icons/messenger.png'),
                  ),
                ),
              ),
            ],
            bottom: !Responsive.isDesktop(context)? TabBar(
              indicatorColor: Palette.facebookBlue,
              unselectedLabelColor: Colors.grey,
              labelColor: Palette.facebookBlue,
              onTap: (index) {},
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.home,
                    )),
                Tab(
                    icon: Icon(
                      Icons.group,
                    )),
                Tab(
                    icon: Icon(
                      Icons.ondemand_video_sharp,
                    )),
                Tab(
                    icon: Icon(
                      Icons.notification_important_outlined,
                    )),
                Tab(
                    icon: Icon(
                      Icons.menu,
                    )),
              ],
            ) : null ,
          )
        ],
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CreatePostContainer(),
              Rooms(onlineUsers: onlineUsers,),

              // Stories

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 110,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.all(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [
                              Image(

                                image: NetworkImage(
                                  'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',),
                                fit: BoxFit.fill,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Divider(),
                                  SizedBox(height: 60,),
                                  CircleAvatar(
                                    backgroundColor: Palette.facebookBlue,

                                    child: Icon(Icons.add,color: Colors.white,),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 9),
                                    child: Text(
                                      'Create Story',
                                      style: TextStyle(
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 110,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.all(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [
                              Image(
                                height: 160,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1631199276041-4111f1ceee7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'
                                ),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Palette.facebookBlue,
                                  child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://images.unsplash.com/photo-1631199276041-4111f1ceee7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 110,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.all(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [
                              Image(
                                height: 160,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1631270275663-b9606b854141?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                ),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Palette.facebookBlue,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1631270275663-b9606b854141?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 110,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.all(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [
                              Image(
                                height: 160,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1606788075765-42f69501a452?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                ),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Palette.facebookBlue,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1606788075765-42f69501a452?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                    ), ),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 110,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.all(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [
                              Image(
                                height: 160,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1631129079259-2da505e45946?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'
                                ),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Palette.facebookBlue,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1631129079259-2da505e45946?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),

                  ],
                ),
              ),

              //posts

              Posts(),

              SizedBox(
                height: 8,
              ),
            ],
          ),
        )
    );
  }
}

class _HomeScreenDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;

  const _HomeScreenDesktop({
    required this.scrollController,
  }) ;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return NestedScrollView(
      controller: scrollController,
        headerSliverBuilder: (context , innerBoxIsScrolled) => [
          Responsive.isDesktop(context)
              ? PreferredSize(
            preferredSize: Size(screenSize.width, 100.0),
            child: SliverAppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              snap: true,
              title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "facebook",
                        style: TextStyle(
                            color: Palette.facebookBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            letterSpacing: -1
                        ),


                      ),

                    ),
                    Spacer(),
                    Container(
                      width: 600,
                      child: TabBar(
                        indicatorColor: Palette.facebookBlue,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Palette.facebookBlue,
                        onTap: (index) {},
                        tabs: [
                          Tab(
                              icon: Icon(
                                Icons.home,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.group,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.ondemand_video_sharp,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.notification_important_outlined,
                              )),
                          Tab(
                              icon: Icon(
                                Icons.menu,
                              )),
                        ],
                      ),
                    ),
                    Spacer()
                  ]

              ),
              actions: [
                Row(
                  children: [
                    ProfileAvatar(imageUrl: currentUser.imageUrl),
                    SizedBox(width: 20,),

                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image(
                          image: AssetImage('assets/icons/messenger.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],


            ),
          )
              : SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            pinned: true,
            floating: true,
            snap: true,
            title: Text(
              "facebook",
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1
              ),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image(
                    image: AssetImage('assets/icons/messenger.png'),
                  ),
                ),
              ),
            ],
            bottom: !Responsive.isDesktop(context)? TabBar(
              indicatorColor: Palette.facebookBlue,
              unselectedLabelColor: Colors.grey,
              labelColor: Palette.facebookBlue,
              onTap: (index) {},
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.home,
                    )),
                Tab(
                    icon: Icon(
                      Icons.group,
                    )),
                Tab(
                    icon: Icon(
                      Icons.ondemand_video_sharp,
                    )),
                Tab(
                    icon: Icon(
                      Icons.notification_important_outlined,
                    )),
                Tab(
                    icon: Icon(
                      Icons.menu,
                    )),
              ],
            ) : null ,
          )
        ],
        body:Row(
          children: [
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MoreOptionsList(currentUser: currentUser),
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: 600.0,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CreatePostContainer(),
                    Rooms(onlineUsers: onlineUsers,),

                    // Stories

                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 200,
                            width: 110,
                            child: Card(
                              elevation: 5,
                              margin: EdgeInsets.all(8),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: [
                                    Image(

                                      image: NetworkImage(
                                        'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',),
                                      fit: BoxFit.fill,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Divider(),
                                        SizedBox(height: 60,),
                                        CircleAvatar(
                                          backgroundColor: Palette.facebookBlue,

                                          child: Icon(Icons.add,color: Colors.white,),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 9),
                                          child: Text(
                                            'Create Story',
                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 110,
                            child: Card(
                              elevation: 5,
                              margin: EdgeInsets.all(8),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: [
                                    Image(
                                      height: 160,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1631199276041-4111f1ceee7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Palette.facebookBlue,
                                        child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1631199276041-4111f1ceee7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 110,
                            child: Card(
                              elevation: 5,
                              margin: EdgeInsets.all(8),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: [
                                    Image(
                                      height: 160,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1631270275663-b9606b854141?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Palette.facebookBlue,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1631270275663-b9606b854141?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 110,
                            child: Card(
                              elevation: 5,
                              margin: EdgeInsets.all(8),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: [
                                    Image(
                                      height: 160,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1606788075765-42f69501a452?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Palette.facebookBlue,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1606788075765-42f69501a452?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
                                          ), ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 110,
                            child: Card(
                              elevation: 5,
                              margin: EdgeInsets.all(8),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: [
                                    Image(
                                      height: 160,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1631129079259-2da505e45946?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Palette.facebookBlue,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1631129079259-2da505e45946?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80'
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),

                        ],
                      ),
                    ),

                    //posts

                    Posts(),

                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              )
            ),
            const Spacer(),
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ContactsList(users: onlineUsers),
                ),
              ),
            ),
          ],
        )

    );
  }
}
