import 'package:flutter/material.dart';


class CreatePostContainer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      // margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      // elevation: isDesktop ? 1.0 : 0.0,
      // shape: isDesktop
      //     ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
      //     : null,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),
            const Divider(height: 10.0, thickness: 0.5),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () => print('Live'),
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text('Live'),
                  ),
                  const VerticalDivider(width: 8.0),
                  TextButton.icon(
                    onPressed: () => print('Photo'),
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text('Photo'),
                  ),
                  const VerticalDivider(width: 8.0),
                  TextButton.icon(
                    onPressed: () => print('Room'),
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text('Room'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}