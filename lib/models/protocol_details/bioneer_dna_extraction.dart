class BioneerDnaProtocol {
  String _title = "Bioneer DNA Extraction";

  final List<String> _sectionI = [
    " 1) Completely dissolve one vial of Proteinase K in 1,250 µL of nuclease free water. For short term storage, dissolved Protinease K should be stored at 4°C, For Long term storage, it is recommended to aliquot the enzyme into separate tubes and store at -20°C.",
    " 2) Completely dissolve one vial of RNase A in 60µl of nuclease-free water. For short term storage, dissolved RNase A should be stored at 4°C . for long term storage it is recommended to to aliquot the enzyme into separate tubes and store at -20°C",
    " 3) Add Correct amount of absolute ethanol to WA 1 Buffer.",
  ];

  /// DNA Extraction from Whole Blood or buffy coat Sample
  final List<String> _sectionII = [
    " 1) Add 20µl of Protease K to 1.5ml or 2ml tube.",
    " 2) Apply 200µl of whole Blood or buffy coat to the tube containing Protease K.",
    " 3) Add 200µl GB Buffer to the sample and mix immediately by vortex mixer",
    " 3) Incubate at 60°C for 10 min.",
    " 4) Add 400µl of absolute ethanol and mix well by pippetting.",
    " 5) Carefully transfer the Lysate into the upper reservoir of the Binding column tube (fit in a collection tube) without wetting the rim.",
    " 6) Close the tube and Centrifuge at 8000 rpm for 10min.",
    " 7) Discard the solution from the collection tube and reuse the collection tube.",
    " 8) Add 500µl of WA 1 Buffer without wetting the rim, close the tube, and centrifuge at 8000 rpm for 1 min.",
    " 9) Discard the solution from the collection tube and reuse the collection tube.",
    " 1) Add 500µl of W2 Buffer without wetting the rim, close the tube, and centrifuge at 8000 rpm for 1 min.",
    " 11) Discard the solution from the collection tube and reuse the collection tube.",
    " 12) Centrifuge once more at 13,000 rpm for 1 min to completely remove ethanol, and check that there is no droplet clinging to the bottom of binding column tube.",
    " 13) Transfer the binding column tube to a new 1.5ml tube for elution, 50-200µl of EA Buffer onto binding column tube, and wait for at least 1 min at RT (15-25°C).",
    " 14) Centrifuge at 8,000 rpm for 1 min to elute.",
  ];

  /// DNA Extraction from Cultured Cell Sample
  final List<String> _sectionIII = [
    " 1) Centrifuge the cultured cells (10⁴-10⁶) for 5 min at 300 x g. Discard then supernatant carefully without disturbing the pellet.",
    " 2) Resuspend the pellet in 200µl for 1X PBS.",
    " 3) Add 20µl of Proteinase K.",
    " 4) Add 10µl of RNase A, mix thoroughly and incubate the tube for 2 min at room temperature.",
    " 5) Go to step 3 of \"DNA Extraction from Whole Blood and Buffy Coat\" and follow the instructions accordingly.",
  ];

  /// DNA Extraction from Animal Tissue Sample
  final List<String> _sectionIV = [
    " 1) Homogenize the sample (25-50 mg) with a mortar and pistol, place them in a clean 1.5 ml tube, and add 200µl of TL Buffer.",
    " 2) Add 20µl of Protienase K and 10µl of RNase A. mix by vortexing.",
    " 3) Incubate at 60°C for 1 hour, or until the tissue is completely lyased.",
    " 4) Add 200µl of GB Buffer, and mix by vortexing.",
    " 5) Go to step 5 of \"DNA Extraction from Whole Blood and Buffy Coat\" and continue the extraction process.",
  ];

  /// DNA Extraction from Gram-Negative Bacteria Sample
  final List<String> _sectionV = [
    " 1) Collect the bacterial cells - 1 x 10⁹ by centrifuging at 8,000 rpm for 5 min. discard the supernatant (media) by using a pipette.",
    " 2) Add 180µl of TL Buffer to the collected cell pellet and completely resuspend by vortexing or pipetting. transfer the cell suspension to 1.5 ml or 2 ml tube.",
    " 3) Add 20µl of Proteinase K and 10µl of RNase A. mix by vortexing.",
    " 4) Incubate at 60°C for 1 hour.",
    " 5) Add 200µl of GB Buffer, and immediately mix by vortex mixer.",
    " 6) Go to step 5 of \"DNA Extraction from Whole Blood and Buffy Coat\" and continue the extraction process.",
  ];

  /// DNA Extraction from Gram-Positive bacteria Sample
  final List<String> _sectionVI = [
    " 1) Collect the bacterial cells - 1 x 10⁹ by centrifuging at 8,000 rpm for 5 min. discard the supernatant (media) by using a pipette.",
    " 2) Add 180µl of Lyses Buffer for Gram-Positive (not provided) to the collected cell pellet and completely resuspend by vortexing or pipetting. transfer the cell suspension to 1.5 ml or 2 ml tube. (Note) Lyses Buffer for Gram-Positive Bacteria : 20 mM Tris-HCL (PH 8.0), 2 mM EDTA and 1.2% Triton© X-100.",
    " 3) Add 20µl of Lysozyme (100 mg/ml, not provided) and 10µl of RNase A and mix thoroughly by vortexing.",
    " 4) Incubate the tubes at 37°C for 30 min.",
    " 5) Add 20µl of Proteinase K.",
    " 6) Add 200 µl of GB Buffer and mix thoroughly by vortexing.",
    " 7) Incubate the tubes at 60°C for 30 min or until Bacterial cells are completely lysed.",
    " 8) Go to step 5 of \"DNA Extraction from Whole Blood and Buffy Cot\" and continue the extraction process.",
  ];
  final List<String> _section = [
    "Section 1",
    "Section 1",
    "Section 1",
    "Section 1",
    "Section 1",
    "Section 1",
  ];
  String getTitle() {
    return _title;
  }

  List<String> getSection() {
    return _section;
  }

  List<List<String>> getBioneerDnaProtocol() {
    var protocols = [
      _sectionI,
      _sectionII,
      _sectionIII,
      _sectionIV,
      _sectionV,
      _sectionVI
    ];
    return protocols;
  }
}
