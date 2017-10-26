<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:721b2359-b6cc-4e6c-84ec-be1ab7953517(Sandbox.songbox)">
  <persistence version="9" />
  <languages>
    <use id="881e0de4-3f21-414f-aa05-7d21b545c551" name="FlipScript" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="881e0de4-3f21-414f-aa05-7d21b545c551" name="FlipScript">
      <concept id="9210699007504750442" name="FlipScript.structure.Phrase" flags="ng" index="kzYUo" />
      <concept id="9210699007504750443" name="FlipScript.structure.Timing" flags="ng" index="kzYUp" />
      <concept id="9210699007504750441" name="FlipScript.structure.Song" flags="ng" index="kzYUr">
        <property id="9210699007504750569" name="key" index="kzYSr" />
        <property id="9210699007504750554" name="id" index="kzYSC" />
        <property id="9210699007504750556" name="title" index="kzYSI" />
        <child id="9210699007504750582" name="phrases" index="kzYS4" />
        <child id="9210699007504750580" name="timing" index="kzYS6" />
      </concept>
    </language>
  </registry>
  <node concept="kzYUr" id="2kywAoIvpZk">
    <property role="kzYSr" value="G" />
    <property role="kzYSC" value="1234" />
    <property role="kzYSI" value="Going Down the Road Feeling Bad" />
    <node concept="kzYUp" id="2kywAoIvpZl" role="kzYS6" />
    <node concept="kzYUo" id="2kywAoIvpZm" role="kzYS4" />
  </node>
</model>

