import 'package:flutter/material.dart';


  class rbutton extends StatelessWidget 
   {
        final String btnname;
        final Icon? icon;
        final Color? bgcolor;
        final TextStyle? textStyle;
        final VoidCallback? callback;

        rbutton({
           this.bgcolor=Colors.blue,
            required  this.btnname,
                this.callback,
                this.icon,
                this.textStyle,


        });


   @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:()
      {
        callback!();
      },

       child: Row(
        
       ));
  }
   }