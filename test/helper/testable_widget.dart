import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class _Wrapper extends StatelessWidget {
  final Widget child;
  _Wrapper(this.child);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: child,
    );
  }
}

Widget testableWidget({Widget child}) {
  return MediaQuery(
    data: MediaQueryData(),
    child: CupertinoApp(
      home: Scaffold(body: _Wrapper(child)),
    ),
  );
}
