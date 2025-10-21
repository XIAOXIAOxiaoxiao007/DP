import 'package:go_router/go_router.dart';
import '../screens/shell.dart';
import '../screens/home/home_screen.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/product/product_screen.dart';
import '../screens/search/search_result_screen.dart';
import '../screens/checkout/checkout_screen.dart';
import '../screens/orders/orders_screen.dart';
import '../screens/address/address_screen.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => Shell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/cart', builder: (context, state) => const CartScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/profile', builder: (context, state) => const ProfileScreen()),
          ]),
        ],
      ),
      GoRoute(path: '/product/:id', builder: (context, state) => ProductScreen(id: state.pathParameters['id']!)),
      GoRoute(
        path: '/search',
        builder: (context, state) => SearchResultScreen(
          query: state.uri.queryParameters['q'] ?? '',
        ),
      ),
      GoRoute(path: '/checkout', builder: (context, state) => const CheckoutScreen()),
      GoRoute(path: '/orders', builder: (context, state) => const OrdersScreen()),
      GoRoute(path: '/orders/:id', builder: (context, state) => OrderDetailScreen(id: state.pathParameters['id']!)),
      GoRoute(path: '/address', builder: (context, state) => const AddressScreen()),
    ],
  );
}


