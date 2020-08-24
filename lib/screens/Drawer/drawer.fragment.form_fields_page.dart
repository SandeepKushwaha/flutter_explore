import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormFieldPageFragment extends StatefulWidget {
  @override
  _FormFieldPageFragmentState createState() => _FormFieldPageFragmentState();
}

class _FormFieldPageFragmentState extends State<FormFieldPageFragment> {
  final _form1Key = GlobalKey<FormState>();
  final _form2Key = GlobalKey<FormState>();

  bool _isPasswordVisible = true;
  bool _isPasswordHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Input Widget Exmples',
                style: Theme.of(context).textTheme.headline5.apply(
                      fontStyle: FontStyle.normal,
                      fontSizeDelta: 1.5,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted,
                    ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: kIsWeb ||
                        MediaQuery.of(context).orientation ==
                            Orientation.landscape
                    ? MediaQuery.of(context).size.width * .5
                    : MediaQuery.of(context).size.width * 80,
                child: Form(
                  key: _form1Key,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Name',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isPasswordVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: _isPasswordVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onPressed: _toggleVisibility,
                          ),
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          labelText: 'Phone',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        decoration: InputDecoration(
                          labelText: 'Multi line',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        child: Text('Submit'),
                        onPressed: () {
                          if (_form1Key.currentState.validate()) {
                            // Process form data.
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: kIsWeb ||
                        MediaQuery.of(context).orientation ==
                            Orientation.landscape
                    ? MediaQuery.of(context).size.width * .5
                    : MediaQuery.of(context).size.width * 80,
                child: Form(
                  key: _form2Key,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Name',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail_outline),
                          labelText: 'Email',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isPasswordHidden,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock_outline),
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: _isPasswordHidden
                                ? Icon(Icons.visibility_outlined)
                                : Icon(Icons.visibility_off_outlined),
                            onPressed: _togglePasswordVisibility,
                          ),
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.smartphone),
                          labelText: 'Phone',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.description_outlined),
                          labelText: 'Multi line',
                        ),
                        validator: (value) {
                          return value.isEmpty
                              ? 'Please fill this field'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        child: Text('Submit'),
                        onPressed: () {
                          if (_form2Key.currentState.validate()) {
                            // Process form data.
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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
