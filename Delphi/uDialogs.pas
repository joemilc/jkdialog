unit uDialogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uJKDialog, ShellAPI ;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if JKDialog('Título', 'Mensagem', tdMensagem) then
  else
    ShowMessage('Cancelar');
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

procedure TForm1.FormCreate(Sender: TObject);
begin
self.Caption := 'jkdialog - demonstração';
self.repaint;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
ShellExecute(Handle,
               'open',
               pchar(label1.Caption),
               nil,
               nil,
               SW_SHOWMAXIMIZED)
end;

end.
