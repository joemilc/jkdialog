unit uJKDialog;

interface

uses
  Forms,
  ExtCtrls,
  Graphics,
  Controls,
  SysUtils,
  uFormsDialogs;

type
  TTipoDialogo = (tdMensagem, tdAlerta, tdErro, tdSucesso);

function JKDialog(ATitulo, AMensagem: String; ATipo: TTipoDialogo): boolean;

const
  Padrao_Azul = $00DBB124;
  Padrao_Verm = $003232DE;
  Padrao_Amar = $0000B4FF;
  Padrao_Verd = $00467A03;

implementation

function JKDialog(ATitulo, AMensagem: String; ATipo: TTipoDialogo): boolean;
var s: String;
begin
  s := ExtractFilePath(ParamStr(0));
  Result := True;
  JKFormDialog := TJKFormDialog.Create(nil);
  JKFormDialog.pTopo.Caption := ATitulo;
  JKFormDialog.lTexto.Caption := AMensagem;
  case ATipo of

    tdMensagem:
    begin
      JKFormDialog.Cor := Padrao_Azul;
      JKFormDialog.imgDialog.Picture.LoadFromFile(s + 'information.png')
    end;

    tdAlerta:
    begin
      JKFormDialog.Cor := Padrao_Amar;
      JKFormDialog.imgDialog.Picture.LoadFromFile(s + 'alert.png')
    end;

    tdErro:
    begin
      //JKFormDialog.Cor := Padrao_Verm;
      imgDialog.Picture.LoadFromFile(s+'error.png')
    end;

    tdSucesso:
    begin
      //JKFormDialog.Cor := Padrao_Verd;
      imgDialog.Picture.LoadFromFile(s+'success.png')
    end;

  end;

  if (ATipo IN [tdAlerta, tdErro, tdSucesso]) then
  begin
    pNo.Visible := False;
    lYes.Caption := 'OK';
  end;

  Result := JKFormDialog.ShowModal = mrYes;

  FreeAndNil(JKFormDialog);
end;

procedure CriaForm;
begin
FormDialog::= TFormDialog
  Left := 0
  Top := 0
  BorderStyle := bsNone
  ClientHeight := 192
  ClientWidth := 440
  Color := clWhite
  Font.Charset := DEFAULT_CHARSET
  Font.Color := clWindowText
  Font.Height := -12
  Font.Name := 'Segoe UI'
  Font.Style := []
  Position := poScreenCenter
  OnShow := FormShow
  PixelsPerInch := 96
  TextHeight := 15
  object pTexto::= TPanel
    Left := 0
    Top := 49
    Width := 440
    Height := 94
    Align := alClient
    ParentColor := True
    TabOrder := 1
    object lTexto::= TLabel
      AlignWithMargins := True
      Left := 81
      Top := 4
      Width := 348
      Height := 86
      Margins.Left := 10
      Margins.Right := 10
      Align := alClient
      Caption :=
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi e' +
        'leifend aliquam dui eget consequat. In pellentesque laoreet just' +
        'o, id ullamcorper velit ultrices sed.'
      Font.Charset := DEFAULT_CHARSET
      Font.Color := 14397732
      Font.Height := -13
      Font.Name := 'Tahoma'
      Font.Style := []
      ParentFont := False
      Layout := tlCenter
      WordWrap := True
      ExplicitWidth := 341
      ExplicitHeight := 48
    end
    object imgDialog::= TImage
      Left := 1
      Top := 1
      Width := 70
      Height := 92
      Cursor := crHandPoint
      Align := alLeft
      Center := True
      Picture.Data := {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
        0006DE494441546843ED9A698C14451886A7670531E285463431C623269E201A
        85046FDDF50014052141891A63FC633CF883BB681054568D311EF1D6108F1883
        82F1E434468D8A7750C01F8A2646E3190539C463767C9EDEEEA167A667B66796
        C198F826EF7C33D5DD55EF57F575D557B59BFBAF2388EC56415B57C72E98C3E0
        81704F38188A8DF007B806AE2ACC59B2CEC2AD817E3B80E8919809F074A8F836
        580F05B80A2E86F373C59EF70ADDCB8A5E68064D3980E8ED3117C1ABE0A1F00F
        F8167C1D7E043FCFE58ADF1773F9F5B922DA82DC601ADA8BF283E00878223C1E
        5A8FCE4C65543EC6368C861CC84F6F0F82B660325FBBE17E50B1F7C3F908F815
        9B1974C2AE98F3E014388BE7DFB4BC5164768006F7C63C02CF822B60672ED7B3
        A830A7F9E1EF0BB47930661CF47DFA0A2EC0D1EFB1256472808A1CEE79D09774
        06BC9B8A8CE59620DFD59147D8AD7C9DD65B92FB1DEE0837C12B687BAE85A24F
        0710EF0BFA24FC064EE0E14F2C6F1522F10FF1F552781FBC093A83391A77C393
        E158742CC4D6772012FF34FC008EE3A19F2D6F15F25DA723BE188BF7BDB821BC
        10013D3B607CEF3671ED68CBF27EA4819B8FC3D8F31FC28ED68BB7E76B8B1794
        194A8FC111E81B6259AA035C74CA7B067E0BEDF9F596B70A1561932A3E81DFA0
        9133C81F550EE43BDBBDF828749A33E67FB2BC55E80D9BCCE2453BFC81A9CFF7
        A2DA81200826619C2AAFA732A7CB96214BD824416478DF39F0DE9E68162C7380
        1B5C196F819FC23B2D6B151A0C1BB55D8279102E6675576388CA11303D7085ED
        A2C2BFC39216A0226C6667107F31C645D455F3BC42F7D2BFC20BA0E4405BE7A9
        C6BEB9CD0A5E9197C3C21620256C6686176A20EA79DFC9A5881F4FE8381395B0
        650482B663F934317BB070F39296A4074D86CDC33016BF39BC90403284264287
        C6E973ABA39F61736E9A7861D884E0015384B5547C426F4935F2333A82A0981B
        CD57EF19004D8117F24C2926D3D064CF2BDE50A8295E8423C003266986CF1BFE
        4E03F70C41FC22BE9AF6CE86D7C1E7E10AAEF96C2AFA1736C5BAE2451C42F14E
        CA3CA30A6D5DEDDE371FDAF357C2DDE14E703CD4F9D768F8706C191A5DA4A823
        11368A5F5A251E2D83B86F265443C901F7B0E28BC8562038938F93A0A9EC3D70
        1DDC0C1D0177577FC257A9F4086C8894D9264BCF3BDB1036455ED8A565B3CD16
        04FBF2615D6E614B0EB86110659B85044E83E6438F87BF1240984E9BE2EAC432
        9DE87FD854F77C02610A0186FA113B109F1E6C886C25DC4C6C4448EACB1A3971
        0A0C4702F14BB05B2D6C922806419C58869A6307FAC24A3894C6AAE23C0642D9
        C88761E6BDFBC36B32F67C86B049A050BE87891D887B3E1E894A3C05D7C2B934
        EA4B9B0A04AF81A7C00361DD5CAAC1B02921C817CBA22576E0C7C8BA0FA80262
        DCCC5C0887C145CC04359DC88246C3A6021E2E885073EC802766C2739B54E0C4
        2B98F3E151F4034ED41E897A48844D941E64089B72C41A43CDB1031E2E995F23
        AE3670E2058C4E7838D5B013E561939EDB64806D9B29AFF647E800C23CABD409
        E7F4BA889CF0704B67333BC17D99729B0C50E34A74B8B52C8D80F0AC72240DC5
        6B424DF0B00B58144E7D3B11F57CCD94382BA867378C870D6A0D9174C054613B
        E896B24F4423E1BD75C32912DFDFB08961C63C10AA3544D99C4A63CEE1391A1A
        46433D61611FE019F7A89EDA99478DC1B15F2C175C7331734556BC61D354CF8B
        2813F68867006D6C4959221BE32E78185E9DDDFBB36F24C2E948B812D1B7C1E9
        D09333637E71EF22D5BC7881F833308E76D9FA5239026EEA3F839BE9B1E1345A
        37CF4F82677D1F3C067435B69EAFE1030CE71D85EEECF5A481BACD94ED7D33E0
        43E83453967470F32458849D515143C877B50FE4D95A2B7A53A0BE69912647BA
        0C652320C824030A7D413D401A8DB77AFEAF01D1AEFECBE132D49E53B95FAF72
        40F0902985DB45678C513811A7B0DB14E8D803F30E341B1E91A6A3F2250EC18D
        EE0B9CB274E4652AF298719B823677C6BC04F781136B7562AA038207FC9BD705
        703874A3126E20B605A29E774FE1C430052D6F5B9E869A0E081E5C80316D70CF
        BC9C8AC333F9568236EC30635E3B190DCF595E0BA9EF4025A8D4A314CF8B3C93
        9F056FA7E27E4D8D95A00DB380ABE18DD03F181A36357B3E462607040DF83E98
        128C85AE1533980E9ECFBA62D7027B0B340463F83A07BAC2BE082F437CA68923
        B303A2ADB323E009E7624F87DD369AC13E00E7D160BC29CA043AC4383797BA1C
        3A557E09AF2D1673CFF674673FDA6CC8811834EE4A3B157A18EC3ED9FCFC5DE8
        1FBA9D7EDD1F7F0737A0A448232E6CEEA4E23F747BBE340A7ABAE751BE29CC13
        7442ED15B6069A7220099C390613FFAB81CE18CBF5A0B3268DCE32CF22FA7D0B
        9B45BF1D48827866EE0E9CB10E804EBB2E4022F9CF1EAB111D6E46FE472E97FB
        072A09D19DB399CB570000000049454E44AE426082}
      Transparent := True
    end
  end
  object pTopo::= TPanel
    Left := 0
    Top := 0
    Width := 440
    Height := 49
    Align := alTop
    Caption := 'Mensagem do Topo'
    Color := clNone
    Font.Charset := DEFAULT_CHARSET
    Font.Color := clWhite
    Font.Height := -13
    Font.Name := 'Tahoma'
    Font.Style := [fsBold]
    ParentBackground := False
    ParentFont := False
    TabOrder := 0
  end
  object pBotton::= TPanel
    Left := 0
    Top := 143
    Width := 440
    Height := 49
    Align := alBottom
    ParentColor := True
    TabOrder := 2
    ExplicitLeft := 81
    ExplicitTop := 145
    object pYes::= TPanel
      Left := 340
      Top := 3
      Width := 96
      Height := 41
      BevelOuter := bvNone
      Caption := 'pYes'
      TabOrder := 0
      object shYes::= TShape
        Left := 0
        Top := 0
        Width := 96
        Height := 41
        Align := alClient
        Brush.Color := 14397732
        Pen.Color := 14397732
        Shape := stRoundRect
        ExplicitLeft := 112
        ExplicitTop := 6
        ExplicitWidth := 73
        ExplicitHeight := 35
      end
      object lYes::= TLabel
        Left := 0
        Top := 0
        Width := 96
        Height := 41
        Cursor := crHandPoint
        Align := alClient
        Alignment := taCenter
        AutoSize := False
        Caption := 'Sim'
        Font.Charset := DEFAULT_CHARSET
        Font.Color := clWhite
        Font.Height := -13
        Font.Name := 'Tahoma'
        Font.Style := [fsBold]
        ParentFont := False
        Layout := tlCenter
        OnClick := lYesClick
        ExplicitLeft := -8
        ExplicitTop := 3
      end
    end
    object pNo::= TPanel
      Left := 230
      Top := 3
      Width := 96
      Height := 41
      BevelOuter := bvNone
      Caption := 'pYes'
      TabOrder := 1
      object shNo::= TShape
        Left := 0
        Top := 0
        Width := 96
        Height := 41
        Align := alClient
        Pen.Color := 14397732
        Shape := stRoundRect
        ExplicitLeft := 112
        ExplicitTop := 6
        ExplicitWidth := 73
        ExplicitHeight := 35
      end
      object lNo::= TLabel
        Left := 0
        Top := 0
        Width := 96
        Height := 41
        Cursor := crHandPoint
        Align := alClient
        Alignment := taCenter
        AutoSize := False
        Caption := 'N'#227'o'
        Font.Charset := DEFAULT_CHARSET
        Font.Color := 14397732
        Font.Height := -13
        Font.Name := 'Tahoma'
        Font.Style := [fsBold]
        ParentFont := False
        Layout := tlCenter
        OnClick := lNoClick
        ExplicitLeft := 1
        ExplicitWidth := 94
        ExplicitHeight := 39
      end
    end
  end
end

end.
