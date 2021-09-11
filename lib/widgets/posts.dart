import 'package:facebook_feed_page/styles/palette.dart';
import 'package:facebook_feed_page/widgets/PostButton.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Card(
          elevation: 5,
          color: Colors.white,
          margin: EdgeInsets.all(8),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'Ahmed Essa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Palette.facebookBlue,
                      size: 16.0,
                    )
                  ],
                ),
                subtitle: Text(
                  'Today at 1:30 pm',
                  style:
                      Theme.of(context).textTheme.caption!.copyWith(height: 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Thank God it\'s been a summer full of achievements, it\'s not the end, it\'s just the beginning',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        height: 1.3, fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Wrap(children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(end: 6),
                    height: 25,
                    child: MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Text(
                        '#SelfStudy',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Palette.facebookBlue),
                      ),
                      minWidth: 1.0,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Image(
                          image: NetworkImage(
                            'https://udemy-certificate.s3.amazonaws.com/image/UC-d83f0b6d-fb1d-4725-b370-f8484e0b7682.jpg',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image(
                          image: NetworkImage(
                              'https://udemy-certificate.s3.amazonaws.com/image/UC-d6adf7ca-fc30-422f-9afb-d025a96e7d6a.jpg'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Palette.facebookBlue,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.thumb_up,
                        size: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        '18k',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Text(
                      '129 Comments',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '4k Shares',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    PostButton(
                      icon: Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Like',
                      onTap: () => print('Like'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Comment',
                      onTap: () => print('Comment'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.share_outlined,
                        color: Colors.grey[600],
                        size: 25.0,
                      ),
                      label: 'Share',
                      onTap: () => print('Share'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          elevation: 5,
          color: Colors.white,
          margin: EdgeInsets.all(8),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/79515135_10111007623880301_5111576226921709568_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=gTSP8CiMPggAX82QxBT&_nc_ht=scontent.fcai21-2.fna&oh=49303ce718ff79f2877ad06fd12712f3&oe=615F8456'),
                ),
                title: Row(
                  children: [
                    Text(
                      'Mark Zuckerberg',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Palette.facebookBlue,
                      size: 16.0,
                    )
                  ],
                ),
                subtitle: Text(
                  'Yesterday at 11:21 Am',
                  style:
                      Theme.of(context).textTheme.caption!.copyWith(height: 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Priscilla and I co-founded the Breakthrough Prize to celebrate scientists at the forefront of discovery. This year, I\'m especially excited by the work laureates Katalin Karikó and Drew Weissman did to help create the Covid vaccine. Their research started decades ago to learn how to use mRNA\'s ability to teach cells to make proteins in order to cause an immune response. Their efforts paved the way to use mRNA in the Pfizer/BioNTech and Moderna vaccines, and opened the door to use mRNA in future vaccines and treatments for diseases -- including potentially HIV and cancer. Congrats to all the 2022 Breakthrough Prize winners!',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        height: 1.3, fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Wrap(children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(end: 6),
                    height: 25,
                    child: MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Text(
                        '#KeepGoing',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Palette.facebookBlue),
                      ),
                      minWidth: 1.0,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Palette.facebookBlue,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.thumb_up,
                        size: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        '18k',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Text(
                      '129 Comments',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '4k Shares',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    PostButton(
                      icon: Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Like',
                      onTap: () => print('Like'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Comment',
                      onTap: () => print('Comment'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.share_outlined,
                        color: Colors.grey[600],
                        size: 25.0,
                      ),
                      label: 'Share',
                      onTap: () => print('Share'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          elevation: 5,
          color: Colors.white,
          margin: EdgeInsets.all(8),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://airwallpaper.com/wp-content/uploads/images2/lionel-messi-hd-wallpapers.jpg'
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'Leo Messi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Palette.facebookBlue,
                      size: 16.0,
                    )
                  ],
                ),
                subtitle: Text(
                  'Yesterday at 11:21 Am',
                  style:
                  Theme.of(context).textTheme.caption!.copyWith(height: 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Looking forward to catching up on some reading this weekend. If you’re looking for a new book, here are a few you might want to try: https://gatesnot.es/3DNgW4N',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        height: 1.3, fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Wrap(children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(end: 6),
                    height: 25,
                    child: MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Text(
                        '#KeepGoing',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Palette.facebookBlue),
                      ),
                      minWidth: 1.0,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                    margin: EdgeInsets.all(8),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://i.ytimg.com/vi/Orh592OBoKY/maxresdefault.jpg'
                      ),
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Palette.facebookBlue,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.thumb_up,
                        size: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        '18k',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Text(
                      '129 Comments',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '4k Shares',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    PostButton(
                      icon: Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Like',
                      onTap: () => print('Like'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Comment',
                      onTap: () => print('Comment'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.share_outlined,
                        color: Colors.grey[600],
                        size: 25.0,
                      ),
                      label: 'Share',
                      onTap: () => print('Share'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          elevation: 5,
          color: Colors.white,
          margin: EdgeInsets.all(8),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/238934233_387368569420748_5386398352393347412_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ig7ldRdTmYQAX_-CDEi&_nc_ht=scontent.fcai21-2.fna&oh=6d6372615b96d9130e80ece003949982&oe=6160408C'),
                ),
                title: Row(
                  children: [
                    Text(
                      'Bill Gates',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Palette.facebookBlue,
                      size: 16.0,
                    )
                  ],
                ),
                subtitle: Text(
                  'Yesterday at 11:21 Am',
                  style:
                      Theme.of(context).textTheme.caption!.copyWith(height: 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Looking forward to catching up on some reading this weekend. If you’re looking for a new book, here are a few you might want to try: https://gatesnot.es/3DNgW4N',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        height: 1.3, fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Wrap(children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(end: 6),
                    height: 25,
                    child: MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Text(
                        '#KeepGoing',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Palette.facebookBlue),
                      ),
                      minWidth: 1.0,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                    margin: EdgeInsets.all(8),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/s1080x2048/241553786_399569148200690_5609312441748104397_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=y6RulDnalroAX-1qIob&tn=YlGEcB1Mf_tOktnC&_nc_ht=scontent.fcai21-2.fna&oh=4447954be01a783b89b1c01ccaaf3838&oe=615FF063'),
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Palette.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 4.0),
            Expanded(
              child: Text(
                '18k',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            Text(
              '129 Comments',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              '4k Shares',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            )
          ],
        ),
      ),
              Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            PostButton(
              icon: Icon(
                Icons.thumb_up_outlined,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Like',
              onTap: () => print('Like'),
            ),
            PostButton(
              icon: Icon(
                Icons.mode_comment_outlined,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Comment',
              onTap: () => print('Comment'),
            ),
            PostButton(
              icon: Icon(
                Icons.share_outlined,
                color: Colors.grey[600],
                size: 25.0,
              ),
              label: 'Share',
              onTap: () => print('Share'),
            )
          ],
        ),
      ),
            ],
          ),
        ),
        Card(
          elevation: 5,
          color: Colors.white,
          margin: EdgeInsets.all(8),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-1/p320x320/190108336_322648402555040_2100790391455013605_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=c6021c&_nc_ohc=7T_UiaLpVZ0AX9g3BI8&_nc_ht=scontent.fcai21-2.fna&oh=17c0c355d305d8caafffa95d0d03895f&oe=61621463'),
                ),
                title: Row(
                  children: [
                    Text(
                      'Cristiano Ronaldo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Palette.facebookBlue,
                      size: 16.0,
                    )
                  ],
                ),
                subtitle: Text(
                  'Yesterday at 11:21 Am',
                  style:
                      Theme.of(context).textTheme.caption!.copyWith(height: 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'This isn’t just another broken record, this is another record earned.Thank you Nike for honouring my achievement of 110 🇵🇹 goals by returning to Quinta do Falcão and restoring the court where I first set my goal to become the best.I think it is really important, whatever it is that you want to achieve in life, that you set goals, so you have something to work towards.Even if they are small goals, it gives you a great focus and sense of achievement when you get there.I hope this goal will help you reach your greatness.',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        height: 1.3, fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Wrap(children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(end: 6),
                    height: 25,
                    child: MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Text(
                        '#nikefootball',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Palette.facebookBlue),
                      ),
                      minWidth: 1.0,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Palette.facebookBlue,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.thumb_up,
                        size: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        '18k',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Text(
                      '129 Comments',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '4k Shares',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    PostButton(
                      icon: Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Like',
                      onTap: () => print('Like'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.grey[600],
                        size: 20.0,
                      ),
                      label: 'Comment',
                      onTap: () => print('Comment'),
                    ),
                    PostButton(
                      icon: Icon(
                        Icons.share_outlined,
                        color: Colors.grey[600],
                        size: 25.0,
                      ),
                      label: 'Share',
                      onTap: () => print('Share'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
