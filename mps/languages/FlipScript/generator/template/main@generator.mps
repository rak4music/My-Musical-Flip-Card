<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:33da9b79-e277-406e-95bd-e5e74f38885a(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="636b77e8-c36f-41d5-9a0b-bc786b06aa0a" name="JSON" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="4nnt" ref="r:106a280c-15ce-457e-bcc9-58c07260aa7b(FlipScript.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="636b77e8-c36f-41d5-9a0b-bc786b06aa0a" name="JSON">
      <concept id="1289342067551258503" name="JSON.structure.JsonProperty" flags="ng" index="1FIeT0">
        <child id="1289342067551258556" name="value" index="1FIeTV" />
      </concept>
      <concept id="1289342067551258502" name="JSON.structure.JsonObject" flags="ng" index="1FIeT1">
        <child id="1289342067551258550" name="properties" index="1FIeTL" />
      </concept>
      <concept id="1289342067551258501" name="JSON.structure.JsonString" flags="ng" index="1FIeT2">
        <property id="1289342067551258547" name="value" index="1FIeTO" />
      </concept>
      <concept id="1289342067551258500" name="JSON.structure.JsonNumber" flags="ng" index="1FIeT3">
        <property id="1289342067551404182" name="value" index="1FIy_h" />
      </concept>
      <concept id="1289342067551258499" name="JSON.structure.JsonArray" flags="ng" index="1FIeT4">
        <child id="1289342067551258536" name="content" index="1FIeTJ" />
      </concept>
      <concept id="1289342067551258496" name="JSON.structure.JsonDocument" flags="ng" index="1FIeT7">
        <child id="1289342067551323103" name="root" index="1FIuCo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="2kywAoIv63H">
    <property role="TrG5h" value="main" />
  </node>
  <node concept="1FIeT7" id="1Fw7DlE4O6U">
    <property role="TrG5h" value="map_Song" />
    <node concept="n94m4" id="1Fw7DlE4O6W" role="lGtFl">
      <ref role="n9lRv" to="4nnt:7ZiYv9FnhtD" resolve="Song" />
    </node>
    <node concept="1FIeT1" id="1Fw7DlE4QsM" role="1FIuCo">
      <node concept="1FIeT0" id="1Fw7DlE4QsP" role="1FIeTL">
        <property role="TrG5h" value="id" />
        <node concept="1FIeT3" id="1Fw7DlE4QsW" role="1FIeTV">
          <property role="1FIy_h" value="1" />
          <node concept="17Uvod" id="1Fw7DlE4QsY" role="lGtFl">
            <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258500/1289342067551404182" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="1Fw7DlE4QsZ" role="3zH0cK">
              <node concept="3clFbS" id="1Fw7DlE4Qt0" role="2VODD2">
                <node concept="3clFbF" id="1Fw7DlE4Q_t" role="3cqZAp">
                  <node concept="2YIFZM" id="1Fw7DlE4Sm6" role="3clFbG">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                    <node concept="2OqwBi" id="1Fw7DlE4SHT" role="37wK5m">
                      <node concept="30H73N" id="1Fw7DlE4Svu" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2kywAoIvdIE" role="2OqNvi">
                        <ref role="3TsBF5" to="4nnt:7ZiYv9Fnhvq" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1FIeT0" id="1Fw7DlE4Tjy" role="1FIeTL">
        <property role="TrG5h" value="title" />
        <node concept="1FIeT2" id="1Fw7DlE4Udl" role="1FIeTV">
          <property role="1FIeTO" value="title" />
          <node concept="17Uvod" id="1Fw7DlE4UoT" role="lGtFl">
            <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258501/1289342067551258547" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="1Fw7DlE4UoW" role="3zH0cK">
              <node concept="3clFbS" id="1Fw7DlE4UoX" role="2VODD2">
                <node concept="3clFbF" id="1Fw7DlE4Up3" role="3cqZAp">
                  <node concept="2OqwBi" id="1Fw7DlE4UoY" role="3clFbG">
                    <node concept="3TrcHB" id="2kywAoIveha" role="2OqNvi">
                      <ref role="3TsBF5" to="4nnt:7ZiYv9Fnhvs" resolve="title" />
                    </node>
                    <node concept="30H73N" id="1Fw7DlE4Up2" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1FIeT0" id="1Fw7DlE4TEt" role="1FIeTL">
        <property role="TrG5h" value="artist" />
        <node concept="1FIeT2" id="1Fw7DlE4Udo" role="1FIeTV">
          <property role="1FIeTO" value="artist" />
          <node concept="17Uvod" id="1Fw7DlE4UzT" role="lGtFl">
            <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258501/1289342067551258547" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="1Fw7DlE4UzW" role="3zH0cK">
              <node concept="3clFbS" id="1Fw7DlE4UzX" role="2VODD2">
                <node concept="3clFbF" id="1Fw7DlE4U$3" role="3cqZAp">
                  <node concept="2OqwBi" id="1Fw7DlE4UzY" role="3clFbG">
                    <node concept="3TrcHB" id="2kywAoIveFF" role="2OqNvi">
                      <ref role="3TsBF5" to="4nnt:7ZiYv9Fnhv_" resolve="artist" />
                    </node>
                    <node concept="30H73N" id="1Fw7DlE4U$2" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1FIeT0" id="1Fw7DlE4TQ2" role="1FIeTL">
        <property role="TrG5h" value="key" />
        <node concept="1FIeT2" id="1Fw7DlE4Udr" role="1FIeTV">
          <property role="1FIeTO" value="key" />
          <node concept="17Uvod" id="1Fw7DlE4UIT" role="lGtFl">
            <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258501/1289342067551258547" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="1Fw7DlE4UIW" role="3zH0cK">
              <node concept="3clFbS" id="1Fw7DlE4UIX" role="2VODD2">
                <node concept="3clFbF" id="1Fw7DlE4UJ3" role="3cqZAp">
                  <node concept="2OqwBi" id="1Fw7DlE4UIY" role="3clFbG">
                    <node concept="3TrcHB" id="2kywAoIvf69" role="2OqNvi">
                      <ref role="3TsBF5" to="4nnt:7ZiYv9FnhvD" resolve="key" />
                    </node>
                    <node concept="30H73N" id="1Fw7DlE4UJ2" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1FIeT0" id="1Fw7DlE4U1G" role="1FIeTL">
        <property role="TrG5h" value="duration" />
        <node concept="1FIeT3" id="1Fw7DlE4Udu" role="1FIeTV">
          <property role="1FIy_h" value="1.0" />
          <node concept="17Uvod" id="1Fw7DlE4UTT" role="lGtFl">
            <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258500/1289342067551404182" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="1Fw7DlE4UTU" role="3zH0cK">
              <node concept="3clFbS" id="1Fw7DlE4UTV" role="2VODD2">
                <node concept="3clFbF" id="1Fw7DlE4V2o" role="3cqZAp">
                  <node concept="2OqwBi" id="1Fw7DlE4WHN" role="3clFbG">
                    <node concept="30H73N" id="1Fw7DlE4Wwe" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2kywAoIvfof" role="2OqNvi">
                      <ref role="3TsBF5" to="4nnt:7ZiYv9FnhvI" resolve="duration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1FIeT0" id="1Fw7DlE4X8g" role="1FIeTL">
        <property role="TrG5h" value="timing" />
        <node concept="1FIeT1" id="1Fw7DlE4YFz" role="1FIeTV">
          <node concept="1FIeT0" id="1Fw7DlE4YFH" role="1FIeTL">
            <property role="TrG5h" value="upper" />
            <node concept="1FIeT3" id="1Fw7DlE4YLt" role="1FIeTV">
              <property role="1FIy_h" value="4" />
              <node concept="17Uvod" id="1Fw7DlE4YLz" role="lGtFl">
                <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258500/1289342067551404182" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="1Fw7DlE4YL$" role="3zH0cK">
                  <node concept="3clFbS" id="1Fw7DlE4YL_" role="2VODD2">
                    <node concept="3clFbF" id="1Fw7DlE4YU2" role="3cqZAp">
                      <node concept="2YIFZM" id="1Fw7DlE51Nw" role="3clFbG">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                        <node concept="2OqwBi" id="1Fw7DlE4ZFA" role="37wK5m">
                          <node concept="2OqwBi" id="1Fw7DlE4Z7B" role="2Oq$k0">
                            <node concept="30H73N" id="1Fw7DlE4YU1" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2kywAoIvgJv" role="2OqNvi">
                              <ref role="3Tt5mk" to="4nnt:7ZiYv9FnhvO" resolve="timing" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="2kywAoIvh7D" role="2OqNvi">
                            <ref role="3TsBF5" to="4nnt:7ZiYv9Fnhvj" resolve="upper" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1FIeT0" id="1Fw7DlE4YFL" role="1FIeTL">
            <property role="TrG5h" value="lower" />
            <node concept="1FIeT3" id="1Fw7DlE4YLw" role="1FIeTV">
              <property role="1FIy_h" value="4" />
              <node concept="17Uvod" id="1Fw7DlE52yg" role="lGtFl">
                <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258500/1289342067551404182" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="1Fw7DlE52yh" role="3zH0cK">
                  <node concept="3clFbS" id="1Fw7DlE52yi" role="2VODD2">
                    <node concept="3clFbF" id="1Fw7DlE52IG" role="3cqZAp">
                      <node concept="2YIFZM" id="1Fw7DlE52Vs" role="3clFbG">
                        <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="2OqwBi" id="1Fw7DlE53S3" role="37wK5m">
                          <node concept="2OqwBi" id="1Fw7DlE53iN" role="2Oq$k0">
                            <node concept="30H73N" id="1Fw7DlE534Z" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2kywAoIvfMM" role="2OqNvi">
                              <ref role="3Tt5mk" to="4nnt:7ZiYv9FnhvO" resolve="timing" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="2kywAoIvgba" role="2OqNvi">
                            <ref role="3TsBF5" to="4nnt:7ZiYv9Fnhvn" resolve="lower" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1FIeT0" id="1Fw7DlE4XmL" role="1FIeTL">
        <property role="TrG5h" value="phrases" />
        <node concept="1FIeT4" id="1Fw7DlE4X_2" role="1FIeTV">
          <node concept="1FIeT1" id="1Fw7DlE54Sq" role="1FIeTJ">
            <node concept="1WS0z7" id="1Fw7DlE54St" role="lGtFl">
              <node concept="3JmXsc" id="1Fw7DlE54Sw" role="3Jn$fo">
                <node concept="3clFbS" id="1Fw7DlE54Sx" role="2VODD2">
                  <node concept="3clFbF" id="1Fw7DlE54SB" role="3cqZAp">
                    <node concept="2OqwBi" id="1Fw7DlE54Sy" role="3clFbG">
                      <node concept="3Tsc0h" id="2kywAoIvhG1" role="2OqNvi">
                        <ref role="3TtcxE" to="4nnt:7ZiYv9FnhvQ" resolve="phrases" />
                      </node>
                      <node concept="30H73N" id="1Fw7DlE54SA" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FIeT0" id="1Fw7DlE55jR" role="1FIeTL">
              <property role="TrG5h" value="id" />
              <node concept="1FIeT3" id="1Fw7DlE55Nq" role="1FIeTV">
                <property role="1FIy_h" value="1" />
                <node concept="17Uvod" id="1Fw7DlE55U6" role="lGtFl">
                  <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258500/1289342067551404182" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="1Fw7DlE55U7" role="3zH0cK">
                    <node concept="3clFbS" id="1Fw7DlE55U8" role="2VODD2">
                      <node concept="3clFbF" id="1Fw7DlE562_" role="3cqZAp">
                        <node concept="2YIFZM" id="1Fw7DlE57M1" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="1Fw7DlE589n" role="37wK5m">
                            <node concept="30H73N" id="1Fw7DlE57VK" role="2Oq$k0" />
                            <node concept="3TrcHB" id="2kywAoIvn7I" role="2OqNvi">
                              <ref role="3TsBF5" to="4nnt:7ZiYv9FnhtG" resolve="id" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FIeT0" id="1Fw7DlE55rh" role="1FIeTL">
              <property role="TrG5h" value="note" />
              <node concept="1FIeT2" id="1Fw7DlE58Wb" role="1FIeTV">
                <property role="1FIeTO" value="A" />
                <node concept="17Uvod" id="1Fw7DlE59Mp" role="lGtFl">
                  <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258501/1289342067551258547" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="1Fw7DlE59Mq" role="3zH0cK">
                    <node concept="3clFbS" id="1Fw7DlE59Mr" role="2VODD2">
                      <node concept="3clFbF" id="1Fw7DlE59US" role="3cqZAp">
                        <node concept="2OqwBi" id="1Fw7DlE5a8g" role="3clFbG">
                          <node concept="30H73N" id="1Fw7DlE59UR" role="2Oq$k0" />
                          <node concept="3TrcHB" id="2kywAoIvnP4" role="2OqNvi">
                            <ref role="3TsBF5" to="4nnt:7ZiYv9FnhuC" resolve="note" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FIeT0" id="1Fw7DlE55yH" role="1FIeTL">
              <property role="TrG5h" value="bars" />
              <node concept="1FIeT3" id="1Fw7DlE592d" role="1FIeTV">
                <property role="1FIy_h" value="1.0" />
                <node concept="17Uvod" id="1Fw7DlE5b3A" role="lGtFl">
                  <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258500/1289342067551404182" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="1Fw7DlE5b3B" role="3zH0cK">
                    <node concept="3clFbS" id="1Fw7DlE5b3C" role="2VODD2">
                      <node concept="3clFbF" id="1Fw7DlE5be4" role="3cqZAp">
                        <node concept="2YIFZM" id="1Fw7DlE5bqP" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="1Fw7DlE5bMo" role="37wK5m">
                            <node concept="30H73N" id="1Fw7DlE5b$L" role="2Oq$k0" />
                            <node concept="3TrcHB" id="2kywAoIvol2" role="2OqNvi">
                              <ref role="3TsBF5" to="4nnt:7ZiYv9FnhtI" resolve="bars" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FIeT0" id="1Fw7DlE55yP" role="1FIeTL">
              <property role="TrG5h" value="repeat" />
              <node concept="1FIeT3" id="1Fw7DlE592g" role="1FIeTV">
                <property role="1FIy_h" value="1.0" />
                <node concept="17Uvod" id="1Fw7DlE5cAh" role="lGtFl">
                  <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258500/1289342067551404182" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="1Fw7DlE5cAi" role="3zH0cK">
                    <node concept="3clFbS" id="1Fw7DlE5cAj" role="2VODD2">
                      <node concept="3clFbF" id="1Fw7DlE5cKJ" role="3cqZAp">
                        <node concept="2YIFZM" id="1Fw7DlE5cXw" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(int):java.lang.String" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="1Fw7DlE5dlf" role="37wK5m">
                            <node concept="30H73N" id="1Fw7DlE5d7C" role="2Oq$k0" />
                            <node concept="3TrcHB" id="2kywAoIvoYM" role="2OqNvi">
                              <ref role="3TsBF5" to="4nnt:7ZiYv9FnhuG" resolve="repeat" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FIeT0" id="1Fw7DlE55_W" role="1FIeTL">
              <property role="TrG5h" value="lyric" />
              <node concept="1FIeT2" id="1Fw7DlE592j" role="1FIeTV">
                <property role="1FIeTO" value="Foo" />
                <node concept="17Uvod" id="1Fw7DlE5equ" role="lGtFl">
                  <property role="P4ACc" value="636b77e8-c36f-41d5-9a0b-bc786b06aa0a/1289342067551258501/1289342067551258547" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="1Fw7DlE5eqx" role="3zH0cK">
                    <node concept="3clFbS" id="1Fw7DlE5eqy" role="2VODD2">
                      <node concept="3clFbF" id="1Fw7DlE5eqC" role="3cqZAp">
                        <node concept="2OqwBi" id="1Fw7DlE5eqz" role="3clFbG">
                          <node concept="3TrcHB" id="2kywAoIvpB2" role="2OqNvi">
                            <ref role="3TsBF5" to="4nnt:7ZiYv9FnhuL" resolve="lyric" />
                          </node>
                          <node concept="30H73N" id="1Fw7DlE5eqB" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

