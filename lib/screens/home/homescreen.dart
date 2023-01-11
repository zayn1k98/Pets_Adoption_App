import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nymble_assignment/global/global_data.dart';
import 'package:nymble_assignment/screens/details/pet_details.dart';
import 'package:nymble_assignment/utilities/theme_data.dart';
import 'package:nymble_assignment/widgets/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchKey = "";
  List searchResults = [];

  List pets = [];

  @override
  void initState() {
    super.initState();

    pets = allPets;
  }

  @override
  Widget build(BuildContext context) {
    if (searchResults.isNotEmpty) {
      pets = searchResults;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pet Adoption App',
          style:
              Theme.of(context).textTheme.headlineSmall!.copyWith(color: white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: grey,
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 22,
                    color: grey,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  hintText: 'Search for pets',
                  hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: grey,
                      ),
                ),
                style: Theme.of(context).textTheme.bodySmall,
                onChanged: (value) {
                  setState(() {
                    searchKey = value;
                    log(searchKey);
                  });

                  searchPets(searchKey);
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "${pets.length} pets found",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 230,
                ),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: pets.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PetDetailsScreen(
                              imagePath: pets[index]['image'],
                              age: pets[index]['age'],
                              gender: pets[index]['sex'],
                              name: pets[index]['name'],
                              price: pets[index]['price'],
                              petAdopted: pets[index]['isAdopted'],
                              heroTag: '$index',
                            );
                          })).then((value) {
                            setState(() {
                              pets = allPets;
                            });
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color:
                                  MediaQuery.of(context).platformBrightness ==
                                          Brightness.dark
                                      ? grey
                                      : Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Hero(
                                  tag: '$index',
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          pets[index]['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 6,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        pets[index]['name'],
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                      Text(
                                        pets[index]['price'],
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ],
                                  ),
                                ),
                                pets[index]['isAdopted'] == true
                                    ? Text(
                                        "Already adopted",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                              color: Colors.red,
                                            ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: const NavDrawer(),
    );
  }

  void searchPets(String key) {
    final results = allPets.where((element) {
      return element['name'].toLowerCase().contains(key.toLowerCase());
    }).toList();

    setState(() {
      searchResults = results;
    });

    log(searchResults.toString());
  }
}
