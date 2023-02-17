import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/widget/utils.dart';
import 'package:validators/validators.dart';

import '../widget/buttons.dart';

class SignUpScreen extends StatefulWidget {

  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _formKey = GlobalKey<FormState>();
  var _passwordVisible ;

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
    //todo api call for signup
    Navigator.of(context).pushReplacementNamed(LOGIN_SCREEN_ROUTE);
  }

  String? _validateEmail(String? value) {
    try {
      isEmail(value!);
    } catch (e) {
      return 'The E-mail Address must be a valid email address.';
    }

    return null;
  }

  String? _validatePassword(String? value) {
    try{
    if (value!.length < 8) {
      return 'The Password must be at least 8 characters.';
    }}catch(e){
      return 'Please enter password';
    }

    return null;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 50, 15, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    space(vertical: 20),
                    Text(
                      "SignUp",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      "Enter your details below & free sign up",
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                color: Colors.white,
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        space(vertical: 30),
                        Text(
                          "Your Email",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        space(vertical: 10),
                        TextFormField(
                          style: Theme.of(context).textTheme.titleSmall,
                          validator: (value)=>_validateEmail(value!),
                          onSaved: (value){},
                          decoration: InputDecoration(
                            hintStyle: Theme.of(context).textTheme.bodyLarge,
                            hintText: "Enter Email",
                            fillColor: Colors.white,
                            focusedBorder: getFocusBorder(context),
                            enabledBorder: getEnabledBorder(context),
                          ),
                        ),
                        space(vertical: 30),
                        Text(
                          "Password",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        space(vertical: 10),
                        TextFormField(
                          obscureText: !_passwordVisible,
                          autocorrect: false,
                          enableSuggestions: false,
                          style: Theme.of(context).textTheme.titleSmall,
                          validator: (value) => _validatePassword(value),
                          onSaved: (newValue) {

                          },
                          decoration: InputDecoration(
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            }, icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),color: Theme.of(context).primaryColor,),
                            hintStyle: Theme.of(context).textTheme.bodyLarge,
                            hintText: "Password",
                            fillColor: Colors.white,
                            focusedBorder: getFocusBorder(context),
                            enabledBorder: getEnabledBorder(context),
                          ),
                        ),
                        space(vertical: 30),
                        SizedBox(
                          width: double.infinity,
                          child: SimpleButton(
                            onPressed: () {
                             _submit();
                            },
                            child: Text(
                              "Created account",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            //SizedBox
                            Checkbox(

                              value: false,
                              onChanged: (value) {},
                            ),
                            space(horizontal: 2),
                            Text(
                              'Library Implementation Of Searching Algorithm: ',
                              style: Theme.of(context).textTheme.bodySmall,
                            ), //Text                        //Checkbox
                          ], //<Widget>[]
                        ),
                        Text(
                          "Already have an account？ ",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
