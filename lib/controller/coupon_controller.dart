import 'dart:async';

import 'package:flutter_ui_coupon/data/coupon_model.dart';

class CouponController {
  // Simulating a data source with temporary data
  final List<Coupon> _coupons = [
    Coupon(
      code: 'NEW50',
      description: 'Save 50% OFF on first orders above ₹999',
      minPurchaseAmount: 999.0,
      offerDetails:
          'Save 50% on first orders over ₹999 when you use the code NEW50.',
    ),
    Coupon(
      code: 'TRYNEW',
      description: 'Add ₹99 more to avail this offer',
      minPurchaseAmount: 99.0,
      offerDetails:
          'Hostinger Offers Up To 90% OFF Exclusive Offer: Up To 80% OFF + Extra 10% OFF On Web Hosting + 3 Months FREE',
    ),
    Coupon(
      code: '100OFF',
      description: 'Flat ₹100 off on purchases above ₹500',
      minPurchaseAmount: 500.0,
      offerDetails:
          'Get ₹100 off on your purchase over ₹500. Limited time offer.',
    ),
    Coupon(
      code: 'SAVE50',
      description: 'Save ₹50 on orders above ₹300',
      minPurchaseAmount: 300.0,
      offerDetails:
          'Save ₹50 on orders over ₹300 when you use the code SAVE50.',
    ),
    Coupon(
      code: 'FEB14',
      description: 'Save ₹140 on orders above ₹999',
      minPurchaseAmount: 999.0,
      offerDetails:
          'Save ₹140 on orders over ₹999 when you use the code FEB14.',
    ),
    Coupon(
      code: 'NEW50',
      description: 'Save 50% OFF on first orders above ₹999',
      minPurchaseAmount: 999.0,
      offerDetails:
          'Save 50% on first orders over ₹999 when you use the code NEW50.',
    ),
    Coupon(
      code: 'REPUBLIC',
      description: 'Save ₹75 on orders above ₹499',
      minPurchaseAmount: 499.0,
      offerDetails:
          'Save ₹75 on orders over ₹499 when you use the code REPUBLIC.',
    ),
    Coupon(
      code: 'HOLI250',
      description: 'Save ₹250 on orders above ₹999',
      minPurchaseAmount: 999.0,
      offerDetails:
          'Save ₹250 on orders over ₹999 when you use the code HOLI25.',
    ),
    Coupon(
      code: 'NEW50',
      description: 'Save 50% OFF on first orders above ₹999',
      minPurchaseAmount: 999.0,
      offerDetails:
          'Save 50% on first orders over ₹999 when you use the code NEW50.',
    ),
  ];

  // Get the list of coupons (simulate fetching from a database or API)
  Future<List<Coupon>> fetchCoupons() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));
    return _coupons;
  }
}
