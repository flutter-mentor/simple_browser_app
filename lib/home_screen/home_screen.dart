import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  var urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Simple URL Launcher'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please enter the url you want to launch',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                )),
                child: TextFormField(
                  controller: urlController,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(
                      20,
                    ),
                    border: InputBorder.none,
                    prefix: Text('https://'),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              MaterialButton(
                color: Colors.black,
                minWidth: double.infinity,
                height: 50,
                onPressed: () {
                  launch('https://${urlController.text}');
                  urlController.text = '';
                },
                child: Text(
                  'Launch',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
