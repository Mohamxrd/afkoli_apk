import 'package:afkoli_apk/screen/user/ance_view.dart';
import 'package:afkoli_apk/utils/app_info_list.dart';
import 'package:afkoli_apk/utils/app_style.dart';
import 'package:afkoli_apk/widget/ance_tabs.dart';
import 'package:afkoli_apk/widget/double_text_widget.dart';
import 'package:afkoli_apk/widget/icon_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> searchResults = [];

  void search(String query) {
    setState(() {
      searchResults = getSearchResults(query);
    });
  }

  List<Map<String, dynamic>> getSearchResults(String query) {
    // Retourner la liste filtrée en fonction du texte de recherche
    return anceList.where((element) {
      String fromName = element['from']['name'].toLowerCase();
      String toName = element['to']['name'].toLowerCase();
      return fromName.contains(query.toLowerCase()) ||
          toName.contains(query.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(50),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'assets/images/logo2.webp',
              fit: BoxFit.cover,
            ),
          ),
          Gap(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              children: [
                const Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  color: Color(0xFFBFC205),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextFormField(
                    controller: searchController,
                    onChanged: (query) => search(query),
                    decoration: InputDecoration(
                      hintText: "Recherche d'annonces",
                      hintStyle: Styles.headLineStyle4,
                      border: InputBorder.none,
                    ),
                    style: Styles.headLineStyle4,
                  ),
                ),
              ],
            ),
          ),
          Gap(25),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Depart"),
          Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrivage"),
          Gap(40),
          const AppDoubleTextWidget(
              bigText: "Recherché recement", smallText: "Voir plus"),
          Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Cote d'ivoire"),
          Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Mali"),
          Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Ghana"),
          Gap(25),
          Column(
            children: searchResults.map((result) {
              return Ance_view(Ance: result, isColor: true);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
