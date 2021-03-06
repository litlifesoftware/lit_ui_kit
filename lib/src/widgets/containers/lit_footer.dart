import 'package:flutter/material.dart';
import 'package:lit_ui_kit/lit_ui_kit.dart';

class LitFooter extends StatelessWidget {
  final String title;
  final Widget child;

  const LitFooter({
    Key? key,
    this.title = "Footer",
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HexColor('#C4C4C4').withOpacity(0.4),
                Colors.white,
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 82.0,
              left: 16.0,
              right: 16.0,
            ),
            child: LitConstrainedSizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LitConstrainedSizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8.0,
                      ),
                      child: ClippedText(
                        title,
                        textAlign: TextAlign.end,
                        style: LitSansSerifStyles.header6.copyWith(
                          color: HexColor('#878787'),
                        ),
                      ),
                    ),
                  ),
                  LitConstrainedSizedBox(
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
