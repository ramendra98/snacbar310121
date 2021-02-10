import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SnacBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnacBar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Get.snackbar('SnacBar Title', 'SnacBar message',
                  snackPosition: SnackPosition.BOTTOM,
                  /*  titleText: Text('Another Title'),
                    messageText: Text('Another Message',style: TextStyle(color: Colors.white),)*/
                    colorText: Colors.red,
                    backgroundColor: Colors.black87,
                    borderRadius: 30.0,
                    margin: EdgeInsets.all(15.0),
                    //maxWidth: 300.0,
                    animationDuration: Duration(milliseconds: 3000),
                  /*  backgroundGradient: LinearGradient(
                      colors: [Colors.red,Colors.green],
                    ),*/
                    borderColor: Colors.purple,
                    borderWidth: 4,
                    isDismissible: true,
                    dismissDirection: SnackDismissDirection.HORIZONTAL,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 8000),

                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    //leftBarIndicatorColor: Colors.white,
                    mainButton: FlatButton(
                      onPressed: (){},
                      child: Text("Retry"),
                      color: Colors.green,
                      textColor: Colors.white,

                    ),
                    overlayBlur: 5,
                    //overlayColor: Colors.pink,
                    showProgressIndicator: true,
progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,


                  );

                },
                child: Text('Show SnacBAR'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
