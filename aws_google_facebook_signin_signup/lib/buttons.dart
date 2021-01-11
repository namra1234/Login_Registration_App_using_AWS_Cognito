import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookButton extends StatelessWidget {

  FacebookButton(this.onPressed);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(8.0),
      ),
      color: Colors.blue[900],
      icon: SvgPicture.asset('assets/img/vector/facebook.svg'),
      onPressed: this.onPressed,
      label: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text('Log In with Facebook', style: TextStyle(color: Colors.white,),),
      ),
    );
  }

}

class GoogleButton extends StatelessWidget {

  GoogleButton(this.onPressed);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlineButton.icon(
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8.0),
      ),
      color: Colors.white,
      icon: SvgPicture.asset('assets/img/vector/google.svg'),
      onPressed: this.onPressed,
      label: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text('Sign in with Google', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
      ),
    );
  }

}