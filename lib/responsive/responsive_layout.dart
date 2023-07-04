import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});

  /*

        /* Extra small devices (phones, 600px and down) */
           (max-width: 600px) {...}

        /* Small devices (portrait tablets and large phones, 600px and up) */
           (min-width: 600px) {...}

        /* Medium devices (landscape tablets, 768px and up) */
           (min-width: 768px) {...}

        /* Large devices (laptops/desktops, 992px and up) */
           (min-width: 992px) {...}

        /* Extra large devices (large laptops and desktops, 1200px and up) */
           (min-width: 1200px) {...}

   */

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
