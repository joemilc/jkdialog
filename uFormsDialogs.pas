unit uFormsDialogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.StdCtrls;


type

  TJKFormDialog = class(TForm)
    pTopo: TPanel;
    pTexto: TPanel;
    pBotton: TPanel;
    lTexto: TLabel;
    imgDialog: TImage;
    pYes: TPanel;
    shYes: TShape;
    lYes: TLabel;
    pNo: TPanel;
    shNo: TShape;
    lNo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure lNoClick(Sender: TObject);
    procedure lYesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cor: TColor;
  end;

var
  JKFormDialog: TJKFormDialog;


implementation

{$R *.dfm}

procedure TJKFormDialog.FormShow(Sender: TObject);
begin
  pTopo.Color := Cor;
  lTexto.Font.Color := Cor;
  lNo.Font.Color := Cor;
  shYes.Pen.Color := Cor;
  shYes.Brush.Color := Cor;
  shNo.Pen.Color := Cor;
  lNo.Font.Color := Cor;
end;

procedure TJKFormDialog.lNoClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TJKFormDialog.lYesClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

end.
