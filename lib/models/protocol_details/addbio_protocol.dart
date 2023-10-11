class AddBioExtractionProtocol {
  String _title = "Add Bio Protocol";
  List<String> _protocol = [
    "1)	Prepare 200 µl of sample (plasma, serum, cell-free boy fluids, cell-culture supernatant virus-infected samples) into 1.5 ml tube Micro-centrifuge tube (Not provided).: in the case of virus infected feces and cell Line, transfer 20- 50 mg in 1.5 ml micro-centrifuge tube and dissolve it 250 µl of DW(Nuclease free) and vortex 10-15 sec and then centrifuge at 13,000 rpm for 30 sec. Use approximately 150 – 200 µl supernatant.",
    "2)	Add 350 µl of Lysis Buffer to the sample tube, and add 3.5 µl of β-mercaptoethanol (14.2M) and mix well by pulse-vortexing for 10 -15 sec.",
    "3)	Incubate at room temperature for 10 min and centrifuge at 3,000 rpm for 5 sec.",
    '4)	Ad 150 µl of isopropanol to lysate and mix well by pulse-vortexing for 15 sec.: After this step, briefly spin down to get the drops clinging under the lid.',
    "5)	Carefully transfer the lysate into the upper reservoir of the spin column with 2.0ml collection tube without wetting the rim.",
    "6)	Centrifuge at 13,000 rpm for 1 min.: Pour off the flow-through and assemble the spin column with 2.0 ml collection tube.",
    "7)	Add 500 µl of Washing 1 Buffer to the spin column with the collection tube and centrifuge at 13, 000 rpm for 1 min.: Pour the flow-through and assemble the spin column with 2.0 ml collection tube.",
    "8)	Add 500 µl Washing 2 Buffer to the spin column with the collection tube and centrifuge at 13, 000 rpm for 1 min.: Pour the flow-through and assemble the spin column with 2.0 ml collection tube.",
    "9)	Dry the spin column by additional centrifugation at 13,000 rpm for 1 min. to remove the residual ethanol in spin column.",
    "10)	Transfer the spin column to new micro-centrifuge tube (Not provided).",
    "11)	Add 50 - 150 µl Elution Buffer to the spin column with micro-centrifuge tube, and wait for at least 1 min.",
    "12)	Elute the Viral Nucleic Acid by centrifugation at 13,000 rpm for 1 min.: Purified RNA/DNA can be stored at -20°C for immediate use and stored at -70°C for long term storage.",
  ];

  String getTitle() {
    return _title;
  }

  List<String> getAddBioProtocol() {
    return _protocol;
  }
}
