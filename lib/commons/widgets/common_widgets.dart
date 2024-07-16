import 'package:chatbot/commons/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(String text){
  return AppBar(

    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: AppColors.primaryBackground,
        height: 1.0,
      ),
    ),
    title: Text(
      text,
      style: TextStyle(
        color: AppColors.mainText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    centerTitle: true,
  );
}
Widget pageBody(BuildContext context,String imagePath, String title,String subTitle,String buttonName,void Function()? func){
  return Column(
    children: [
      imageWidget(imagePath,200.w,200.w),
      Container(
        child: Text(title,
          style: TextStyle(
              color: AppColors.mainText,
              fontSize: 26.sp,
              fontWeight: FontWeight.w700
          ),
        ),
      ),
      Container(
        width:375.w,
        padding: EdgeInsets.only(left: 30.w, right: 30.w,top: 50.h),
        child: Text(subTitle,
          style: TextStyle(
              color: AppColors.hintText,
              fontSize: 14.sp,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      GestureDetector(
        onTap:func,
        child: Container(
          margin: EdgeInsets.only(top:60.h,  left: 25.w, right: 25.w),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              boxShadow:const [
                BoxShadow(
                    color: AppColors.blue,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0,5)
                )
              ]
          ),
          child: Center(
            child: Text(buttonName,
              style: TextStyle(
                color: AppColors.primaryBackground,
                fontSize: 18.sp,
                fontWeight: FontWeight.normal,
              ),),
          ),
        ),
      )
    ],

  );
}
Widget imageWidget(String imagePath, double width, double height) {
  return SizedBox(
      //width: 200.w,
      width: width,
      height: height,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      )
  );
}