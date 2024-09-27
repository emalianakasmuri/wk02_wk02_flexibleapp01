import 'package:flutter/material.dart';

/**
 * Purpose of app:
 *    A demonstration of Flexible widget
 */

/**
 * Main entry point of the app
 */
void main() {

  // Instantiate and run the app
  runApp(FlexibleApp01());
}

/**
 * This class represents the app
 */
class FlexibleApp01 extends StatelessWidget {

  /**
   * This method construct the UI
   */
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text('Flexible App 01')
        ),

        body: Center(
          child: Row (
            children: <Widget>[
              Container(
                width: 50,
                height: 50,

                color: Colors.deepOrangeAccent,

                child: Center(
                  child: Text("A fixed child"),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,

                child: Container(
                  height: 50,
                  color: Colors.orange,
                  child: Center(
                    child: Text("First flexible child")
                  )
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.loose,

                child: Container(
                    height: 50,
                    color: Colors.orangeAccent,
                    child: Center(
                        child: Text("Second flexible child")
                    )
                ),
              )
            ],
          ),
        ),

      ),

      // Turn off debug flag
      debugShowCheckedModeBanner: false,
    );

  }

}