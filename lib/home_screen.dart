import 'package:flutter/material.dart';
import 'package:virtual_swaahth/main.dart';
import 'package:virtual_swaahth/screens/appointment_screen.dart';

class HomeScreen extends StatelessWidget{


  List symptoms = [
    "Asthama",
    "Cancer",
    "Viral Fever",
    "Cough",
    "Cold",
    "Brain Tumer",
    "High BP",
  ];

  List imgs = [
    "doctor1.jpg",
        "doctor2.jpg",
        "doctor3.jpg",
        "doctor4.jpg",
  ];



  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(

      padding: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Welcome in Virtual Swaahth",
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
              ),
              CircleAvatar( // creting circle avatar in navbar
                radius: 25,
                backgroundImage: AssetImage("images/images5.jpg"),
              ),
            ],
          ),
        ),

        SizedBox(height:30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple.shade700,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade300,
                      blurRadius: 6,
                      spreadRadius: 4,
                    ),
                  ],
                ),


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),



                      child: Icon(
                        Icons.add,
                        color: Colors.purple.shade700,
                        size: 35,

                      ),
                    ),
                    SizedBox(height: 30),

                    Text("Hospital Visit",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(height: 30),
                    Text("Make an appointment",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),

                  ],
                ),

              ),
            ),
            // Start Second Button from here
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 4,
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white, // color of homeicon
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.home_filled,
                        color: Colors.purple.shade700,
                        size: 35,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text("Home Visit",
                      style: TextStyle(
                        fontSize: 18,
                        // color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text("Call the doctor home",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),

                  ],
                ),

              ),
            ),
          ],
        ),

        //*********************Size boxes space here below

        SizedBox(height: 25),
        Padding(padding: EdgeInsets.only(left: 15),
          child: Text(
            "What are your symptoms?",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(height: 70, // size box of mul box
        child: ListView.builder(
          shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: symptoms.length,
        itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15), // main size of box
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Color(0xFFF4F6FA),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12, // colour of boxes shadow
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                  child: Text(
                      symptoms[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),)),
            );
        },
        ),
        ),

        // Size box of popular doctors
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.only(left: 15),
        child: Text(
          "Popular Doctors",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        ),




        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    ),
          itemCount: 4,  // total item on homescreen
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
              return InkWell(

                // Appointment screen Page connect here below
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppointmentScreen(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 4,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent, // Set the background color to transparent
                        radius: 25, // Set the radius to half of the desired size
                        child: ClipOval(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              "images/${imgs[index]}",
                              fit: BoxFit.cover, // Ensures the image fully covers the circular area
                            ),
                          ),
                        ),
                      ),

                      Text("Dr. Utkarsh Dubey",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),



                      Text("Therapist",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                      ),

                      // Four star icon below.........
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,
                            color: Colors.amber,
                          ),

                          // Rating code below

                          Text("4.9",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              );
          },
        ),
      ],
    ),
    );
  }
}