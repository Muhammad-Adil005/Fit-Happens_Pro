// import 'package:fit_happens_pro/views/CustomWidgets/reusable_Container.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:gradient_borders/box_borders/gradient_box_border.dart';
// import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
//
// import '../../../../utils/app_colors.dart';
// import '../../../../utils/app_images.dart';
// import '../controller/auth_controller.dart';
// import '../sign_up/sign_up_screen.dart';
//
// class LoginScreen extends GetView<AuthScreensController> {
//   const LoginScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: kPrimaryColor,
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Sign In To Fit Happens, Pro",
//                 style: GoogleFonts.openSans(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 30.sp,
//                   color: kWhiteTextColor,
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 "Let's personalize your fitness",
//                 style: GoogleFonts.workSans(
//                   fontSize: 16.sp,
//                   color: kLoginTextColor,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Email Address',
//                 style: GoogleFonts.workSans(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w700,
//                   color: kWhiteTextColor,
//                 ),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   contentPadding: const EdgeInsets.all(16),
//                   labelText: "Enter Your email..",
//                   labelStyle: GoogleFonts.workSans(
//                     color: kLabelTextColor,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 16.sp,
//                   ),
//                   prefixIcon: Icon(Icons.email_outlined, size: 24.sp),
//                   border: GradientOutlineInputBorder(
//                     borderRadius: BorderRadius.circular(19),
//                     width: 1,
//                     gradient: LinearGradient(
//                       colors: [
//                         Color(0xFF00FF8F),
//                         Color(0xFF00A1FF),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Password',
//                 style: GoogleFonts.workSans(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w700,
//                   color: kWhiteTextColor,
//                 ),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   contentPadding: const EdgeInsets.all(16),
//                   labelText: "**********",
//                   labelStyle: GoogleFonts.workSans(
//                     color: kLabelTextColor,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 16.sp,
//                   ),
//                   prefixIcon: Icon(Icons.lock_outline_sharp, size: 24.sp),
//                   border: GradientOutlineInputBorder(
//                     borderRadius: BorderRadius.circular(19),
//                     width: 1,
//                     gradient: LinearGradient(
//                       colors: [
//                         Color(0xFF00FF8F),
//                         Color(0xFF00A1FF),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               // Container(
//               //   width: 327.w,
//               //   height: 64.h,
//               //   decoration: BoxDecoration(
//               //     borderRadius: BorderRadius.circular(18),
//               //     gradient: const LinearGradient(
//               //       colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
//               //       begin: Alignment.topCenter,
//               //       end: Alignment.bottomCenter,
//               //     ),
//               //   ),
//               //   child: Center(
//               //     child: Text(
//               //       'Sign in',
//               //       style: GoogleFonts.montserrat(
//               //         color: kWhiteTextColor,
//               //         fontWeight: FontWeight.w500,
//               //         fontSize: 16.sp,
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               ReusableContainer(width: 327.w, height: 64.h, text: 'Sign in'),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       border: const GradientBoxBorder(
//                         gradient: LinearGradient(
//                           colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
//                         ),
//                       ),
//                     ),
//                     child: Center(
//                       child: Image.asset(kBackgroundImage1),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       border: const GradientBoxBorder(
//                         gradient: LinearGradient(
//                           colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
//                         ),
//                       ),
//                     ),
//                     child: Center(
//                       child: Image.asset(kBackgroundImage2),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       border: const GradientBoxBorder(
//                         gradient: LinearGradient(
//                           colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
//                         ),
//                       ),
//                     ),
//                     child: Center(
//                       child: Image.asset(kBackgroundImage3),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       border: const GradientBoxBorder(
//                         gradient: LinearGradient(
//                           colors: [Color(0xFF00FF8F), Color(0xFF00A1FF)],
//                         ),
//                       ),
//                     ),
//                     child: Center(
//                       child: Image.asset(kBackgroundImage4),
//                     ),
//                   ),
//                 ],
//               ),
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Don\'t have an account? ',
//                       style: GoogleFonts.workSans(
//                         color: Colors.grey,
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     WidgetSpan(
//                       child: GestureDetector(
//                         onTap: () {
//                           Get.to(() => const SignUpScreen());
//                         },
//                         child: Text(
//                           'Sign up.',
//                           style: GoogleFonts.workSans(
//                             color: Colors.blueAccent,
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Forget Password",
//                     style: TextStyle(
//                       color: kForgotPasswordTextColor,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:fit_happens_pro/views/Screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../CustomWidgets/reusable_Container.dart';
import '../controller/auth_controller.dart';

class SignUpScreen extends GetView<AuthScreensController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 48.h),
                Center(
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(kPircerImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Sign Up For Free",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 30.sp,
                      color: kWhiteTextColor,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Center(
                  child: Text(
                    "Quickly make your account in 1 minute",
                    style: GoogleFonts.workSans(
                      fontSize: 16.sp,
                      color: kLoginTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Email Address',
                  style: GoogleFonts.workSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: kWhiteTextColor,
                  ),
                ),
                SizedBox(height: 10.h),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: "Enter Your email..",
                    hintStyle: GoogleFonts.workSans(
                      color: kLabelTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                    prefixIcon: Icon(Icons.email_outlined, size: 24.sp),
                    border: GradientOutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      width: 1,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF00FF8F),
                          Color(0xFF00A1FF),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Password',
                  style: GoogleFonts.workSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: kWhiteTextColor,
                  ),
                ),
                SizedBox(height: 10.h),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: "**********",
                    hintStyle: GoogleFonts.workSans(
                      color: kLabelTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                    prefixIcon: Icon(Icons.lock_outline_sharp, size: 24.sp),
                    border: GradientOutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      width: 1,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF00FF8F),
                          Color(0xFF00A1FF),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Confirm Password',
                  style: GoogleFonts.workSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: kWhiteTextColor,
                  ),
                ),
                SizedBox(height: 10.h),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: "**********",
                    hintStyle: GoogleFonts.workSans(
                      color: kLabelTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                    prefixIcon: Icon(Icons.lock_outline_sharp, size: 24.sp),
                    suffixIcon: Icon(Icons.visibility_off, size: 24.sp),
                    border: GradientOutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      width: 1,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF00FF8F),
                          Color(0xFF00A1FF),
                        ],
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide(
                        color: Colors.red, // Red color for the focused border
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                ReusableContainer(
                  width: 327.w,
                  height: 64.h,
                  text: 'Sign Up',
                  onTap: () {},
                ),
                SizedBox(height: 48.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: GoogleFonts.workSans(
                            color: Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const LoginScreen());
                            },
                            child: Text(
                              'Login.',
                              style: GoogleFonts.workSans(
                                color: Colors.blueAccent,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        color: kForgotPasswordTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
