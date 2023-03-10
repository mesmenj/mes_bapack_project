import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  Wrapper({
    super.key,
  });
  // final User? user;

  @override
  Widget build(BuildContext context) {
    return Container();
    // final _user = Provider.of<User?>(context);
    // if (_user == null) {
    //   return const login();
    // } else {
    //   return EspaceBailleurScreen(user: _user);
    // }
    // correspond à
    // return _user == null? login() : EspaceBailleurScreen();
  }
}
