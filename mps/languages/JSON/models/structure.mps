<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e597f69f-045e-4c09-9443-b6436e2d3cb3(JSON.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
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
  <node concept="1TIwiD" id="17$EstUn4u3">
    <property role="EcuMT" value="1289342067551258499" />
    <property role="TrG5h" value="JsonArray" />
    <property role="34LRSv" value="[" />
    <ref role="1TJDcQ" node="17$EstUn4u1" resolve="JsonElement" />
    <node concept="1TJgyj" id="17$EstUn4uC" role="1TKVEi">
      <property role="IQ2ns" value="1289342067551258536" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="17$EstUn4u1" resolve="JsonElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="17$EstUn4u8">
    <property role="EcuMT" value="1289342067551258504" />
    <property role="TrG5h" value="JsonBoolean" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="17$EstUn4u1" resolve="JsonElement" />
  </node>
  <node concept="1TIwiD" id="17$EstUn4u0">
    <property role="EcuMT" value="1289342067551258496" />
    <property role="TrG5h" value="JsonDocument" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="17$EstUn4ul" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="17$EstUnkfv" role="1TKVEi">
      <property role="IQ2ns" value="1289342067551323103" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="root" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="17$EstUn4u1" resolve="JsonElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="17$EstUn4u1">
    <property role="EcuMT" value="1289342067551258497" />
    <property role="TrG5h" value="JsonElement" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="17$EstUn4ud">
    <property role="EcuMT" value="1289342067551258509" />
    <property role="TrG5h" value="JsonFalse" />
    <property role="34LRSv" value="false" />
    <ref role="1TJDcQ" node="17$EstUn4u8" resolve="JsonBoolean" />
  </node>
  <node concept="1TIwiD" id="17$EstUn4u9">
    <property role="EcuMT" value="1289342067551258505" />
    <property role="TrG5h" value="JsonNull" />
    <property role="34LRSv" value="null" />
    <ref role="1TJDcQ" node="17$EstUn4u1" resolve="JsonElement" />
  </node>
  <node concept="1TIwiD" id="17$EstUn4u4">
    <property role="EcuMT" value="1289342067551258500" />
    <property role="TrG5h" value="JsonNumber" />
    <property role="34LRSv" value="#" />
    <ref role="1TJDcQ" node="17$EstUn4u1" resolve="JsonElement" />
    <node concept="1TJgyi" id="17$EstUnC2m" role="1TKVEl">
      <property role="IQ2nx" value="1289342067551404182" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="17$EstUnC2l" resolve="_NumberValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="17$EstUn4u6">
    <property role="EcuMT" value="1289342067551258502" />
    <property role="TrG5h" value="JsonObject" />
    <property role="34LRSv" value="{" />
    <ref role="1TJDcQ" node="17$EstUn4u1" resolve="JsonElement" />
    <node concept="1TJgyj" id="17$EstUn4uQ" role="1TKVEi">
      <property role="IQ2ns" value="1289342067551258550" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="17$EstUn4u7" resolve="JsonProperty" />
    </node>
  </node>
  <node concept="1TIwiD" id="17$EstUn4u7">
    <property role="EcuMT" value="1289342067551258503" />
    <property role="TrG5h" value="JsonProperty" />
    <property role="34LRSv" value="&quot;" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="17$EstUn4uW" role="1TKVEi">
      <property role="IQ2ns" value="1289342067551258556" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="17$EstUn4u1" resolve="JsonElement" />
    </node>
    <node concept="PrWs8" id="17$EstUn4uZ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="17$EstUn4u5">
    <property role="EcuMT" value="1289342067551258501" />
    <property role="TrG5h" value="JsonString" />
    <property role="34LRSv" value="&quot;" />
    <ref role="1TJDcQ" node="17$EstUn4u1" resolve="JsonElement" />
    <node concept="1TJgyi" id="17$EstUn4uN" role="1TKVEl">
      <property role="IQ2nx" value="1289342067551258547" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="17$EstUn4ub">
    <property role="EcuMT" value="1289342067551258507" />
    <property role="TrG5h" value="JsonTrue" />
    <property role="34LRSv" value="true" />
    <ref role="1TJDcQ" node="17$EstUn4u8" resolve="JsonBoolean" />
  </node>
  <node concept="Az7Fb" id="17$EstUnC2l">
    <property role="TrG5h" value="_NumberValue" />
    <property role="FLfZY" value="-?[0-9]+(\\.+[0-9]+)*" />
  </node>
</model>

