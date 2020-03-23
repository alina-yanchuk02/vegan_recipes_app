import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/recipes_carousel.dart';
import './add_recipe.dart';
import './search_recipe.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _recipeType;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.utensils,
    FontAwesomeIcons.iceCream,
    FontAwesomeIcons.breadSlice,
    FontAwesomeIcons.coffee,
  ];

  Widget _buildIcon(int index) {
    if (_selectedIndex == 0)
      _recipeType = "Main";
    else if (_selectedIndex == 1)
      _recipeType = "Dessert";
    else if (_selectedIndex == 2)
      _recipeType = "Snack";
    else if (_selectedIndex == 3) _recipeType = "Drink";

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: _selectedIndex == index
                  ? Color(0xFF64FFDA)
                  : Color(0xFFE7EBEE),
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            _icons[index],
            size: 30.0,
            color: Theme.of(context).primaryColor,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 120.0, bottom: 30),
                child: Text(' Almost Vegan ',
                    style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Liu Jian Mao Cao')),
              ),
              SizedBox(height: 7.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ),
              SizedBox(height: 24.0),
              RecipesCarousel(_recipeType),
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(currentIndex: _currentTab,
            onTap: (int value) {
              setState( ()  {
                _currentTab=value;
                if(value==0) Search();
                else if(value==2) AddRecipe();

              });
              if (value==0) {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Search()));
              
              }
              else if (value==1) {
                          Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => HomeScreen()));
              
              }
              else if(value==2) {
          Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => AddRecipe()));
              
              }
              },
            
            items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          )
        ]));
  }
}
