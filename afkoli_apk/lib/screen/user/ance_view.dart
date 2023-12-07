import 'package:afkoli_apk/screen/user/ance_detail.dart';
import 'package:afkoli_apk/utils/app_layourt.dart';
import 'package:afkoli_apk/utils/app_style.dart';
import 'package:afkoli_apk/widget/ance_container.dart';
import 'package:afkoli_apk/widget/column_layourt.dart';
import 'package:afkoli_apk/widget/layourt_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';

class Ance_view extends StatelessWidget {
  final Map<String, dynamic> Ance;
  final bool? isColor;
  const Ance_view({Key? key, required this.Ance, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnceDetail(
              donneesAnce: {},
            ), // Remplacez NouvellePage par le nom de votre nouvelle page
          ),
        );
      },
      child: SizedBox(
        width: size.width * 0.9,
        height: 200,
        child: Container(
          margin: EdgeInsets.only(right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /*
              showing the blue part of the card/ticket
               */
              Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Color(0xFF526799) : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          Ance['from']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                        Expanded(child: Container()),
                        AnceConatainer(isColor: true),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                sections: 6,
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Color(0xFF8ACCF7)),
                            )),
                          ],
                        )),
                        AnceConatainer(isColor: true),
                        Expanded(child: Container()),
                        Text(Ance['to']['code'],
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3)
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            Ance['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                        Text(
                          Ance['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            Ance['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              /*
              showing the orange part of the card/ticket
               */
              Container(
                color: isColor == null
                    ? Styles.orangeColor
                    : Colors.white, //const Color(0xFFF37B67),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.grey.shade300),
                                      ),
                                    )),
                          );
                        },
                      ),
                    )),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                        bottomRight:
                            Radius.circular(isColor == null ? 21 : 0))),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        columnLayourt(
                            firstText: Ance['date'],
                            secondText: "Date",
                            alignment: CrossAxisAlignment.start,
                            isColor: isColor),
                        columnLayourt(
                            firstText: Ance['departure_time'],
                            secondText: "Prix/Kg",
                            alignment: CrossAxisAlignment.center,
                            isColor: isColor),
                        columnLayourt(
                            firstText: Ance['name'],
                            secondText: "Prénom",
                            alignment: CrossAxisAlignment.end,
                            isColor: isColor),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
