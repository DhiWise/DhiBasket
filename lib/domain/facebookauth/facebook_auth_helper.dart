import 'dart:convert';

import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:http/http.dart' as http;
import 'facebook_user.dart';

class FacebookAuthHelper {
  /// Handle Facebook Signin to authenticate user
  Future<FacebookUser> facebookSignInProcess() async {
    final facebookLogin = FacebookLogin();
    final facebookLoginResult = await facebookLogin.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

    final token = facebookLoginResult.accessToken!.token;

    final graphResponse = await http.get(Uri.parse(
        'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=$token'));
    final profile = json.decode(graphResponse.body);

    var facebookUserProfile = FacebookUser.fromMap(profile);

    return facebookUserProfile;
  }

  /// To signout from the application if the user is signed in through facebook
  void facebookSignOutProcess() async {
    final facebookLogin = FacebookLogin();
    final facebookLoginResult = await facebookLogin.logOut();

    return facebookLoginResult;
  }
}
