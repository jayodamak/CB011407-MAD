import 'package:final01/components/edit_item.dart';
import 'package:flutter/material.dart';

class EditAccountPage extends StatefulWidget {
  const EditAccountPage({Key? key}) : super(key: key);

  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  String gender = ''; // Add this line to declare the gender variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade800,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Account',
          style: TextStyle(color: Colors.white),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(Icons.arrow_back),
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              ),
              iconSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              EditItem(
                title: 'Photo',
                widget: Column(
                  children: [
                    Image.asset(
                      "lib/images/user.png",
                      height: 100,
                      width: 100,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                      ),
                      child: const Text("Upload Image"),
                    ),
                  ],
                ),
              ),
        
              EditItem(
                title: "Name",
                widget: const TextField(),
              ),
        
              const SizedBox(height: 50),
        
              EditItem(
                title: "Gender",
                widget: Row(
                  children: [
        
                    const SizedBox(height: 50),
        
                    IconButton(
                      onPressed: () {
                        setState(() {
                          gender = "male";
                        });
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: gender == "male"
                            ? Colors.yellow.shade800
                            : Colors.yellow.shade100,
                        fixedSize: const Size(50, 50),
                      ),
                      icon: Icon(
                        Icons.male,
                        color: gender == "male"
                            ? Colors.white
                            : Colors.black,
                        size: 22,
                      ),
                    ),
        
                    const SizedBox(width: 20),
        
                    IconButton(
                      onPressed: () {
                        setState(() {
                          gender = "female";
                        });
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: gender == "female"
                            ? Colors.yellow.shade800
                            : Colors.yellow.shade100,
                        fixedSize: const Size(50, 50),
                      ),
                      icon: Icon(
                        Icons.female,
                        color: gender == "female"
                            ? Colors.white
                            : Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 40),
        
              EditItem(
                title: "Phone",
                widget: const TextField(),
              ),
        
              const SizedBox(height: 40),
        
              EditItem(
                title: "Email",
                widget: const TextField(),
              ),
        
              const SizedBox(height: 40),
        
              EditItem(
                title: "Address",
                widget: const TextField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
