import 'package:afkoli_apk/utils/app_info_list.dart';
import 'package:afkoli_apk/utils/app_style.dart';
import 'package:date_input_field/date_input_field.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class publishScreen extends StatefulWidget {
  const publishScreen({super.key});

  @override
  State<publishScreen> createState() => _publishScreenState();
}

class _publishScreenState extends State<publishScreen> {
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController departController = TextEditingController();
  final TextEditingController codedepController = TextEditingController();
  final TextEditingController arriveeController = TextEditingController();
  final TextEditingController codeavController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController heureDepartController = TextEditingController();
  final TextEditingController prixParKgController = TextEditingController();
  final TextEditingController kgDisponiblesController = TextEditingController();

  void publishAnnonce() {
    // Récupérer les valeurs des champs du formulaire
    String prenom = prenomController.text;
    String codedep = codedepController.text;
    String depart = departController.text;
    String arrivee = arriveeController.text;
    String codeav = codeavController.text;
    String date = dateController.text;
    String heureDepart = heureDepartController.text;
    String prixParKg = prixParKgController.text;
    String kgDisponibles = kgDisponiblesController.text;

    // Créer une nouvelle annonce
    Map<String, dynamic> nouvelleAnnonce = {
      'from': {'code': codedep, 'name': depart},
      'to': {
        'code': codeav,
        'name': arrivee
      }, // Remplacez "XXX" par le code de la destination
      'flying_time':
          heureDepart, // Ajoutez votre logique pour calculer le temps de vol
      'date': date,
      'departure_time': prixParKg,
      'name': prenom, // Ajoutez votre logique pour récupérer le nom
    };

    // Ajouter la nouvelle annonce à la liste anceList
    anceList.add(nouvelleAnnonce);

    // Afficher un message de succès ou effectuer d'autres actions nécessaires
    print('Annonce publiée avec succès.');

    // Vous pouvez également vider les champs du formulaire si nécessaire
    prenomController.clear();
    departController.clear();
    codedepController.clear();
    arriveeController.clear();
    codeavController.clear();
    dateController.clear();
    heureDepartController.clear();
    prixParKgController.clear();
    kgDisponiblesController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        title: Text('Publier une annonce'),
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.angleLeft,
            size: 20,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Gap(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: prenomController,
                decoration: InputDecoration(
                  hintText: "Prenom",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: departController,
                decoration: InputDecoration(
                  hintText: "Lieu de depart",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: codedepController,
                decoration: InputDecoration(
                  hintText: "Code pays depart",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: arriveeController,
                decoration: InputDecoration(
                  hintText: "Lieu d'arrivé",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: codeavController,
                decoration: InputDecoration(
                  hintText: "Code pays d'arrivé",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: DateInputFormField(
              controller: dateController,
              inputDecoration: InputDecoration(
                hintText: "Date de départ",
                hintStyle: Styles.headLineStyle4,
                border: InputBorder.none,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: heureDepartController,
                decoration: InputDecoration(
                  hintText: "Heur de depart",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: prixParKgController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Prix par Kg",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Expanded(
              child: TextFormField(
                controller: kgDisponiblesController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Nombre de Kg disponible",
                  hintStyle: Styles.headLineStyle4,
                  border: InputBorder.none,
                ),
                style: Styles.headLineStyle4,
              ),
            ),
          ),
          Gap(25),
          Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFFBFC205),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: publishAnnonce,
              child: Text(
                "Publier",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
