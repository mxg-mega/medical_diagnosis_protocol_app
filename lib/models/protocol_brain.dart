import 'protocol_step.dart';

class ProtocolsBrain {
  final List<ProtocolStep> _protocolSteps = [];
  List<ProtocolStep> getProtocolStep() {
    return _protocolSteps;
  }

  List<String> sectionTitles = [];
  List<String> getSectionTitles() {
    return sectionTitles;
  }
  void generateProtocolSteps(List<String> steps) {
    for (int i = 0; i < steps.length; i++) {
      _protocolSteps.add(ProtocolStep(number: i + 1, description: steps[i]));
    }
  }
}
