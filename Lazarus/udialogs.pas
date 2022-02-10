unit uDialogs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uJKDialog;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  JKDialog('Título da Mensagem',
    'As faturas do período foram geradas'+#13+'Deseja validar as informações agora?', tdMensagem);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  JKDialog('Título da Mensagem',
    'Alguns campos não foram preenchidos corretamente.', tdAlerta);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  JKDialog('Título da Mensagem',
    'Alguma coisa errada não esta certa.', tdErro);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  JKDialog('Título da Mensagem',
    'Os Dados foram importados com sucesso.', tdSucesso);
end;

end.

