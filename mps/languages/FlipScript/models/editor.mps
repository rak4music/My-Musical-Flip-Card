<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b19ff25e-324f-4ba0-88bd-00f0377d805e(FlipScript.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="4nnt" ref="r:106a280c-15ce-457e-bcc9-58c07260aa7b(FlipScript.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
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
  <node concept="24kQdi" id="7ZiYv9FnkBH">
    <ref role="1XX52x" to="4nnt:7ZiYv9FnhtE" resolve="Phrase" />
    <node concept="3EZMnI" id="7ZiYv9FnkBJ" role="2wV5jI">
      <node concept="l2Vlx" id="7ZiYv9FnkBK" role="2iSdaV" />
      <node concept="3F0ifn" id="7ZiYv9FnkBN" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="7ZiYv9FnkBO" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="7ZiYv9FnkBP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7ZiYv9FnkBQ" role="3EZMnx">
        <node concept="l2Vlx" id="7ZiYv9FnkBR" role="2iSdaV" />
        <node concept="lj46D" id="7ZiYv9FnkBS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkBY" role="3EZMnx">
          <property role="3F0ifm" value="bars" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkBZ" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9FnkC0" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ZiYv9FnkC1" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhtI" resolve="bars" />
          <node concept="ljvvj" id="7ZiYv9FnkC2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkC3" role="3EZMnx">
          <property role="3F0ifm" value="note" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkC4" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9FnkC5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ZiYv9FnkC6" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhuC" resolve="note" />
          <node concept="ljvvj" id="7ZiYv9FnkC7" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkC8" role="3EZMnx">
          <property role="3F0ifm" value="repeat" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkC9" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9FnkCa" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ZiYv9FnkCb" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhuG" resolve="repeat" />
          <node concept="ljvvj" id="7ZiYv9FnkCc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkFl" role="3EZMnx">
          <property role="3F0ifm" value="lyric" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9FnkFT" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="7ZiYv9FnkGv" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhuL" resolve="lyric" />
        </node>
      </node>
      <node concept="3F0ifn" id="7ZiYv9FnkCd" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="7ZiYv9FnkCe" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7ZiYv9Fnj4q">
    <ref role="1XX52x" to="4nnt:7ZiYv9FnhtD" resolve="Song" />
    <node concept="3EZMnI" id="7ZiYv9Fnj4s" role="2wV5jI">
      <node concept="l2Vlx" id="7ZiYv9Fnj4t" role="2iSdaV" />
      <node concept="3F0ifn" id="7ZiYv9Fnj4w" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="7ZiYv9Fnj4x" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="7ZiYv9Fnj4y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7ZiYv9Fnj4z" role="3EZMnx">
        <node concept="l2Vlx" id="7ZiYv9Fnj4$" role="2iSdaV" />
        <node concept="lj46D" id="7ZiYv9Fnj4_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4F" role="3EZMnx">
          <property role="3F0ifm" value="title" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4G" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9Fnj4H" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ZiYv9Fnj4I" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9Fnhvs" resolve="title" />
          <node concept="ljvvj" id="7ZiYv9Fnj4J" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4K" role="3EZMnx">
          <property role="3F0ifm" value="artist" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4L" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9Fnj4M" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ZiYv9Fnj4N" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9Fnhv_" resolve="artist" />
          <node concept="ljvvj" id="7ZiYv9Fnj4O" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4P" role="3EZMnx">
          <property role="3F0ifm" value="key" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4Q" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9Fnj4R" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ZiYv9Fnj4S" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhvD" resolve="key" />
          <node concept="ljvvj" id="7ZiYv9Fnj4T" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4U" role="3EZMnx">
          <property role="3F0ifm" value="duration" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4V" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9Fnj4W" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ZiYv9Fnj4X" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhvI" resolve="duration" />
          <node concept="ljvvj" id="7ZiYv9Fnj4Y" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj4Z" role="3EZMnx">
          <node concept="ljvvj" id="7ZiYv9Fnj50" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj51" role="3EZMnx">
          <property role="3F0ifm" value="timing" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj52" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9Fnj53" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7ZiYv9Fnj54" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="7ZiYv9Fnj55" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhvO" resolve="timing" />
          <node concept="lj46D" id="7ZiYv9Fnj56" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7ZiYv9Fnj57" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj58" role="3EZMnx">
          <node concept="ljvvj" id="7ZiYv9Fnj59" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj5a" role="3EZMnx">
          <property role="3F0ifm" value="phrases" />
        </node>
        <node concept="3F0ifn" id="7ZiYv9Fnj5b" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="7ZiYv9Fnj5c" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7ZiYv9Fnj5d" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="7ZiYv9Fnj5e" role="3EZMnx">
          <ref role="1NtTu8" to="4nnt:7ZiYv9FnhvQ" resolve="phrases" />
          <node concept="l2Vlx" id="7ZiYv9Fnj5f" role="2czzBx" />
          <node concept="pj6Ft" id="7ZiYv9Fnj5g" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="7ZiYv9Fnj5h" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7ZiYv9Fnj5i" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7ZiYv9Fnj5j" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="7ZiYv9Fnj5k" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7ZiYv9FnjQ3">
    <ref role="1XX52x" to="4nnt:7ZiYv9FnhtF" resolve="Timing" />
    <node concept="3EZMnI" id="7ZiYv9FnjQ9" role="2wV5jI">
      <node concept="3F0A7n" id="7ZiYv9FnjQg" role="3EZMnx">
        <ref role="1NtTu8" to="4nnt:7ZiYv9Fnhvj" resolve="upper" />
      </node>
      <node concept="3F0ifn" id="7ZiYv9FnjQm" role="3EZMnx">
        <property role="3F0ifm" value="/" />
      </node>
      <node concept="3F0A7n" id="7ZiYv9FnjQu" role="3EZMnx">
        <ref role="1NtTu8" to="4nnt:7ZiYv9Fnhvn" resolve="lower" />
      </node>
      <node concept="l2Vlx" id="7ZiYv9FnjQc" role="2iSdaV" />
    </node>
  </node>
</model>

