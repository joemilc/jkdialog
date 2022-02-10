unit uformDialogs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TJKFormDialog }

  TJKFormDialog = class(TForm)
    imgDialog: TImage;
    lNo: TLabel;
    lTexto: TLabel;
    lYes: TLabel;
    pBotton: TPanel;
    pNo: TPanel;
    pTexto: TPanel;
    pTopo: TPanel;
    pYes: TPanel;
    shNo: TShape;
    shYes: TShape;
    procedure FormShow(Sender: TObject);
    procedure lNoClick(Sender: TObject);
    procedure lYesClick(Sender: TObject);
  private

  public
    Cor: TColor;
  end;

var
  JKFormDialog: TJKFormDialog;

implementation

{$R *.lfm}

{ TJKFormDialog }

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

