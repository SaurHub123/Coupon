import 'package:flutter/material.dart';
import 'package:flutter_ui_coupon/presentation/coupon_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:dotted_line/dotted_line.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, oreintation, type) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Coupon UI',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MyHomePage(
            title: 'Coupon UI',
          ),
        );
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor:
//             Colors.amber, // Use the same background color from the row
//         elevation: 4, // Adding a slight elevation for shadow effect
//         title: Row(
//           children: [
//             // Optionally, you can add an icon here if required
//             Icon(
//               Icons.menu, // You can replace this with a suitable icon
//               color: Colors.white,
//             ),
//             SizedBox(width: 10), // Spacing between icon and title
//             Text(
//               widget.title, // The title from your widget
//               style: TextStyle(
//                 color: Colors
//                     .white, // White color to contrast with the amber background
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.search, // Example of an action icon (search in this case)
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // Define the action here
//               print('Search clicked');
//             },
//           ),
//         ],
//         centerTitle: false, // Title is left aligned
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(0.5.h),
//             bottomRight: Radius.circular(0.5.h),
//           ),
//         ), // Matching the rounded corners of your row design
//       ),
//       body: SizedBox(
//         height: 100.h,
//         width: 100.w,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 5.0.w),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           height: 10.h,
//                           width: 12.0.w,
//                           decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(0.5.h),
//                               bottomLeft: Radius.circular(0.5.h),
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black
//                                     .withOpacity(0.1), // Shadow color
//                                 blurRadius: 8, // Blur radius
//                                 offset: Offset(2, 4), // Shadow position
//                               ),
//                             ],
//                           ),
//                           child: Stack(
//                             children: [
//                               Transform.rotate(
//                                 angle: -1.570795,
//                                 child: Center(
//                                   child: Text(
//                                     '100 OFF',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       letterSpacing: 1.2,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               ...List.generate(4, (index) {
//                                 double topPosition =
//                                     (index * 22 + 17) * 10.h / 100 -
//                                         5 * 10.h / 100;
//                                 return Positioned(
//                                   left: -5,
//                                   top: topPosition,
//                                   child: Container(
//                                     height: 10.0 * 10.h / 100,
//                                     width: 10.0 * 10.h / 100,
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       shape: BoxShape.circle,
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.black
//                                               .withOpacity(0.2), // Shadow color
//                                           blurRadius: 4, // Blur radius
//                                           offset:
//                                               Offset(1, 2), // Shadow position
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 );
//                               }),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             width: 95.w,
//                             height: 10.h,
//                             decoration: BoxDecoration(
//                               color: Colors.amber,
//                               borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(0.5.h),
//                                 bottomRight: Radius.circular(0.5.h),
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black
//                                       .withOpacity(0.1), // Shadow color
//                                   blurRadius: 8, // Blur radius
//                                   offset: Offset(2, 4), // Shadow position
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               children: [
//                                 ListTile(
//                                   title: Text(
//                                     'TRYNEW',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                   subtitle: Text(
//                                     'Add ₹99 more to avail this offer',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.grey[700],
//                                     ),
//                                   ),
//                                   trailing: Text(
//                                     'APPLY',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 25,
//                                       color: Colors.blue,
//                                     ),
//                                   ),
//                                   onTap: () {
//                                     print('Coupon Code clicked');
//                                   },
//                                 ),
//                                 DottedLine(
//                                   direction: Axis.horizontal,
//                                   lineThickness: 1.0,
//                                   dashColor: Colors.black,
//                                 ),
//                                 Text(
//                                   'Hostinger Offers Up To 90% OFF Exclusive Offer: Up To 80% OFF + Extra 10% OFF On Web Hosting + 3 Months FREE',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 1.5.h,
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           height: 10.h,
//                           width: 12.0.w,
//                           decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(0.5.h),
//                               bottomLeft: Radius.circular(0.5.h),
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black
//                                     .withOpacity(0.1), // Shadow color
//                                 blurRadius: 8, // Blur radius
//                                 offset: Offset(2, 4), // Shadow position
//                               ),
//                             ],
//                           ),
//                           child: Stack(
//                             children: [
//                               Transform.rotate(
//                                 angle: -1.570795,
//                                 child: Center(
//                                   child: Text(
//                                     '100 OFF',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       letterSpacing: 1.2,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               ...List.generate(4, (index) {
//                                 double topPosition =
//                                     (index * 22 + 17) * 10.h / 100 -
//                                         5 * 10.h / 100;
//                                 return Positioned(
//                                   left: -5,
//                                   top: topPosition,
//                                   child: Container(
//                                     height: 10.0 * 10.h / 100,
//                                     width: 10.0 * 10.h / 100,
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       shape: BoxShape.circle,
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.black
//                                               .withOpacity(0.2), // Shadow color
//                                           blurRadius: 4, // Blur radius
//                                           offset:
//                                               Offset(1, 2), // Shadow position
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 );
//                               }),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             width: 95.w,
//                             height: 10.h,
//                             decoration: BoxDecoration(
//                               color: Colors.amber,
//                               borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(0.5.h),
//                                 bottomRight: Radius.circular(0.5.h),
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black
//                                       .withOpacity(0.1), // Shadow color
//                                   blurRadius: 8, // Blur radius
//                                   offset: Offset(2, 4), // Shadow position
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               children: [
//                                 ListTile(
//                                   title: Text(
//                                     'TRYNEW',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                   subtitle: Text(
//                                     'Add ₹99 more to avail this offer',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.grey[700],
//                                     ),
//                                   ),
//                                   trailing: Text(
//                                     'APPLY',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 25,
//                                       color: Colors.blue,
//                                     ),
//                                   ),
//                                   onTap: () {
//                                     print('Coupon Code clicked');
//                                   },
//                                 ),
//                                 DottedLine(
//                                   direction: Axis.horizontal,
//                                   lineThickness: 1.0,
//                                   dashColor: Colors.black,
//                                 ),
//                                 Text(
//                                   'Hostinger Offers Up To 90% OFF Exclusive Offer: Up To 80% OFF + Extra 10% OFF On Web Hosting + 3 Months FREE',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
