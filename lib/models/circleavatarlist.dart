// ignore_for_file: public_member_api_docs, sort_constructors_first

class ContactsList {
  String name;
  String imgname;
  ContactsList({
    required this.name,
    required this.imgname,
  });
}

List<ContactsList> contacts = [
  ContactsList(name: 'Kashan', imgname: 'shani.jpg'),
  ContactsList(name: 'Shani', imgname: 'shani.jpg'),
  ContactsList(name: 'Adil', imgname: 'im4.jpg'),
  ContactsList(name: 'Ali', imgname: 'im5.jpg'),
  ContactsList(name: 'Hamza', imgname: 'im4.jpg'),
];
