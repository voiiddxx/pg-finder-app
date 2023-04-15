import 'dart:ffi';
import 'dart:io';
import 'package:chhatarnivaas/frontend/rooms.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';

class AddRoomScreen extends StatefulWidget {
  const AddRoomScreen({super.key});

  @override
  State<AddRoomScreen> createState() => _AddRoomScreenState();
}

class _AddRoomScreenState extends State<AddRoomScreen> {
  DatabaseReference databaseRef = FirebaseDatabase.instance.ref('rooms');
  @override
  final TextEditingController roomcontroller = TextEditingController();
  final TextEditingController roomcountcontroler = TextEditingController();
  final TextEditingController accontroller = TextEditingController();
  final TextEditingController availabletimingcontroller =
      TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController detailcontroller = TextEditingController();
  void dispose() {
    // TODO: implement dispose
    roomcontroller.dispose();
    roomcontroller.dispose();
    accontroller.dispose();
    availabletimingcontroller.dispose();
    addresscontroller.dispose();
    detailcontroller.dispose();
    super.dispose();
  }

  File? _image;
  String ImageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/pg.jpg",
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Text(
                  "ChhatarNivaas",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add The Rooms Image And All the following detail so that those who are looking to rent a pg can access you without any inconvenince",
                  style: TextStyle(
                      color: Color.fromARGB(255, 63, 63, 63),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      height: 1.5,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 20,
                ),
                ////////////////////////////////////////pg name controller//////////////////////////////////
                TextFormField(
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  controller: roomcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 217, 217, 217),
                    hintText: "Enter PG Name",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ////////////////////////////////////////pg rromcount controller//////////////////////////////////
                TextFormField(
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  controller: roomcountcontroler,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.view_compact_sharp,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 217, 217, 217),
                    hintText: "Enter Number Of Rooms",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ////////////////////////////////////////pg acverification controller//////////////////////////////////
                TextFormField(
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  controller: accontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.ac_unit_outlined,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 217, 217, 217),
                    hintText: "Ac or Non Ac",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ////////////////////////////////////////pg available timing controller//////////////////////////////////
                TextFormField(
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  controller: availabletimingcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.event_available_outlined,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 217, 217, 217),
                    hintText: "Price",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ////////////////////////////////////////pg location  controller//////////////////////////////////
                TextFormField(
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  controller: addresscontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 217, 217, 217),
                    hintText: "Location",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ////////////////////////////////////////pg other deatail controller//////////////////////////////////
                TextFormField(
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  controller: detailcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.details_outlined,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 217, 217, 217),
                    hintText: "Other Details(optinol)",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                //////////////////////////image upload section///////////////////////
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Select Image"),
                      ),
                      IconButton(
                          onPressed: () async {
                            ImagePicker imagePicker = ImagePicker();
                            XFile? file = await imagePicker.pickImage(
                                source: ImageSource.gallery);
                            print('${file?.path}');

                            //unique name using date and time method
                            String uniqueName = DateTime.now()
                                .microsecondsSinceEpoch
                                .toString();

                            //adding the image into the fotebase storege
                            Reference refrenceroot =
                                FirebaseStorage.instance.ref();
                            Reference dir =
                                refrenceroot.child('pgcollectionimages');
                            Reference imagerefrence = dir.child(uniqueName);
                            //upload image to firebase
                            await imagerefrence.putFile(File(file!.path));
                            ImageUrl = await imagerefrence.getDownloadURL();
                          },
                          icon: Icon(Icons.cloud_upload_outlined)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(255, 31, 250, 133)),
                      onPressed: () {
                        databaseRef
                            .child(DateTime.now()
                                .millisecondsSinceEpoch
                                .toString())
                            .set({
                          'Image': ImageUrl,
                          'Pgname': roomcontroller.text,
                          'roomcount': roomcountcontroler.text,
                          'acornot': accontroller.text,
                          'duration': availabletimingcontroller.text,
                          'location': addresscontroller.text,
                          'otherdetail': detailcontroller.text
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RoomScreen();
                        }));
                      },
                      child: Text(
                        "Add Room",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w300),
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
