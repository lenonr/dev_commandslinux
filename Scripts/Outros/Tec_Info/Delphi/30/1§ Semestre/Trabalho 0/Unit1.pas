unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label13: TLabel;
    Button3: TButton;
    Button4: TButton;
    memo1: TMemo;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
var salariobruto,salariofamilia,inss,planosaude,totalentradas,salarioliquido,totalsaidas,valorinss,valorsalariofamilia : real ;
var numerodefilhos ,horasextras: integer ;
begin
//conversoes
salariobruto := strtofloat(edit1.Text) ;
numerodefilhos := strtoint(edit2.Text) ;
salariofamilia := strtofloat(edit3.Text) ;
horasextras := strtoint(edit4.Text) ;
inss := strtofloat(edit5.Text) ;
planosaude:= strtofloat(edit6.Text) ;
totalentradas := strtofloat(edit7.Text) ;
salarioliquido := strtofloat(edit8.Text) ;
totalsaidas := strtofloat(edit9.Text) ;
valorinss:=strtofloat(edit10.text) ;
valorsalariofamilia:= strtofloat(edit11.Text) ;
//fim das conversoes
//totalentrada
totalentradas:= salariobruto+(numerodefilhos*salariofamilia)+horasextras ;
//totalsaida
totalsaidas:=(inss/100)*salariobruto+planosaude ;
//valordoinss
valorinss:= (inss/100)*salariobruto ;
//valordosalariofamilia
valorsalariofamilia:= numerodefilhos*salariofamilia ;
//totaldosalarioliquido
salarioliquido:= totalentradas-totalsaidas ;
//reconvertendo valores
edit1.text:= floattostr(salariobruto) ;
edit2.text:= inttostr(numerodefilhos) ;
edit3.text:= floattostr(salariofamilia) ;
edit4.text:= inttostr(horasextras) ;
edit7.text:= floattostr(totalentradas) ;
edit5.Text:= floattostr(inss) ;
edit6.Text:= floattostr(planosaude);
edit8.Text:= floattostr(totalsaidas) ;
edit9.text:=  floattostr(salarioliquido) ;
edit10.text:=  floattostr(valorinss) ;
edit11.text:=  floattostr(valorsalariofamilia) ;
//fim
GroupBox1.Visible:=false ;
GroupBox2.Visible:=false ;
GroupBox3.Visible:=true ;
memo1.Clear;

memo1.lines.add(edit1.text) ;
memo1.lines.add(edit2.text) ;
memo1.lines.add(edit3.text) ;
memo1.lines.Add(edit4.text) ;
memo1.lines.add(edit5.text) ;
memo1.lines.add(edit6.text) ;
memo1.lines.add(edit7.text) ;
memo1.lines.Add(edit8.text) ;
memo1.lines.add(edit10.text) ;
memo1.lines.add(edit11.text) ;
memo1.lines.add(edit9.text) ;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text := '0' ;
Edit2.Text := '0' ;
Edit3.Text := '0' ;
Edit4.Text := '0' ;
Edit5.Text := '0' ;
Edit6.Text := '0' ;
Edit7.Text := '0' ;
Edit8.Text := '0' ;
Edit9.Text := '0' ;
Edit10.Text := '0' ;
Edit11.Text := '0' ;
memo1.Clear;
GroupBox1.Visible:=true ;
GroupBox2.Visible:=true ;
GroupBox3.Visible:=false ;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
memo1.lines.savetofile('Dados.txt');
memo1.lines.savetofile('Dados.txt');
memo1.lines.savetofile('Dados.txt');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
memo1.Lines.LoadFromFile('Dados.txt');
edit1.Text:= memo1.lines[0] ;
memo1.Lines.loadfromfile('Dados.txt');
edit2.Text:=memo1.Lines[1] ;
memo1.Lines.LoadFromFile('Dados.txt');
edit3.Text:=memo1.lines[2] ;
memo1.Lines.loadfromfile('Dados.txt');
edit4.text:=memo1.lines[3] ;
memo1.Lines.LoadFromFile('Dados.txt');
edit5.text:=memo1.lines[4] ;
memo1.lines.LoadFromFile('Dados.txt');


end;

procedure TForm1.Button5Click(Sender: TObject);
begin
memo1.visible := false;

end;

end.
