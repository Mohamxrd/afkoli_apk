import 'package:afkoli_apk/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                decoration: BoxDecoration(),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Container(
                          width: 120, // ou la taille souhaitée
                          height: 120,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/user1.avif'),
                              fit: BoxFit
                                  .cover, // ou un autre ajustement selon vos besoins
                            ),
                          ),
                        ),
                      ),
                      Gap(10),
                      Text(
                        "Nom&Prenom",
                        style: Styles.headLineStyle3,
                      ),
                      Gap(5),
                      Text(
                        "Matricule",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "1070",
                          style: Styles.headLineStyle1,
                        ),
                        Text(
                          "Abonné",
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "20",
                          style: Styles.headLineStyle1,
                        ),
                        Text(
                          "Abonement",
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "3",
                          style: Styles.headLineStyle1,
                        ),
                        Text(
                          "Post",
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color(0xFFF9D2E2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  FluentSystemIcons
                                      .ic_fluent_person_arrow_right_filled,
                                  color: Color(0xFFE23176),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Modifier Profils',
                                style: TextStyle(
                                    color: Color(0xFF3b3b3b),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color(0xFFBFE1EA),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  FluentSystemIcons.ic_fluent_upload_filled,
                                  color: Color(0xFF1089AF),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Mes postes',
                                style: TextStyle(
                                    color: Color(0xFF3b3b3b),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color(0xFFD6D5FD),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const FaIcon(
                                  FontAwesomeIcons.gear,
                                  color: Color(0xFF4A3BF0),
                                  size: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Reglage',
                                style: TextStyle(
                                    color: Color(0xFF3b3b3b),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFDDDC5),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const FaIcon(
                                  FontAwesomeIcons.chartColumn,
                                  color: Color(0xFFF35C10),
                                  size: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Statistique',
                                style: TextStyle(
                                    color: Color(0xFF3b3b3b),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const FaIcon(
                            FontAwesomeIcons.angleRight,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                width: 190,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xFFF9D2E2),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_power_filled,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Se deconnecter",
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
