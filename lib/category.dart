import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final _categoryName;
  final _categoryColor;
  final _categoryIcon;

  const Category(@required this._categoryName, @required this._categoryIcon,
      @required this._categoryColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        color: _categoryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      //color: _categoryColor,
      child: InkWell(
        child: Row(
          children: <Widget>[
            Container(
              width: 70.0,
              padding: EdgeInsets.all(16.0),
              child: Icon(
                _categoryIcon,
                size: 60,
              ),
            ),
            Container(
              child: Text(
                _categoryName,
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
        ),
        onTap: () => print('I was tapped!'),
      ),
    );
  }
}
