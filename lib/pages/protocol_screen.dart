import 'package:flutter/material.dart';
import 'package:medical_diagnosis_protocol_app/models/protocol_brain.dart';

ProtocolsBrain _protocolsBrain = ProtocolsBrain();

class ProtocolScreen extends StatelessWidget {
  final String title;
  final dynamic protocol;

  ProtocolScreen({
    super.key,
    required this.title,
    required this.protocol,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ProtocolContent(
        selectedProtocol: protocol,
      ),
    );
  }
}

class ProtocolContent extends StatefulWidget {
  final dynamic selectedProtocol;
  ProtocolContent({super.key, required this.selectedProtocol});

  @override
  State<ProtocolContent> createState() => _ProtocolContentState();
}

class _ProtocolContentState extends State<ProtocolContent> {
  // final AddBioExtractionProtocol addBioExtractionProtocol =
  //     AddBioExtractionProtocol();
  @override
  Widget build(BuildContext context) {
    var protocolSteps = _protocolsBrain.getProtocolStep();
    return Center(
      child: ListView.builder(
        itemCount: protocolSteps.length,
        itemBuilder: (context, index) {
          var protocol = protocolSteps;
          return Column(
            children: [
              Text("Heading at [index]"),
              // the List tile should have another list ViewBuilder
              ListView.builder(
                // the item count gets the length of the sub array
                itemCount: 3,
                itemBuilder: (context, index) {
                  // _protocolsBrain.generateProtocolSteps(widget.selectedProtocol);
                  return ListTile(
                    title: Text(protocol[index].number.toString()),
                    subtitle: Text(protocol[index].description),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
