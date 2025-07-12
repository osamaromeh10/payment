import 'package:go_router/go_router.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/payment_details.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/thank_you_view.dart';

abstract class AppRouter {
  static const String myCartView = '/';
  static const String paymentDeatils = '/paymentDetails';
  static const String thankyouView = '/thankYou';

  static final router = GoRouter(
    routes: [
      // First screen route
      GoRoute(
        path: AppRouter.myCartView,
        builder: (context, state) => ThankYouView(),
      ),

      GoRoute(
        path: AppRouter.paymentDeatils,
        builder: (context, state) => PaymentDetails(),
      ),
      GoRoute(
        path: AppRouter.thankyouView,
        builder: (context, state) => ThankYouView(),
      ),
    ],
  );
}
