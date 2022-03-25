import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class WardPage extends StatefulWidget {
  @override
  _WardPageState createState() => _WardPageState();
}

class _WardPageState extends State<WardPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController wardnameController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController parishController = TextEditingController();

  Widget _buildWardname() {
    return TextFormField(
      controller: wardnameController,
      decoration: InputDecoration(
        labelText: 'Wardname',
      ),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your wardname';
        }
      },
    );
  }

  Widget _buildPlace() {
    return TextFormField(
      controller: placeController,
      decoration: InputDecoration(
        labelText: 'Place',
      ),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your Place';
        }
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: addressController,
      decoration: InputDecoration(
        labelText: 'Address',
      ),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your Address';
        }
      },
    );
  }

  Widget _buildParish() {
    return TextFormField(
      controller: parishController,
      decoration: InputDecoration(
        labelText: 'Parish Id',
      ),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your Parish';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ward Registration',
          style: GoogleFonts.hindVadodara(
              textStyle: TextStyle(fontSize: 25, color: Colors.white)),
        ),
        backgroundColor: Color(0xA6003477),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              _buildParish(),
              SizedBox(
                height: 20,
              ),

              _buildWardname(),
              SizedBox(
                height: 20,
              ),

              _buildPlace(),
              SizedBox(
                height: 20,
              ),

              _buildAddress(),
              SizedBox(
                height: 36,
              ),

              //_user== null ? Container() :
              //Text("The user is created successfully."),

              // ignore: deprecated_member_use
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final String parish = parishController.text;
                    final String wardName = wardnameController.text;
                    final String place = placeController.text;
                    final String address = addressController.text;
                  }
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(32, 15, 32, 15),
                  decoration: BoxDecoration(
                      color: Color(0xBF003477),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.hindVadodara(
                      textStyle: TextStyle(
                        fontSize: 25,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
