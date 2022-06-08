class PeopleModel {
  String? name;
  String? imagePath;
  String? designation;
  bool? status;
  PeopleModel({this.designation, this.imagePath, this.name, this.status});
}

List<PeopleModel> peopleList = [
  PeopleModel(
    designation: 'Event Organizer',
    name: 'Katie Sullivan',
    imagePath: 'assets/images/circle-profile-pic.png',
    status: true,
  ),
  PeopleModel(
    designation: 'Consultant at MBB',
    name: 'Jamie Oliver',
    imagePath: 'assets/images/female_pic.png',
    status: false,
  ),
  PeopleModel(
    designation: 'Ex-MBB Analyst ',
    name: 'Clark Kent ',
    imagePath: 'assets/images/man_pic.png',
    status: true,
  )
];
