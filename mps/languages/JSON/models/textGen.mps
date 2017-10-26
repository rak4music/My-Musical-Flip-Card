<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:139d9e2c-50c3-4b9e-9b91-c8268c8f7a14(JSON.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="7vqe" ref="r:e597f69f-045e-4c09-9443-b6436e2d3cb3(JSON.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
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
  </registry>
  <node concept="WtQ9Q" id="17$EstUoN2e">
    <ref role="WuzLi" to="7vqe:17$EstUn4u3" resolve="JsonArray" />
    <node concept="11bSqf" id="17$EstUoN2f" role="11c4hB">
      <node concept="3clFbS" id="17$EstUoN2g" role="2VODD2">
        <node concept="lc7rE" id="17$EstUoN2$" role="3cqZAp">
          <node concept="la8eA" id="17$EstUoN2Y" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
          <node concept="l9S2W" id="17$EstUoXIs" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="17$EstUoYji" role="lbANJ">
              <node concept="117lpO" id="17$EstUoXJK" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1Fw7DlE4MAm" role="2OqNvi">
                <ref role="3TtcxE" to="7vqe:17$EstUn4uC" resolve="content" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="17$EstUoN3X" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUovOX">
    <ref role="WuzLi" to="7vqe:17$EstUn4u0" resolve="JsonDocument" />
    <node concept="11bSqf" id="17$EstUovPP" role="11c4hB">
      <node concept="3clFbS" id="17$EstUovPQ" role="2VODD2">
        <node concept="lc7rE" id="17$EstUow6g" role="3cqZAp">
          <node concept="l9hG8" id="17$EstUoDtZ" role="lcghm">
            <node concept="2OqwBi" id="17$EstUoDD0" role="lb14g">
              <node concept="117lpO" id="17$EstUoDv1" role="2Oq$k0" />
              <node concept="3TrEf2" id="1Fw7DlE4MQo" role="2OqNvi">
                <ref role="3Tt5mk" to="7vqe:17$EstUnkfv" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUp2un">
    <ref role="WuzLi" to="7vqe:17$EstUn4ud" resolve="JsonFalse" />
    <node concept="11bSqf" id="17$EstUp2uo" role="11c4hB">
      <node concept="3clFbS" id="17$EstUp2up" role="2VODD2">
        <node concept="lc7rE" id="17$EstUp2Nj" role="3cqZAp">
          <node concept="la8eA" id="17$EstUp2NH" role="lcghm">
            <property role="lacIc" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUp2Rj">
    <ref role="WuzLi" to="7vqe:17$EstUn4u9" resolve="JsonNull" />
    <node concept="11bSqf" id="17$EstUp2Rk" role="11c4hB">
      <node concept="3clFbS" id="17$EstUp2Rl" role="2VODD2">
        <node concept="lc7rE" id="17$EstUp2RD" role="3cqZAp">
          <node concept="la8eA" id="17$EstUp2S3" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUp2Xj">
    <ref role="WuzLi" to="7vqe:17$EstUn4u4" resolve="JsonNumber" />
    <node concept="11bSqf" id="17$EstUp2Xk" role="11c4hB">
      <node concept="3clFbS" id="17$EstUp2Xl" role="2VODD2">
        <node concept="lc7rE" id="17$EstUp2Yx" role="3cqZAp">
          <node concept="l9hG8" id="17$EstUp2YV" role="lcghm">
            <node concept="2OqwBi" id="17$EstUp39J" role="lb14g">
              <node concept="117lpO" id="17$EstUp2ZR" role="2Oq$k0" />
              <node concept="3TrcHB" id="1Fw7DlE4N7_" role="2OqNvi">
                <ref role="3TsBF5" to="7vqe:17$EstUnC2m" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUp3yo">
    <ref role="WuzLi" to="7vqe:17$EstUn4u6" resolve="JsonObject" />
    <node concept="11bSqf" id="17$EstUp3yp" role="11c4hB">
      <node concept="3clFbS" id="17$EstUp3yq" role="2VODD2">
        <node concept="lc7rE" id="17$EstUp3yI" role="3cqZAp">
          <node concept="la8eA" id="17$EstUp3z8" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l9S2W" id="17$EstUp3_c" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="," />
            <node concept="2OqwBi" id="17$EstUp451" role="lbANJ">
              <node concept="117lpO" id="17$EstUp3I9" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1Fw7DlE4Nlj" role="2OqNvi">
                <ref role="3TtcxE" to="7vqe:17$EstUn4uQ" resolve="properties" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="17$EstUp3$7" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUp4iu">
    <ref role="WuzLi" to="7vqe:17$EstUn4u7" resolve="JsonProperty" />
    <node concept="11bSqf" id="17$EstUp4iv" role="11c4hB">
      <node concept="3clFbS" id="17$EstUp4iw" role="2VODD2">
        <node concept="lc7rE" id="17$EstUp4iO" role="3cqZAp">
          <node concept="la8eA" id="17$EstUp4je" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
          <node concept="l9hG8" id="17$EstUp4li" role="lcghm">
            <node concept="2OqwBi" id="17$EstUp4wj" role="lb14g">
              <node concept="117lpO" id="17$EstUp4mk" role="2Oq$k0" />
              <node concept="3TrcHB" id="1Fw7DlE4NJW" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="17$EstUp4kd" role="lcghm">
            <property role="lacIc" value="&quot;:" />
          </node>
          <node concept="l9hG8" id="17$EstUp5vb" role="lcghm">
            <node concept="2OqwBi" id="17$EstUp5GF" role="lb14g">
              <node concept="117lpO" id="17$EstUp5yG" role="2Oq$k0" />
              <node concept="3TrEf2" id="1Fw7DlE4N$$" role="2OqNvi">
                <ref role="3Tt5mk" to="7vqe:17$EstUn4uW" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUp5WP">
    <ref role="WuzLi" to="7vqe:17$EstUn4u5" resolve="JsonString" />
    <node concept="11bSqf" id="17$EstUp5WQ" role="11c4hB">
      <node concept="3clFbS" id="17$EstUp5WR" role="2VODD2">
        <node concept="lc7rE" id="17$EstUp5Xb" role="3cqZAp">
          <node concept="la8eA" id="17$EstUp5X_" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
          <node concept="l9hG8" id="17$EstUp5Y$" role="lcghm">
            <node concept="2OqwBi" id="17$EstUp69r" role="lb14g">
              <node concept="117lpO" id="17$EstUp5Zz" role="2Oq$k0" />
              <node concept="3TrcHB" id="1Fw7DlE4NYG" role="2OqNvi">
                <ref role="3TsBF5" to="7vqe:17$EstUn4uN" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="17$EstUp6qw" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="17$EstUp2PU">
    <ref role="WuzLi" to="7vqe:17$EstUn4ub" resolve="JsonTrue" />
    <node concept="11bSqf" id="17$EstUp2PV" role="11c4hB">
      <node concept="3clFbS" id="17$EstUp2PW" role="2VODD2">
        <node concept="lc7rE" id="17$EstUp2Qg" role="3cqZAp">
          <node concept="la8eA" id="17$EstUp2QE" role="lcghm">
            <property role="lacIc" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

