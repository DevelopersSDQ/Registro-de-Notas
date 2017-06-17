unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    edasistencia: TEdit;
    edtrabajo: TEdit;
    edprimerparcial: TEdit;
    edexamenfinal: TEdit;
    ednota: TEdit;
    edletra: TEdit;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label10: TLabel;
    ComboBox2: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox3: TComboBox;
    Label13: TLabel;
    ComboBox4: TComboBox;
    Label14: TLabel;
    ComboBox5: TComboBox;
    Label9: TLabel;
    Label15: TLabel;
    procedure edasistenciaChange(Sender: TObject);
    procedure edtrabajoChange(Sender: TObject);
    procedure edprimerparcialChange(Sender: TObject);
    procedure edexamenfinalChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edasistenciaChange(Sender: TObject);
begin
       
   if (edasistencia.Text > chr(48) )and (edasistencia.Text > chr(57) )then
   showmessage('No puede Introducir Letras Solo Numeros')
               else
end;

procedure TForm1.edtrabajoChange(Sender: TObject);
begin
 if (edtrabajo.Text > chr(48) )and (edtrabajo.Text > chr(57)) then
			showmessage('No puede Introducir Letras Solo Numeros')
			else
end;

procedure TForm1.edprimerparcialChange(Sender: TObject);
begin
if (edprimerparcial.Text > chr(48)) and (edprimerparcial.Text > chr(57)) then
 		showmessage('No puede Introducir Letras Solo Numeros')
 		else
end;

procedure TForm1.edexamenfinalChange(Sender: TObject);
begin
if (edexamenfinal.Text > chr(48)) and (edexamenfinal.Text > chr(57)) then

		 showmessage('No puede Introducir Letras Solo Numeros')
		end;
procedure TForm1.Button2Click(Sender: TObject);
begin
edasistencia.Clear;
edtrabajo.Clear;
edprimerparcial.Clear;
edexamenfinal.Clear;
ednota.Clear;
edletra.Clear;
combobox1.Text:= '<<Matricula>>';
ComboBox2.Text := '<<Nombre de estudiante>>';
ComboBox3.Text := '<<Seleccionar Materia>>';
ComboBox4.Text := '<<Seleccionar Profesor>>';
ComboBox5.Text := '<<Seleccionar Seccion>>';
edasistencia.SetFocus

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close


end;

procedure TForm1.Button1Click(Sender: TObject);

// Si el valor introducido en los campos es mayor de lo esperado
begin
if edasistencia.Text > '10' then
showmessage('La asistencia no debe ser mayor de 10.')
else

begin
if  edtrabajo.Text > '20' then
showmessage('El trabajo no puede ser mayor de 20.')
else

begin
if edprimerparcial.Text > '20' then
showmessage('El primer parcial no debe ser mayor de 20.')
else

begin
if edexamenfinal.Text > '50' then
showmessage('El examen final no debe ser mayor de 50.')
else

// Si el usuario deja el campo vacio

begin
if edasistencia.Text = '' then
showmessage('La asistencia no debe estar en blanco, digite un # del 0 al 10.')
else

begin
if  edtrabajo.Text = '' then
showmessage('El trabajo no debe estar en blanco, digite un # del 0 al 20.')
else

begin
if edprimerparcial.Text = '' then
showmessage('El primer parcial no debe estar en blanco, digite un # del 0 al 20.')
else

begin
if edexamenfinal.Text = '' then
showmessage('El examen final no debe estar en blanco, digite un # del 0 al 50.')
else

// mostrar resultado en el campo nota y letra

begin
if ednota.Text = '100'then
begin
edletra.Text :='A'
end
else

begin
ednota.text:= floatTostr(StrTofloat(edasistencia.Text) + StrTofloat(edtrabajo.Text)+ Strtofloat(edprimerparcial.Text)+strtofloat(edexamenfinal.text));


 begin
if ednota.Text <= '69' then
begin
edletra.Text := 'FI'
end

else
if ednota.Text <= '74'then
begin
edletra.Text := 'D'
end

else
if ednota.Text <= '79' then
begin
edletra.Text := 'c'
end

else
if ednota.Text <= '89' then
begin
edletra.Text := 'B'
end

else
if ednota.Text <= '99'then
begin
edletra.Text := 'A'
end


end;
end;
end;
end;
end;
end;
end;
end;
end;




















End;

end;
end.