class TopicsModel {
  String? title;
  String? subtitle;
  String? name;
  String? posts;
  String? date;

  TopicsModel({this.name, this.subtitle, this.title, this.date, this.posts});
}

List<TopicsModel> topicsList = [
  TopicsModel(
      name: 'Clark Kent',
      title: 'Anyone want to grab drinks after?',
      subtitle: 'A few of us are heading...',
      date: 'Jan 25, 2022 at 3:03 PM ',
      posts: '7 posts'),
  TopicsModel(
      name: 'Katie Sullivan',
      title: 'Pre-event expectations?',
      subtitle: 'What are you most looking forward to?',
      date: 'Jan 18, 2022 at 7:10 PM ',
      posts: '45 posts'),
];
