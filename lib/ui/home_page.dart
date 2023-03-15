import 'package:flutter/material.dart';
import 'package:furniture_app/ui/widgets/furniture_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FurnitureAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Text(
              "Find The",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Best ",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Furniture',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "search about anything",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/qrcode_scan.png",
                      color: Colors.white,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Categories(),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key, this.onCategorySelected});

  final VoidCallback? onCategorySelected;

  @override
  State<StatefulWidget> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  final categories = [
    "All",
    "Soft",
    "Chairs",
    "Lamp",
    "Kitchen",
    "Table",
    "Bed"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, itemIndex) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = itemIndex;
            });
            if (widget.onCategorySelected != null) {
              widget.onCategorySelected!();
            }
          },
          child: Text(
            categories[itemIndex],
            style: TextStyle(
              color: itemIndex == selectedIndex
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
          ),
        );
      },
    );
  }
}
