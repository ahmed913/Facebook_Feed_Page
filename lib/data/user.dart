
import 'package:facebook_feed_page/models/post.dart';
import 'package:facebook_feed_page/models/user.dart';

final User currentUser = User(
  name: 'Ahmed Essa',
  imageUrl:
  'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
);

final List<User> onlineUsers = [
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),
  User(
    name: 'Ahmed Essa',
    imageUrl:
    'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/202119540_1953508174805178_2142273906307865793_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1jkXAfyT8YcAX9L5-ql&_nc_ht=scontent.fcai21-2.fna&oh=8f2ad62300e9781e66bedd6e1b182f0a&oe=61616E99',
  ),


];
final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'Check out these cool puppers',
    timeAgo: '58m',
    imageUrl: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
    likes: 1202,
    comments: 184,
    shares: 96,
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
    caption: 'A classic.',
    timeAgo: '1d',
    imageUrl:
    'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];


