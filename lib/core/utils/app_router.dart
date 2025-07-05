import 'package:go_router/go_router.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/my_cart_view.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/payment_details.dart';

abstract class AppRouter {
  static const String myCartView = '/';
  static const String paymentDeatils = '/paymentDetails';

  static final router = GoRouter(
    routes: [
      // First screen route
      GoRoute(
        path: AppRouter.myCartView,
        builder: (context, state) => MyCartView(),
      ),

      GoRoute(
        path: AppRouter.paymentDeatils,
        builder: (context, state) => PaymentDetails(),
      ),
    ],
  );
}
