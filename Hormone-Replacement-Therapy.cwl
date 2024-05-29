cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  hormone-replacement-therapy-10microgram---primary:
    run: hormone-replacement-therapy-10microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  continuous-hormone-replacement-therapy---primary:
    run: continuous-hormone-replacement-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-10microgram---primary/output
  hormone-replacement-therapy-estriol---primary:
    run: hormone-replacement-therapy-estriol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: continuous-hormone-replacement-therapy---primary/output
  hormone-replacement-therapy-tablet---primary:
    run: hormone-replacement-therapy-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-estriol---primary/output
  hormone-replacement-therapy-zumenon---primary:
    run: hormone-replacement-therapy-zumenon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-tablet---primary/output
  hormone-replacement-therapy-100mg---primary:
    run: hormone-replacement-therapy-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-zumenon---primary/output
  hormone-replacement-therapy-80mcg---primary:
    run: hormone-replacement-therapy-80mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-100mg---primary/output
  hormone-replacement-therapy-injection---primary:
    run: hormone-replacement-therapy-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-80mcg---primary/output
  hormone-replacement-therapy-hormonin---primary:
    run: hormone-replacement-therapy-hormonin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-injection---primary/output
  hormone-replacement-therapy-forte---primary:
    run: hormone-replacement-therapy-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-hormonin---primary/output
  hormone-replacement-therapy-estradiol---primary:
    run: hormone-replacement-therapy-estradiol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-forte---primary/output
  hormone-replacement-therapy-patches---primary:
    run: hormone-replacement-therapy-patches---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-estradiol---primary/output
  hormone-replacement-therapy-progynova---primary:
    run: hormone-replacement-therapy-progynova---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-patches---primary/output
  hormone-replacement-therapy-climesse---primary:
    run: hormone-replacement-therapy-climesse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-progynova---primary/output
  hormone-replacement-therapy-acetate---primary:
    run: hormone-replacement-therapy-acetate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-climesse---primary/output
  hormone-replacement-therapy-sequi---primary:
    run: hormone-replacement-therapy-sequi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-acetate---primary/output
  hormone-replacement-therapy-valerate---primary:
    run: hormone-replacement-therapy-valerate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-sequi---primary/output
  hormone-replacement-therapy-femostonconti---primary:
    run: hormone-replacement-therapy-femostonconti---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-valerate---primary/output
  hormone-replacement-therapy-trisequens---primary:
    run: hormone-replacement-therapy-trisequens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-femostonconti---primary/output
  hormone-replacement-therapy-implant---primary:
    run: hormone-replacement-therapy-implant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-trisequens---primary/output
  hormone-replacement-therapy-adgyn---primary:
    run: hormone-replacement-therapy-adgyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-implant---primary/output
  hormone-replacement-therapy-estraderm---primary:
    run: hormone-replacement-therapy-estraderm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-adgyn---primary/output
  hormone-replacement-therapy-elleste---primary:
    run: hormone-replacement-therapy-elleste---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-estraderm---primary/output
  hormone-replacement-therapy-climagest---primary:
    run: hormone-replacement-therapy-climagest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-elleste---primary/output
  hormone-replacement-therapy-375microgram---primary:
    run: hormone-replacement-therapy-375microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-climagest---primary/output
  hormone-replacement-therapy-pumppack---primary:
    run: hormone-replacement-therapy-pumppack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-375microgram---primary/output
  hormone-replacement-therapy-100mcg---primary:
    run: hormone-replacement-therapy-100mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-pumppack---primary/output
  hormone-replacement-therapy-24hour---primary:
    run: hormone-replacement-therapy-24hour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-100mcg---primary/output
  hormone-replacement-therapy-femtab---primary:
    run: hormone-replacement-therapy-femtab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-24hour---primary/output
  hormone-replacement-therapy-dydrogesterone---primary:
    run: hormone-replacement-therapy-dydrogesterone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-femtab---primary/output
  hormone-replacement-therapy-menorest---primary:
    run: hormone-replacement-therapy-menorest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-dydrogesterone---primary/output
  hormone-replacement-therapy-janssen---primary:
    run: hormone-replacement-therapy-janssen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-menorest---primary/output
  hormone-replacement-therapy-climaval---primary:
    run: hormone-replacement-therapy-climaval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-janssen---primary/output
  generic-hormone-replacement-therapy---primary:
    run: generic-hormone-replacement-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-climaval---primary/output
  hormone-replacement-therapy-25mcg---primary:
    run: hormone-replacement-therapy-25mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: generic-hormone-replacement-therapy---primary/output
  hormone-replacement-therapy-oestrogel---primary:
    run: hormone-replacement-therapy-oestrogel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-25mcg---primary/output
  hormone-replacement-therapy-50mcg---primary:
    run: hormone-replacement-therapy-50mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-oestrogel---primary/output
  hormone-replacement-therapy-fematrix---primary:
    run: hormone-replacement-therapy-fematrix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-50mcg---primary/output
  hormone-replacement-therapy-24hrs---primary:
    run: hormone-replacement-therapy-24hrs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-fematrix---primary/output
  hormone-replacement-therapy-schering---primary:
    run: hormone-replacement-therapy-schering---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-24hrs---primary/output
  hormone-replacement-therapy-organon---primary:
    run: hormone-replacement-therapy-organon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-schering---primary/output
  hormone-replacement-therapy-norethisterone---primary:
    run: hormone-replacement-therapy-norethisterone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-organon---primary/output
  hormone-replacement-therapy-resource---primary:
    run: hormone-replacement-therapy-resource---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-norethisterone---primary/output
  hormone-replacement-therapy-bayer---primary:
    run: hormone-replacement-therapy-bayer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-resource---primary/output
  hormone-replacement-therapy-nuvelle---primary:
    run: hormone-replacement-therapy-nuvelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-bayer---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: hormone-replacement-therapy-nuvelle---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
