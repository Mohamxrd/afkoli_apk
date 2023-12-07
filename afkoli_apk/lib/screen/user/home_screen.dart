import 'package:afkoli_apk/screen/user/ance_view.dart';
import 'package:afkoli_apk/screen/user/publish_screen.dart';
import 'package:afkoli_apk/utils/app_info_list.dart';
import 'package:afkoli_apk/utils/app_style.dart';
import 'package:afkoli_apk/widget/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bonjour Saliou",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "AFKOLI CI",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8), // Ajoutez le padding ici
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit
                              .cover, // Utilisez BoxFit.cover pour remplir le conteneur avec l'image
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                InkWell(
                  onTap: () {
                    // Naviguer vers la nouvelle page ici
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            publishScreen(), // Remplacez NouvellePage par le nom de votre nouvelle page
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Publier une annonce',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FluentSystemIcons.ic_fluent_add_circle_filled,
                          size: 35,
                          color: Color(0xFFBFC205),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(
                    bigText: "Dernière annonces", smallText: "Voir plus"),
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: anceList
                  .map((singleTicket) => Ance_view(
                        Ance: singleTicket,
                      ))
                  .toList(),
            ),
          ),
          const Gap(10),
          
        ],
      ),
    );
  }
}
