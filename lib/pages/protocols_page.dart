import 'package:flutter/material.dart';
import 'package:medical_diagnosis_protocol_app/pages/protocol_types/protocol_type_selection.dart';
import '../models/tiles.dart';

class Protocols extends StatefulWidget {
  const Protocols({super.key});

  @override
  State<Protocols> createState() => _ProtocolsState();
}

class _ProtocolsState extends State<Protocols> {
  final List<Tile> _list = const [
    Tile(
      tileName: "Extraction",
      tileDescription: "Extraction of Nucleotides using Different kits",
      route: ProtocolTypeSelectionScreen(),
    ),
    Tile(
      tileName: "PCR",
      tileDescription: "Types of PCR Protocols depending on analysis",
      route: ProtocolTypeSelectionScreen(),
    ),
    Tile(
      tileName: "Sequencing",
      tileDescription: "Sequencing protocols for further verifications",
      route: ProtocolTypeSelectionScreen(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _list.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final protocol = _list[index];
        return Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text(protocol.tileName),
            subtitle: Text(protocol.tileDescription),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => protocol.route),
            ),
          ),
        );
      },
    );
  }
}
