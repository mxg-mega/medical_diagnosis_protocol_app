import 'package:flutter/material.dart';
import 'package:medical_diagnosis_protocol_app/models/protocol_details/addbio_protocol.dart';
import 'package:medical_diagnosis_protocol_app/models/protocol_details/bioneer_dna_extraction.dart';
import 'package:medical_diagnosis_protocol_app/pages/protocol_screen.dart';

class ProtocolTypeSelectionScreen extends StatelessWidget {
  const ProtocolTypeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Protocol Type Selection"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProtocolType(),
      )),
    );
  }
}

class ProtocolType extends StatefulWidget {
  const ProtocolType({super.key});

  @override
  State<ProtocolType> createState() => _ExtractionProtocolsState();
}

final addBio = AddBioExtractionProtocol();
final bioneerDNA = BioneerDnaProtocol();

class _ExtractionProtocolsState extends State<ProtocolType> {
  // String selectedExtractionType = '';
  // String selectedKit = '';

  List<ExpandedTile> extractionTypes = [
    ExpandedTile(
      tileTitle: "DNA Extraction",
      tileItems: [
        Kit(
          kitProtocolSections: [],
          kitTitle: "Bioneer",
          kitRoute: ProtocolScreen(
            title: bioneerDNA.getTitle(),
            protocol: addBio.getAddBioProtocol(),
          ),
        ),
        Kit(
          kitProtocolSections: [],
          kitTitle: "Add bio",
          kitRoute: ProtocolScreen(
            title: bioneerDNA.getTitle(),
            protocol: addBio.getAddBioProtocol(),
          ),
        ),
        Kit(
          kitProtocolSections: [],
          kitTitle: "Zymo",
          kitRoute: ProtocolScreen(
            title: bioneerDNA.getTitle(),
            protocol: addBio.getAddBioProtocol(),
          ),
        ),
      ],
    ),
    ExpandedTile(
      tileTitle: "RNA Extraction",
      tileItems: [
        Kit(
          kitProtocolSections: [],
          kitTitle: "Bioneer",
          kitRoute: ProtocolScreen(
            title: bioneerDNA.getTitle(),
            protocol: addBio.getAddBioProtocol(),
          ),
        ),
        Kit(
          kitProtocolSections: [],
          kitTitle: "Add Bio",
          kitRoute: ProtocolScreen(
            title: addBio.getTitle(),
            protocol: addBio.getAddBioProtocol(),
          ),
        ),
        Kit(
          kitProtocolSections: [],
          kitTitle: "Zymo",
          kitRoute: ProtocolScreen(
            title: bioneerDNA.getTitle(),
            protocol: bioneerDNA.getBioneerDnaProtocol(),
          ),
        ),
      ],
    ),
    ExpandedTile(
      tileTitle: "Viral DNA/RNA Extraction",
      tileItems: [
        Kit(
          kitProtocolSections: [],
          kitTitle: "Bioneer",
          kitRoute: ProtocolScreen(
            title: bioneerDNA.getTitle(),
            protocol: addBio.getAddBioProtocol(),
          ),
        ),
      ],
    ),
  ];

  // final List<String> extractionTypes = [
  //   "DNA Extraction",
  //   "RNA Extraction",
  //   "PCR Extraction"
  // ];
  // final List<String> kit = ["Bioneer kit", "AddBio kit"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: extractionTypes.length,
      itemBuilder: (context, index) {
        List<ListTile> kits = [];
        for (int i = 0; i < extractionTypes[index].tileItems.length; i++) {
          kits.add(ListTile(
            title: Text(extractionTypes[index].tileItems[i].kitTitle),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          extractionTypes[index].tileItems[i].kitRoute));
            },
          ));
        }
        return ExpansionTile(
          title: Text(extractionTypes[index].tileTitle),
          children: kits,
        );
      },
    );
  }
}

class ExpandedTile {
  String tileTitle;
  List<Kit> tileItems;
  ExpandedTile({required this.tileTitle, required this.tileItems});
}

class Kit {
  String kitTitle;
  var kitProtocolSections;
  Widget kitRoute;
  Kit({required this.kitTitle, required this.kitRoute, required this.kitProtocolSections,});
}
// ListView.separated(
//       separatorBuilder: (context, index) => const SizedBox(
//         height: 10,
//       ),
//       itemCount: extractionTypes.length,
//       itemBuilder: (context, index) {
//         final extractionType = extractionTypes[index];
//         return Container(
//           decoration: BoxDecoration(
//               color: Theme.of(context).primaryColor,
//               borderRadius: BorderRadius.circular(10)),
//           child: DropdownButton<String>(
//             hint: Text(
//               extractionTypes[index],
//               style: TextStyle(color: Colors.black),
//             ),
//             items: kit
//                 .map((kit) => DropdownMenuItem(value: kit, child: Text(kit)))
//                 .toList(),
//             onChanged: (value) {
//               if (value == kit[0]) {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ProtocolScreen(),
//                     ));
//               }
//               setState(() {
//                 selectedExtractionType = extractionType;
//                 selectedKit = value!;
//               });
//             },
//             padding: EdgeInsets.all(8.0),
//             isExpanded: true,
//             alignment: Alignment.center,
//             borderRadius: BorderRadius.circular(10),
//             underline: Container(),
//           ),
//         );
//       },
//     )