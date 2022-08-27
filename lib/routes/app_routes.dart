import 'package:grocery_app/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:grocery_app/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:grocery_app/presentation/details_screen/details_screen.dart';
import 'package:grocery_app/presentation/details_screen/binding/details_binding.dart';
import 'package:grocery_app/presentation/explore_screen/explore_screen.dart';
import 'package:grocery_app/presentation/explore_screen/binding/explore_binding.dart';
import 'package:grocery_app/presentation/home_screen/home_screen.dart';
import 'package:grocery_app/presentation/home_screen/binding/home_binding.dart';
import 'package:grocery_app/presentation/login_with_email_id_screen/login_with_email_id_screen.dart';
import 'package:grocery_app/presentation/login_with_email_id_screen/binding/login_with_email_id_binding.dart';
import 'package:grocery_app/presentation/register_screen/register_screen.dart';
import 'package:grocery_app/presentation/register_screen/binding/register_binding.dart';
import 'package:grocery_app/presentation/fruits_screen/fruits_screen.dart';
import 'package:grocery_app/presentation/fruits_screen/binding/fruits_binding.dart';
import 'package:grocery_app/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:grocery_app/presentation/wishlist_screen/binding/wishlist_bindings.dart';
import 'package:grocery_app/presentation/my_addresses_screen/my_addresses_screen.dart';
import 'package:grocery_app/presentation/my_addresses_screen/binding/my_addresses_binding.dart';
import 'package:grocery_app/presentation/my_orders_screen/my_orders_screen.dart';
import 'package:grocery_app/presentation/my_orders_screen/binding/my_orders_binding.dart';
import 'package:grocery_app/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:grocery_app/presentation/contact_us_screen/binding/contact_us_binding.dart';
import 'package:grocery_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:grocery_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:grocery_app/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:grocery_app/presentation/my_cart_screen/binding/my_cart_binding.dart';
import 'package:grocery_app/presentation/user_screen/user_screen.dart';
import 'package:grocery_app/presentation/user_screen/binding/user_binding.dart';
import 'package:grocery_app/presentation/splash_screen/splash_screen.dart';
import 'package:grocery_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:grocery_app/presentation/terms_of_services_screen/terms_of_services_screen.dart';
import 'package:grocery_app/presentation/terms_of_services_screen/binding/terms_of_services_binding.dart';
import 'package:grocery_app/presentation/about_us_screen/about_us_screen.dart';
import 'package:grocery_app/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:grocery_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:grocery_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String detailsScreen = '/details_screen';

  static String exploreScreen = '/explore_screen';

  static String homeScreen = '/home_screen';

  static String loginWithEmailIdScreen = '/login_with_email_id_screen';

  static String registerScreen = '/register_screen';

  static String fruitsScreen = '/fruits_screen';

  static String wishlistScreen = '/wishlist_screen';

  static String myAddressesScreen = '/my_addresses_screen';

  static String myOrdersScreen = '/my_orders_screen';

  static String contactUsScreen = '/contact_us_screen';

  static String privacyPolicyScreen = '/privacy_policy_screen';

  static String myCartScreen = '/my_cart_screen';

  static String userScreen = '/user_screen';

  static String splashScreen = '/splash_screen';

  static String termsOfServicesScreen = '/terms_of_services_screen';

  static String explorePopupScreen = '/explore_popup_screen';

  static String aboutUsScreen = '/about_us_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String addNewAddress = '/add_new_address';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: detailsScreen,
      page: () => DetailsScreen(),
      bindings: [
        DetailsBinding(),
      ],
    ),
    GetPage(
      name: exploreScreen,
      page: () => ExploreScreen(),
      bindings: [
        ExploreBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: loginWithEmailIdScreen,
      page: () => LoginWithEmailIdScreen(),
      bindings: [
        LoginWithEmailIdBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: fruitsScreen,
      page: () => FruitsScreen(),
      bindings: [
        FruitsBinding(),
      ],
    ),
    GetPage(
      name: wishlistScreen,
      page: () => WishlistScreen(),
      bindings: [
        WishlistBinding(),
      ],
    ),
    GetPage(
      name: myAddressesScreen,
      page: () => MyAddressesScreen(),
      bindings: [
        MyAddressesBinding(),
      ],
    ),
    GetPage(
      name: myOrdersScreen,
      page: () => MyOrdersScreen(),
      bindings: [
        MyOrdersBinding(),
      ],
    ),
    GetPage(
      name: contactUsScreen,
      page: () => ContactUsScreen(),
      bindings: [
        ContactUsBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: myCartScreen,
      page: () => MyCartScreen(),
      bindings: [
        MyCartBinding(),
      ],
    ),
    GetPage(
      name: userScreen,
      page: () => UserScreen(),
      bindings: [
        UserBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: termsOfServicesScreen,
      page: () => TermsOfServicesScreen(),
      bindings: [
        TermsOfServicesBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: addNewAddress,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),
  ];
}
