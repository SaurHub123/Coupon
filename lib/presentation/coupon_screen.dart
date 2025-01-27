import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_coupon/controller/coupon_controller.dart';
import 'package:flutter_ui_coupon/data/coupon_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Instance of the CouponController to manage coupon data
  final CouponController _couponController = CouponController();
  
  // Store the list of coupons
  late Future<List<Coupon>> _couponsFuture;

  @override
  void initState() {
    super.initState();
    // Fetch the coupons when the page is initialized
    _couponsFuture = _couponController.fetchCoupons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 4,
        title: Row(
          children: [
            Icon(Icons.menu, color: Colors.white),
            SizedBox(width: 10),
            Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              print('Search clicked');
            },
          ),
        ],
        centerTitle: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.5.h),
            bottomRight: Radius.circular(0.5.h),
          ),
        ),
      ),
      body: FutureBuilder<List<Coupon>>(
        future: _couponsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading coupons'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No coupons available'));
          }

          // Display the list of coupons
          List<Coupon> coupons = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              children: List.generate(
                coupons.length,
                (index) {
                  Coupon coupon = coupons[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 12.0.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0.5.h),
                              bottomLeft: Radius.circular(0.5.h),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(2, 4),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Transform.rotate(
                                angle: -1.570795,
                                child: Center(
                                  child: Text(
                                    coupon.code,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                              ),
                              ...List.generate(4, (index) {
                                double topPosition =
                                    (index * 22 + 17) * 10.h / 100 - 5 * 10.h / 100;
                                return Positioned(
                                  left: -5,
                                  top: topPosition,
                                  child: Container(
                                    height: 10.0 * 10.h / 100,
                                    width: 10.0 * 10.h / 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 4,
                                          offset: Offset(1, 2),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(0.5.h),
                                bottomRight: Radius.circular(0.5.h),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: Offset(2, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    coupon.code,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  subtitle: Text(
                                    coupon.description,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  trailing: Text(
                                    'APPLY',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  onTap: () {
                                    print('${coupon.code} clicked');
                                  },
                                ),
                                DottedLine(
                                  direction: Axis.horizontal,
                                  lineThickness: 1.0,
                                  dashColor: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    coupon.offerDetails,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
