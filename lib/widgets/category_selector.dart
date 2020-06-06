import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      //                  <--- Consumer
      builder: (context, myModel, child) {
        return Container(
          height: 90.0,
          color: Theme.of(context).primaryColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    myModel.doSomething(index);
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 30.0,
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: index == selectedIndex ? Colors.white : Colors.white60,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class MyModel with ChangeNotifier {
  int someValue = 0;

  void doSomething(int index) {
    someValue = index;
    print(someValue);
    notifyListeners();
  }
}
