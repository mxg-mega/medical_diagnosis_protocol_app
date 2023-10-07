import 'package:flutter/material.dart';
import 'package:medical_diagnosis_protocol_app/pages/protocol_screen.dart';

import '../../models/tiles.dart';

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

class _ExtractionProtocolsState extends State<ProtocolType> {
  String selectedExtractionType = '';
  String selectedKit = '';

  final List<String> extractionTypes = [
    "DNA Extraction",
    "RNA Extraction",
    "PCR Extraction"
  ];
  final List<String> kit = ["Bioneer kit", "AddBio kit"];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: extractionTypes.length,
      itemBuilder: (context, index) {
        final extractionType = extractionTypes[index];
        return Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: DropdownButton<String>(
            hint: Text(
              extractionTypes[index],
              style: TextStyle(color: Colors.black),
            ),
            items: kit
                .map((kit) => DropdownMenuItem(value: kit, child: Text(kit)))
                .toList(),
            onChanged: (value) {
              if (value == kit[0]) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProtocolScreen(),));
              }
              setState(() {
                selectedExtractionType = extractionType;
                selectedKit = value!;
              });
            },
            padding: EdgeInsets.all(8.0),
            isExpanded: true,
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(10),
            underline: Container(),
          ),
        );
      },
    );
  }
}
