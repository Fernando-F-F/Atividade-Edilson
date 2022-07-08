unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, jpeg;

type
  TForm1 = class(TForm)
    lbnome: TLabel;
    txt_nome: TEdit;
    lb1: TLabel;
    txt_nota1: TEdit;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    txt_nota2: TEdit;
    txt_nota4: TEdit;
    txt_nota3: TEdit;
    Calcular: TButton;
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure CalcularClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nome: string;
  nota1, nota2, nota3, nota4, total: double;

implementation

{$R *.dfm}

procedure TForm1.CalcularClick(Sender: TObject);
begin
  nome:=(txt_nome.text);
  nota1:= strtofloat(txt_nota1.text);
  nota2:= strtofloat(txt_nota2.text);
  nota3:= strtofloat(txt_nota3.text);
  nota4:= strtofloat(txt_nota4.text);
    if (nota1 = null ) or (nota2 = null) or (nota3 = null) or (nota4 = null) then
      Showmessage('Erro: Há um campo em branco!')
else begin
  if (nota1>10) or (nota1<0) or (nota2>10) or (nota2<0) or (nota3>10) or (nota3<0)or(nota4>10) or (nota4<0)then
    Showmessage('Erro: A nota deve estar entre 0 e 10!')
else begin
  total:= (nota1+nota2+nota3+nota4)/4;
    Showmessage('A média do aluno '+(nome)+ ' é ' + (floattostr(total)));

end;
end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
close;
end;
end.




