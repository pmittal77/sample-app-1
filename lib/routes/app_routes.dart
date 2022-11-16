import 'package:pankaj_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:pankaj_s_application1/presentation/splash_screen/binding/splash_binding.dart';
import 'package:pankaj_s_application1/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:pankaj_s_application1/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:pankaj_s_application1/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:pankaj_s_application1/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:pankaj_s_application1/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:pankaj_s_application1/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:pankaj_s_application1/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:pankaj_s_application1/presentation/onboarding_four_screen/binding/onboarding_four_binding.dart';
import 'package:pankaj_s_application1/presentation/login_screen/login_screen.dart';
import 'package:pankaj_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:pankaj_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:pankaj_s_application1/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:pankaj_s_application1/presentation/reset_password_email_screen/reset_password_email_screen.dart';
import 'package:pankaj_s_application1/presentation/reset_password_email_screen/binding/reset_password_email_binding.dart';
import 'package:pankaj_s_application1/presentation/reset_password_phone_screen/reset_password_phone_screen.dart';
import 'package:pankaj_s_application1/presentation/reset_password_phone_screen/binding/reset_password_phone_binding.dart';
import 'package:pankaj_s_application1/presentation/reset_password_verify_code_screen/reset_password_verify_code_screen.dart';
import 'package:pankaj_s_application1/presentation/reset_password_verify_code_screen/binding/reset_password_verify_code_binding.dart';
import 'package:pankaj_s_application1/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:pankaj_s_application1/presentation/create_new_password_screen/binding/create_new_password_binding.dart';
import 'package:pankaj_s_application1/presentation/home_screen/home_screen.dart';
import 'package:pankaj_s_application1/presentation/home_screen/binding/home_binding.dart';
import 'package:pankaj_s_application1/presentation/top_doctor_screen/top_doctor_screen.dart';
import 'package:pankaj_s_application1/presentation/top_doctor_screen/binding/top_doctor_binding.dart';
import 'package:pankaj_s_application1/presentation/find_doctors_screen/find_doctors_screen.dart';
import 'package:pankaj_s_application1/presentation/find_doctors_screen/binding/find_doctors_binding.dart';
import 'package:pankaj_s_application1/presentation/doctor_detail_screen/doctor_detail_screen.dart';
import 'package:pankaj_s_application1/presentation/doctor_detail_screen/binding/doctor_detail_binding.dart';
import 'package:pankaj_s_application1/presentation/booking_doctor_screen/booking_doctor_screen.dart';
import 'package:pankaj_s_application1/presentation/booking_doctor_screen/binding/booking_doctor_binding.dart';
import 'package:pankaj_s_application1/presentation/chat_with_doctor_screen/chat_with_doctor_screen.dart';
import 'package:pankaj_s_application1/presentation/chat_with_doctor_screen/binding/chat_with_doctor_binding.dart';
import 'package:pankaj_s_application1/presentation/audio_call_screen/audio_call_screen.dart';
import 'package:pankaj_s_application1/presentation/audio_call_screen/binding/audio_call_binding.dart';
import 'package:pankaj_s_application1/presentation/video_call_screen/video_call_screen.dart';
import 'package:pankaj_s_application1/presentation/video_call_screen/binding/video_call_binding.dart';
import 'package:pankaj_s_application1/presentation/schedule1_screen/schedule1_screen.dart';
import 'package:pankaj_s_application1/presentation/schedule1_screen/binding/schedule1_binding.dart';
import 'package:pankaj_s_application1/presentation/message_history1_screen/message_history1_screen.dart';
import 'package:pankaj_s_application1/presentation/message_history1_screen/binding/message_history1_binding.dart';
import 'package:pankaj_s_application1/presentation/articles_screen/articles_screen.dart';
import 'package:pankaj_s_application1/presentation/articles_screen/binding/articles_binding.dart';
import 'package:pankaj_s_application1/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:pankaj_s_application1/presentation/pharmacy_screen/binding/pharmacy_binding.dart';
import 'package:pankaj_s_application1/presentation/drugs_detail_screen/drugs_detail_screen.dart';
import 'package:pankaj_s_application1/presentation/drugs_detail_screen/binding/drugs_detail_binding.dart';
import 'package:pankaj_s_application1/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:pankaj_s_application1/presentation/my_cart_screen/binding/my_cart_binding.dart';
import 'package:pankaj_s_application1/presentation/location_screen/location_screen.dart';
import 'package:pankaj_s_application1/presentation/location_screen/binding/location_binding.dart';
import 'package:pankaj_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:pankaj_s_application1/presentation/profile_screen/binding/profile_binding.dart';
import 'package:pankaj_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:pankaj_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String onboardingOneScreen = '/onboarding_one_screen';

  static String onboardingTwoScreen = '/onboarding_two_screen';

  static String onboardingThreeScreen = '/onboarding_three_screen';

  static String onboardingFourScreen = '/onboarding_four_screen';

  static String loginScreen = '/login_screen';

  static String signUpScreen = '/sign_up_screen';

  static String resetPasswordEmailScreen = '/reset_password_email_screen';

  static String resetPasswordPhoneScreen = '/reset_password_phone_screen';

  static String resetPasswordVerifyCodeScreen =
      '/reset_password_verify_code_screen';

  static String createNewPasswordScreen = '/create_new_password_screen';

  static String homeScreen = '/home_screen';

  static String topDoctorScreen = '/top_doctor_screen';

  static String findDoctorsScreen = '/find_doctors_screen';

  static String doctorDetailScreen = '/doctor_detail_screen';

  static String bookingDoctorScreen = '/booking_doctor_screen';

  static String chatWithDoctorScreen = '/chat_with_doctor_screen';

  static String audioCallScreen = '/audio_call_screen';

  static String videoCallScreen = '/video_call_screen';

  static String schedule1Screen = '/schedule1_screen';

  static String messageHistory1Screen = '/message_history1_screen';

  static String articlesScreen = '/articles_screen';

  static String pharmacyScreen = '/pharmacy_screen';

  static String drugsDetailScreen = '/drugs_detail_screen';

  static String myCartScreen = '/my_cart_screen';

  static String locationScreen = '/location_screen';

  static String profileScreen = '/profile_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: onboardingFourScreen,
      page: () => OnboardingFourScreen(),
      bindings: [
        OnboardingFourBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordEmailScreen,
      page: () => ResetPasswordEmailScreen(),
      bindings: [
        ResetPasswordEmailBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordPhoneScreen,
      page: () => ResetPasswordPhoneScreen(),
      bindings: [
        ResetPasswordPhoneBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordVerifyCodeScreen,
      page: () => ResetPasswordVerifyCodeScreen(),
      bindings: [
        ResetPasswordVerifyCodeBinding(),
      ],
    ),
    GetPage(
      name: createNewPasswordScreen,
      page: () => CreateNewPasswordScreen(),
      bindings: [
        CreateNewPasswordBinding(),
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
      name: topDoctorScreen,
      page: () => TopDoctorScreen(),
      bindings: [
        TopDoctorBinding(),
      ],
    ),
    GetPage(
      name: findDoctorsScreen,
      page: () => FindDoctorsScreen(),
      bindings: [
        FindDoctorsBinding(),
      ],
    ),
    GetPage(
      name: doctorDetailScreen,
      page: () => DoctorDetailScreen(),
      bindings: [
        DoctorDetailBinding(),
      ],
    ),
    GetPage(
      name: bookingDoctorScreen,
      page: () => BookingDoctorScreen(),
      bindings: [
        BookingDoctorBinding(),
      ],
    ),
    GetPage(
      name: chatWithDoctorScreen,
      page: () => ChatWithDoctorScreen(),
      bindings: [
        ChatWithDoctorBinding(),
      ],
    ),
    GetPage(
      name: audioCallScreen,
      page: () => AudioCallScreen(),
      bindings: [
        AudioCallBinding(),
      ],
    ),
    GetPage(
      name: videoCallScreen,
      page: () => VideoCallScreen(),
      bindings: [
        VideoCallBinding(),
      ],
    ),
    GetPage(
      name: schedule1Screen,
      page: () => Schedule1Screen(),
      bindings: [
        Schedule1Binding(),
      ],
    ),
    GetPage(
      name: messageHistory1Screen,
      page: () => MessageHistory1Screen(),
      bindings: [
        MessageHistory1Binding(),
      ],
    ),
    GetPage(
      name: articlesScreen,
      page: () => ArticlesScreen(),
      bindings: [
        ArticlesBinding(),
      ],
    ),
    GetPage(
      name: pharmacyScreen,
      page: () => PharmacyScreen(),
      bindings: [
        PharmacyBinding(),
      ],
    ),
    GetPage(
      name: drugsDetailScreen,
      page: () => DrugsDetailScreen(),
      bindings: [
        DrugsDetailBinding(),
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
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
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
    )
  ];
}
