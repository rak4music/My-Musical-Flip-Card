<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:721b2359-b6cc-4e6c-84ec-be1ab7953517(Sandbox.songbox)">
  <persistence version="9" />
  <languages>
    <use id="1ada79f5-6ad2-4d26-96e6-0da8e7ec4ef2" name="FlipScipt" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="1ada79f5-6ad2-4d26-96e6-0da8e7ec4ef2" name="FlipScipt">
      <concept id="9210699007504750442" name="FlipScipt.structure.Phrase" flags="ng" index="kzYUo">
        <property id="9210699007504750513" name="lyric" index="kzYT3" />
        <property id="9210699007504750504" name="note" index="kzYTq" />
        <property id="9210699007504750508" name="repeat" index="kzYTu" />
        <property id="9210699007504750446" name="bars" index="kzYUs" />
      </concept>
      <concept id="9210699007504750443" name="FlipScipt.structure.Timing" flags="ng" index="kzYUp">
        <property id="9210699007504750547" name="upper" index="kzYSx" />
        <property id="9210699007504750551" name="lower" index="kzYS_" />
      </concept>
      <concept id="9210699007504750441" name="FlipScipt.structure.Song" flags="ng" index="kzYUr">
        <property id="9210699007504750565" name="artist" index="kzYSn" />
        <property id="9210699007504750569" name="key" index="kzYSr" />
        <property id="9210699007504750574" name="duration" index="kzYSs" />
        <property id="9210699007504750554" name="id" index="kzYSC" />
        <property id="9210699007504750556" name="title" index="kzYSI" />
        <child id="9210699007504750582" name="phrases" index="kzYS4" />
        <child id="9210699007504750580" name="timing" index="kzYS6" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="kzYUr" id="7ZiYv9FnhSq">
    <property role="kzYSI" value="Going Down The Road Feeling Bad" />
    <property role="TrG5h" value="F" />
    <property role="kzYSC" value="1" />
    <property role="kzYSn" value="Grateful Dead" />
    <property role="kzYSr" value="G" />
    <property role="kzYSs" value="500.00" />
    <node concept="kzYUo" id="7ZiYv9Fnl$F" role="kzYS4">
      <property role="kzYTq" value="G" />
      <property role="kzYUs" value="1.0" />
      <property role="kzYTu" value="1" />
      <property role="kzYT3" value="Going Down The" />
    </node>
    <node concept="kzYUo" id="7ZiYv9FnmJq" role="kzYS4">
      <property role="kzYUs" value="1.0" />
      <property role="kzYTq" value="C" />
      <property role="kzYTu" value="1" />
      <property role="kzYT3" value="Road Feeling Bad" />
    </node>
    <node concept="kzYUo" id="7ZiYv9FnmJS" role="kzYS4">
      <property role="kzYTq" value="G" />
      <property role="kzYUs" value="1.0" />
      <property role="kzYTu" value="1" />
      <property role="kzYT3" value="Going Down The" />
    </node>
    <node concept="kzYUo" id="7ZiYv9FnmJT" role="kzYS4">
      <property role="kzYUs" value="1.0" />
      <property role="kzYTq" value="C" />
      <property role="kzYTu" value="1" />
      <property role="kzYT3" value="Road Feeling Bad" />
    </node>
    <node concept="kzYUp" id="7ZiYv9FnhSr" role="kzYS6">
      <property role="kzYSx" value="4" />
      <property role="kzYS_" value="4" />
    </node>
  </node>
  <node concept="kzYUr" id="7ZiYv9FnkBh">
    <property role="kzYSC" value="2" />
    <property role="kzYSI" value="Bertha" />
    <property role="kzYSn" value="Grateful Dead" />
    <property role="kzYSr" value="G" />
    <property role="kzYSs" value="543.34" />
    <node concept="kzYUp" id="7ZiYv9FnkBi" role="kzYS6">
      <property role="kzYSx" value="4" />
      <property role="kzYS_" value="4" />
    </node>
    <node concept="kzYUo" id="7ZiYv9FnkBj" role="kzYS4" />
  </node>
</model>

