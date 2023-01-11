import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nymble_assignment/global/global_data.dart';
import 'package:nymble_assignment/utilities/theme_data.dart';

class PetDetailsScreen extends StatefulWidget {
  final String imagePath;
  final String gender;
  final String age;
  final String name;
  final String price;
  final bool petAdopted;
  final String heroTag;
  const PetDetailsScreen({
    required this.imagePath,
    required this.age,
    required this.gender,
    required this.name,
    required this.price,
    required this.petAdopted,
    required this.heroTag,
    super.key,
  });

  @override
  State<PetDetailsScreen> createState() => _PetDetailsScreenState();
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
  List petDetails = [];

  @override
  void initState() {
    super.initState();

    petDetails = [
      {
        'detail': 'Name',
        'value': widget.name,
      },
      {
        'detail': 'Sex',
        'value': widget.gender,
      },
      {
        'detail': 'Age',
        'value': widget.age,
      },
      {
        'detail': 'Price',
        'value': widget.price,
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: widget.heroTag,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        image: DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[900],
                            radius: 24,
                            child: const Icon(
                              Icons.chevron_left_rounded,
                              color: white,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      widget.price,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: petDetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        width: 110,
                        decoration: BoxDecoration(
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.dark
                              ? Colors.grey[700]
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(petDetails[index]['detail']),
                            Text(
                              petDetails[index]['value'],
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Details",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Senectus et netus et malesuada fames ac. Risus in hendrerit gravida rutrum quisque.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: ElevatedButton(
          onPressed: widget.petAdopted == true
              ? null
              : () {
                  for (var ele in allPets) {
                    if (ele['image'] == widget.imagePath) {
                      ele['isAdopted'] = true;
                    } else {
                      log('no changes');
                    }
                  }
                  adoptedPets.add(
                    {
                      'name': widget.name,
                      'price': widget.price,
                      'image': widget.imagePath,
                      'sex': widget.gender,
                      'age': widget.age,
                      'isAdopted': true,
                    },
                  );
                  Fluttertoast.showToast(
                      msg: "You've now adopted ${widget.name}");
                },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[900],
            disabledBackgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Adopt Me",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
