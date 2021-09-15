
import 'package:facebook_feed_page/models/post.dart';
import 'package:facebook_feed_page/models/user.dart';

final User currentUser = User(
  name: 'Ahmed Essa',
  imageUrl:
  'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
);



final List<User> onlineUsers = [

  User(
    name: 'Ed Morris',
    imageUrl:
    'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    name: 'Carolyn Duncan',
    imageUrl:
    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Paul Pinnock',
    imageUrl:
    'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: 'Elizabeth Wong',
      imageUrl:
      'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: 'James Lathrop',
    imageUrl:
    'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    name: 'Jessie Samson',
    imageUrl:
    'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'thanks God it\'s been a summer full of achievement , it\'s not the end its just the begining',
    timeAgo: '58m',
    imageUrl: 'https://udemy-certificate.s3.amazonaws.com/image/UC-d83f0b6d-fb1d-4725-b370-f8484e0b7682.jpg',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[1],
    caption:
    'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '3hr',
    imageUrl: null,
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[2],
    caption: 'This is a very good boi.',
    timeAgo: '8hr',
    imageUrl:
    'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Adventure 🏔',
    timeAgo: '15hr',
    imageUrl:
    'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[4],
    caption:
    'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '1d',
    imageUrl: null,
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[5],
    caption: 'A classic.',
    timeAgo: '1d',
    imageUrl:
    'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];

