<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c6f9bfd4-85aa-4818-a081-a0063d6c0181(JSON.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="7vqe" ref="r:e597f69f-045e-4c09-9443-b6436e2d3cb3(JSON.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="17$EstUntey">
    <ref role="1XX52x" to="7vqe:17$EstUn4u3" resolve="JsonArray" />
    <node concept="3EZMnI" id="17$EstUnte$" role="2wV5jI">
      <node concept="l2Vlx" id="17$EstUnte_" role="2iSdaV" />
      <node concept="3F0ifn" id="17$EstUnteB" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="3mYdg7" id="17$EstUnteC" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="17$EstUnteD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="17$EstUnteE" role="3EZMnx">
        <node concept="l2Vlx" id="17$EstUnteF" role="2iSdaV" />
        <node concept="lj46D" id="17$EstUnteG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F2HdR" id="17$EstUnteL" role="3EZMnx">
          <ref role="1NtTu8" to="7vqe:17$EstUn4uC" resolve="content" />
          <node concept="l2Vlx" id="17$EstUnteM" role="2czzBx" />
          <node concept="pj6Ft" id="17$EstUnteN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="17$EstUnteO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="17$EstUnteP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="17$EstUnteQ" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="3mYdg7" id="17$EstUnteR" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUnmME">
    <ref role="1XX52x" to="7vqe:17$EstUn4u0" resolve="JsonDocument" />
    <node concept="3EZMnI" id="17$EstUnmNF" role="2wV5jI">
      <node concept="l2Vlx" id="17$EstUnmNG" role="2iSdaV" />
      <node concept="3F0A7n" id="17$EstUnmNI" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="17$EstUnmNJ" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="17$EstUnmNK" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="17$EstUnmNL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="17$EstUnmNM" role="3EZMnx">
        <node concept="l2Vlx" id="17$EstUnmNN" role="2iSdaV" />
        <node concept="lj46D" id="17$EstUnmNO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F1sOY" id="17$EstUnmNT" role="3EZMnx">
          <ref role="1NtTu8" to="7vqe:17$EstUnkfv" resolve="root" />
          <node concept="lj46D" id="17$EstUnmNU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="17$EstUnmNV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="17$EstUnmNW" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="17$EstUnmNX" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUnzqE">
    <ref role="1XX52x" to="7vqe:17$EstUn4ud" resolve="JsonFalse" />
    <node concept="3EZMnI" id="17$EstUnzr3" role="2wV5jI">
      <node concept="l2Vlx" id="17$EstUnzr4" role="2iSdaV" />
      <node concept="3F0ifn" id="17$EstUnzr5" role="3EZMnx">
        <property role="3F0ifm" value="false" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUn_BM">
    <ref role="1XX52x" to="7vqe:17$EstUn4u9" resolve="JsonNull" />
    <node concept="3EZMnI" id="17$EstUn_BO" role="2wV5jI">
      <node concept="l2Vlx" id="17$EstUn_BP" role="2iSdaV" />
      <node concept="3F0ifn" id="17$EstUn_BQ" role="3EZMnx">
        <property role="3F0ifm" value="null" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUnFZJ">
    <ref role="1XX52x" to="7vqe:17$EstUn4u4" resolve="JsonNumber" />
    <node concept="3F0A7n" id="17$EstUnFZV" role="2wV5jI">
      <ref role="1NtTu8" to="7vqe:17$EstUnC2m" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUnqJN">
    <ref role="1XX52x" to="7vqe:17$EstUn4u6" resolve="JsonObject" />
    <node concept="3EZMnI" id="17$EstUnqJP" role="2wV5jI">
      <node concept="l2Vlx" id="17$EstUnqJQ" role="2iSdaV" />
      <node concept="3F0ifn" id="17$EstUnqJS" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="17$EstUnqJT" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="17$EstUnqJU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="17$EstUnqJV" role="3EZMnx">
        <node concept="l2Vlx" id="17$EstUnqJW" role="2iSdaV" />
        <node concept="lj46D" id="17$EstUnqJX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F2HdR" id="17$EstUnqK2" role="3EZMnx">
          <ref role="1NtTu8" to="7vqe:17$EstUn4uQ" resolve="properties" />
          <node concept="l2Vlx" id="17$EstUnqK3" role="2czzBx" />
          <node concept="pj6Ft" id="17$EstUnqK4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="17$EstUnqK5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="17$EstUnqK6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="17$EstUnqK7" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="17$EstUnqK8" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUnruu">
    <ref role="1XX52x" to="7vqe:17$EstUn4u7" resolve="JsonProperty" />
    <node concept="3EZMnI" id="17$EstUnKKU" role="2wV5jI">
      <node concept="2iRfu4" id="17$EstUnKKV" role="2iSdaV" />
      <node concept="3F0A7n" id="17$EstUnKMT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="17$EstUnKLd" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="17$EstUnKMl" role="3EZMnx">
        <ref role="1NtTu8" to="7vqe:17$EstUn4uW" resolve="value" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUnymq">
    <ref role="1XX52x" to="7vqe:17$EstUn4u5" resolve="JsonString" />
    <node concept="3EZMnI" id="17$EstUnJvO" role="2wV5jI">
      <node concept="3F0ifn" id="17$EstUnJw1" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11LMrY" id="17$EstUo3n4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="17$EstUnJwd" role="3EZMnx">
        <ref role="1NtTu8" to="7vqe:17$EstUn4uN" resolve="value" />
      </node>
      <node concept="3F0ifn" id="17$EstUnJwv" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="17$EstUo3nm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="17$EstUnJvR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="17$EstUn$wh">
    <ref role="1XX52x" to="7vqe:17$EstUn4ub" resolve="JsonTrue" />
    <node concept="3EZMnI" id="17$EstUn$wj" role="2wV5jI">
      <node concept="l2Vlx" id="17$EstUn$wk" role="2iSdaV" />
      <node concept="3F0ifn" id="17$EstUn$wl" role="3EZMnx">
        <property role="3F0ifm" value="true" />
      </node>
    </node>
  </node>
</model>

