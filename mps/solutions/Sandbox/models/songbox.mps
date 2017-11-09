<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:721b2359-b6cc-4e6c-84ec-be1ab7953517(Sandbox.songbox)">
  <persistence version="9" />
  <languages>
    <use id="881e0de4-3f21-414f-aa05-7d21b545c551" name="FlipScript" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="881e0de4-3f21-414f-aa05-7d21b545c551" name="FlipScript">
      <concept id="9210699007504750442" name="FlipScript.structure.Phrase" flags="ng" index="kzYUo">
        <property id="9210699007504750513" name="lyric" index="kzYT3" />
        <property id="9210699007504750504" name="note" index="kzYTq" />
        <property id="9210699007504750508" name="repeat" index="kzYTu" />
        <property id="9210699007504750446" name="bars" index="kzYUs" />
      </concept>
      <concept id="9210699007504750443" name="FlipScript.structure.Timing" flags="ng" index="kzYUp">
        <property id="9210699007504750547" name="upper" index="kzYSx" />
        <property id="9210699007504750551" name="lower" index="kzYS_" />
      </concept>
      <concept id="9210699007504750441" name="FlipScript.structure.Song" flags="ng" index="kzYUr">
        <property id="9210699007504750565" name="artist" index="kzYSn" />
        <property id="9210699007504750569" name="key" index="kzYSr" />
        <property id="9210699007504750574" name="duration" index="kzYSs" />
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
  <node concept="kzYUr" id="7F5eFuoNmHg">
    <property role="kzYSI" value="Fire on The Mountain" />
    <property role="kzYSn" value="Grateful Dead" />
    <property role="kzYSr" value="A" />
    <property role="kzYSs" value="3.50" />
    <node concept="kzYUo" id="7F5eFuoNmHj" role="kzYS4">
      <property role="kzYUs" value="4.0" />
      <property role="kzYTq" value="A#" />
      <property role="kzYTu" value="1" />
      <property role="kzYT3" value="Long distance runner what you" />
    </node>
    <node concept="kzYUp" id="7F5eFuoNmHh" role="kzYS6">
      <property role="kzYSx" value="4" />
      <property role="kzYS_" value="4" />
    </node>
  </node>
</model>

