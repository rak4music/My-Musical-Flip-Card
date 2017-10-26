<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:106a280c-15ce-457e-bcc9-58c07260aa7b(FlipScript.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Az7Fb" id="7ZiYv9FnVIf">
    <property role="TrG5h" value="Key" />
    <property role="FLfZY" value="^[ABCDEFGabcdefg]{1}[#b]?$" />
  </node>
  <node concept="Az7Fb" id="7ZiYv9Fnmzs">
    <property role="TrG5h" value="Note" />
    <property role="FLfZY" value="^[ABCDEFGabcdefg]{1}[#b]?(maj7|maj|min7|min|sus2)?$" />
  </node>
  <node concept="1TIwiD" id="7ZiYv9FnhtE">
    <property role="EcuMT" value="9210699007504750442" />
    <property role="TrG5h" value="Phrase" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7ZiYv9FnhtG" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750444" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9FnhtI" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750446" />
      <property role="TrG5h" value="bars" />
      <ref role="AX2Wp" to="tpee:gc$lTUB" resolve="_FPNumber_String" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9FnhuC" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750504" />
      <property role="TrG5h" value="note" />
      <ref role="AX2Wp" node="7ZiYv9Fnmzs" resolve="Note" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9FnhuG" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750508" />
      <property role="TrG5h" value="repeat" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9FnhuL" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750513" />
      <property role="TrG5h" value="lyric" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7ZiYv9FnhtD">
    <property role="EcuMT" value="9210699007504750441" />
    <property role="TrG5h" value="Song" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7ZiYv9Fnhvq" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750554" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9Fnhvs" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750556" />
      <property role="TrG5h" value="title" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9Fnhv_" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750565" />
      <property role="TrG5h" value="artist" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9FnhvD" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750569" />
      <property role="TrG5h" value="key" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9FnhvI" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750574" />
      <property role="TrG5h" value="duration" />
      <ref role="AX2Wp" to="tpee:gc$lTUB" resolve="_FPNumber_String" />
    </node>
    <node concept="1TJgyj" id="7ZiYv9FnhvO" role="1TKVEi">
      <property role="IQ2ns" value="9210699007504750580" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="timing" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7ZiYv9FnhtF" resolve="Timing" />
    </node>
    <node concept="1TJgyj" id="7ZiYv9FnhvQ" role="1TKVEi">
      <property role="IQ2ns" value="9210699007504750582" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="phrases" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="7ZiYv9FnhtE" resolve="Phrase" />
    </node>
    <node concept="PrWs8" id="7ZiYv9FnhSt" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="7ZiYv9FnhtF">
    <property role="EcuMT" value="9210699007504750443" />
    <property role="TrG5h" value="Timing" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7ZiYv9Fnhvj" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750547" />
      <property role="TrG5h" value="upper" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7ZiYv9Fnhvn" role="1TKVEl">
      <property role="IQ2nx" value="9210699007504750551" />
      <property role="TrG5h" value="lower" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
</model>

