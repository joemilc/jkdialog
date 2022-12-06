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
      JKFormDialog.Cor := Padrao_Verm;
      JKFormDialog.imgDialog.Picture.LoadFromFile(s+'error.png')
    end;

    tdSucesso:
    begin
      JKFormDialog.Cor := Padrao_Verd;
      JKFormDialog.imgDialog.Picture.LoadFromFile(s+'success.png')
    end;

  end;

  if (ATipo IN [tdAlerta, tdErro, tdSucesso]) then
  begin
    JKFormDialog.pNo.Visible := False;
    JKFormDialog.lYes.Caption := 'OK';
  end;

  Result := JKFormDialog.ShowModal = mrYes;

  FreeAndNil(JKFormDialog);
end;

end.
