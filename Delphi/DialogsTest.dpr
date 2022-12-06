program DialogsTest;

uses
  Vcl.Forms,
  uDialogs in 'uDialogs.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
