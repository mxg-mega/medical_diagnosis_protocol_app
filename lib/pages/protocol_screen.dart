import 'package:flutter/material.dart';
import 'package:medical_diagnosis_protocol_app/models/protocol_brain.dart';

ProtocolsBrain _protocolsBrain = ProtocolsBrain();

class ProtocolScreen extends StatelessWidget {
  const ProtocolScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Protocol')),
      body: ProtocolContent(),
    );
  }
}

class ProtocolContent extends StatefulWidget {
  const ProtocolContent({
    super.key,
  });

  @override
  State<ProtocolContent> createState() => _ProtocolContentState();
}

class _ProtocolContentState extends State<ProtocolContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: _protocolsBrain.getProtocolStep().length,
        itemBuilder: (context, index) {
          var protocol = _protocolsBrain.getProtocolStep();
          return ListTile(
            title: Text(protocol[index].number.toString()),
            subtitle: Text(protocol[index].description),
          );
        },
      ),
    );
  }
}
