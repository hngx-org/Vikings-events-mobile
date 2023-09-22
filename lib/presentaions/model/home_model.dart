class Events {
  final String image;
  final String eventType;
  final String date;
  final String location;

  Events({
    required this.image,
    required this.eventType,
    required this.date,
    required this.location,
  });
}

List<Events> event = [
  Events(
      image: 'assets/images/football_event.png',
      eventType: 'Football Game',
      date: 'Monday 4 -6 PM',
      location: 'Stamford Bridge'),
  Events(
      image: 'assets/images/yatch.png',
      eventType: 'Yatch party',
      date: 'Saturday 4 - 6 PM',
      location: 'Ibiza'),
  Events(
      image: 'assets/images/roses.png',
      eventType: 'The Wedding',
      date: 'Saturday 4 - 6 PM',
      location: 'Ibiza'),
  Events(
      image: 'assets/images/tabletennis.png',
      eventType: 'Tennis Game',
      date: 'Saturday 4 - 6 PM',
      location: 'Ibiza'),
  Events(
      image: 'assets/images/computer.png',
      eventType: 'Programming Class',
      date: 'Saturday 4 - 6 PM',
      location: 'Ibiza'),
  Events(
      image: 'assets/images/family.png',
      eventType: 'Family Time',
      date: 'Saturday 4 - 6 PM',
      location: 'Ibiza'),
  Events(
      image: 'assets/images/hills.png',
      eventType: 'The Hills',
      date: 'Saturday 4 - 6 PM',
      location: 'Ibiza'),
  Events(
      image: 'assets/images/graduation.png',
      eventType: 'Graduation party',
      date: 'Saturday 4 - 6 PM',
      location: 'Ibiza'),
];
