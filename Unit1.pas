unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    P1: TPanel;
    P2: TPanel;
    P3: TPanel;
    P4: TPanel;
    P5: TPanel;
    P6: TPanel;
    P7: TPanel;
    P8: TPanel;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    P9: TPanel;
    Timer1: TTimer;
    GroupBox3: TGroupBox;
    Bevel1: TBevel;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    Novo2: TMenuItem;
    N1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    About1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Bevel2: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
    Procedure Ver_ou_nao;
 public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ver: Boolean;
  mistura,jogada: integer;

implementation

uses About, Unit2, Unit3;

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
  panel10.Left := 0; //determina a posição de inicio.
  panel10.top := 6;
  mistura := 1;
  jogada  := 0;
  Form3.RadioButton1Click(Sender);
end;

procedure TForm1.ShowHint(Sender: TObject);
begin
 Label1.Caption := Application.hint;
end;

   // para rodar para esquerda baseado na posição do panel 10
procedure TForm1.BitBtn5Click(Sender: TObject);
begin
end;
     // para rodar para direita baseado na posição do panel 10
procedure TForm1.Timer1Timer(Sender: TObject);
begin
 if (P1.Caption = '1') and  (P2.Caption = '2') and  (P3.Caption = '3') and
    (P4.Caption = '4') and  (P5.Caption = '5') and  (P6.Caption = '6') and //facil
    (P7.Caption = '#') and  (P8.Caption = '#') and  (P9.Caption = '#') or
      (P1.Caption = '1') and  (P2.Caption = '2') and  (P3.Caption = '3') and
      (P4.Caption = '4') and  (P5.Caption = '5') and  (P6.Caption = '6') and //médio
      (P7.Caption = '7') and  (P8.Caption = '#') and  (P9.Caption = '#') or
        (P1.Caption = '1') and  (P2.Caption = '2') and  (P3.Caption = '3') and
        (P4.Caption = '4') and  (P5.Caption = '5') and  (P6.Caption = '6') and  //dificil
        (P7.Caption = '7') and  (P8.Caption = '8') and  (P9.Caption = '9') then
     Begin
      Timer1.Enabled := false;
      MessageBox(handle,'Você conseguiu mas não fique tão alegre, eu deixei,HE! HE! HE!','Aviso',MB_OK + MB_ICONINFORMATION);
      ver := false;
      Ver_ou_nao;
     end; 
     Label3.Caption := IntToStr(jogada);
end;

Procedure TForm1.Ver_ou_nao;
begin
 if ver = true then
  begin
    SpeedButton1.enabled := true;  SpeedButton2.enabled := true;  SpeedButton3.enabled := true;
    SpeedButton4.enabled := true;  SpeedButton5.enabled := true;  SpeedButton6.enabled := true;
    SpeedButton8.enabled := true;
  end
  else
  begin
    SpeedButton1.enabled := false;  SpeedButton2.enabled := false;  SpeedButton3.enabled := false;
    SpeedButton4.enabled := false;  SpeedButton5.enabled := false;  SpeedButton6.enabled := false;
    SpeedButton8.enabled := false;
  end;
end;



procedure TForm1.Novo1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Sobre1Click(Sender: TObject);
begin
AboutBox.ShowModal;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
Form2.ShowModal;
end;
                   //misturar
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
                             Shift: TShiftState);
begin
 if SpeedButton8.Enabled = true then
  begin
   case Key of
    VK_LEFT:   SpeedButton1Click(Sender);
    VK_RIGHT:  SpeedButton2Click(Sender);
    VK_UP:     SpeedButton3Click(Sender);
    VK_DOWN:   SpeedButton4Click(Sender);
    VK_SPACE:  SpeedButton5Click(Sender);
    VK_RETURN: SpeedButton6Click(Sender);
    VK_F2:     SpeedButton7Click(Sender);
    VK_F3:     SpeedButton8Click(Sender);
   end;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 panel10.Left := 0;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
panel10.top := 6;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 panel10.Left := 55;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
panel10.top := 61;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var a,b,c,d : string;
    a1,b1,c1,d1: TColor;
begin
  if (Panel10.left = 0) and (Panel10.top = 6) then
     begin          // posição 1
       a:= P1.Caption;  b:= P2.Caption;   c:= P5.Caption;  d:= P4.Caption;
       a1:= P1.Color;   b1:= P2.Color;    c1:= P5.Color;   d1:= P4.Color;
       P1.Caption := b;  P2.Caption := c;
       P5.Caption := d;  P4.Caption := a;
       P1.Color := b1;  P2.Color := c1;
       P5.Color := d1;  P4.Color := a1;
       Inc(jogada);
     end;
  if (Panel10.left = 55) and (Panel10.top = 6) then
     begin          // posição 2
        a:= P2.Caption;   b:= P3.Caption;   c:= P6.Caption;  d:= P5.Caption;
       a1:= P2.Color;   b1:= P3.Color;    c1:= P6.Color;   d1:= P5.Color;
       P2.Caption := b;  P3.Caption := c;
       P6.Caption := d;  P5.Caption := a;
       P2.Color := b1;  P3.Color := c1;
       P6.Color := d1;  P5.Color := a1;
       Inc(jogada);
     end;
   if (Panel10.left = 0) and (Panel10.top = 61) then
     begin          // posição 3
        a:= P4.Caption;  b:= P5.Caption;   c:= P8.Caption;  d:= P7.Caption;
       a1:= P4.Color;   b1:= P5.Color;    c1:= P8.Color;   d1:= P7.Color;
       P4.Caption := b;  P5.Caption := c;
       P8.Caption := d;  P7.Caption := a;
       P4.Color := b1;  P5.Color := c1;
       P8.Color := d1;  P7.Color := a1;
       Inc(jogada);
     end;
   if (Panel10.left = 55) and (Panel10.top = 61) then
     begin          // posição 3
        a:= P5.Caption;  b:= P6.Caption;   c:= P9.Caption;  d:= P8.Caption;
       a1:= P5.Color;   b1:= P6.Color;    c1:= P9.Color;   d1:= P8.Color;
       P5.Caption := b;  P6.Caption := c;
       P9.Caption := d;  P8.Caption := a;
       P5.Color := b1;  P6.Color := c1;
       P9.Color := d1;  P8.Color := a1;
       Inc(jogada);
     end;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var a,b,c,d : string;
    a1,b1,c1,d1: TColor;
begin
  if (Panel10.left = 0) and (Panel10.top = 6) then
     begin          // posição 1
        a:= P1.Caption;   b:= P2.Caption;   c:= P5.Caption;   d:= P4.Caption;
       a1:= P1.Color;    b1:= P2.Color;    c1:= P5.Color;    d1:= P4.Color;
       P1.Caption := d;  P2.Caption := a;
       P5.Caption := b;  P4.Caption := c;
       P1.Color := d1;   P2.Color := a1;
       P5.Color := b1;   P4.Color := c1;
       Inc(jogada);
     end;
  if (Panel10.left = 55) and (Panel10.top = 6) then
     begin          // posição 2
        a:= P2.Caption;   b:= P3.Caption;   c:= P6.Caption;   d:= P5.Caption;
       a1:= P2.Color;    b1:= P3.Color;    c1:= P6.Color;    d1:= P5.Color;
       P2.Caption := d;  P3.Caption := a;
       P6.Caption := b;  P5.Caption := c;
       P2.Color := d1;   P3.Color := a1;
       P6.Color := b1;   P5.Color := c1;
       Inc(jogada);
     end;
   if (Panel10.left = 0) and (Panel10.top = 61) then
     begin          // posição 3
        a:= P4.Caption;   b:= P5.Caption;   c:= P8.Caption;   d:= P7.Caption;
       a1:= P4.Color;    b1:= P5.Color;    c1:= P8.Color;    d1:= P7.Color;
       P4.Caption := d;  P5.Caption := a;
       P8.Caption := b;  P7.Caption := c;
       P4.Color := d1;   P5.Color := a1;
       P8.Color := b1;   P7.Color := c1;
       Inc(jogada);
     end;
   if (Panel10.left = 55) and (Panel10.top = 61) then
     begin          // posição 3
        a:= P5.Caption;   b:= P6.Caption;   c:= P9.Caption;   d:= P8.Caption;
       a1:= P5.Color;    b1:= P6.Color;    c1:= P9.Color;    d1:= P8.Color;
       P5.Caption := d;  P6.Caption := a;
       P9.Caption := b;  P8.Caption := c;
       P5.Color := d1;   P6.Color := a1;
       P9.Color := b1;   P8.Color := c1;
       Inc(jogada);
     end;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
 Form3.ShowModal;
 jogada:=0;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  ver:= true;
  ver_ou_nao;
  Timer1.Enabled := false;
  Timer2.Enabled := true;
  Timer3.Enabled := true;
end;

                 //para misturar
procedure TForm1.Timer2Timer(Sender: TObject);
begin
    if mistura = 1  then SpeedButton2Click(Sender);
    if mistura = 3  then SpeedButton1Click(Sender);
    if mistura = 5  then SpeedButton2Click(Sender);
    if mistura = 7  then SpeedButton4Click(Sender);
    if mistura = 9  then SpeedButton1Click(Sender);
    if mistura = 11 then SpeedButton3Click(Sender);
    if mistura = 13 then SpeedButton1Click(Sender);
    if mistura = 15 then SpeedButton2Click(Sender);
    if mistura = 17 then SpeedButton4Click(Sender);
    if mistura = 19 then SpeedButton1Click(Sender);
    if mistura = 21 then SpeedButton3Click(Sender);
    if mistura = 23 then SpeedButton4Click(Sender);
    if mistura = 25 then SpeedButton2Click(Sender);
    if mistura = 27 then SpeedButton1Click(Sender);
    if mistura = 29 then SpeedButton3Click(Sender);
    if mistura = 31 then SpeedButton4Click(Sender);
    if mistura = 33 then SpeedButton3Click(Sender);
    if mistura = 35 then SpeedButton1Click(Sender);
    if mistura = 37 then SpeedButton2Click(Sender);
    if mistura = 39 then SpeedButton4Click(Sender);
    if mistura = 41 then SpeedButton1Click(Sender);
    if mistura = 43 then SpeedButton2Click(Sender);
    if mistura = 45 then SpeedButton4Click(Sender);
    if mistura = 47 then SpeedButton1Click(Sender);
    if mistura = 49 then SpeedButton2Click(Sender);
    if mistura = 51 then SpeedButton4Click(Sender);
    if mistura = 53 then SpeedButton2Click(Sender);
    Inc(mistura);
    if mistura >= 55 then
     begin
       timer2.Enabled:=false;
       timer3.Enabled:=false;
       mistura:=1;
       Timer1.Enabled := true;
       jogada := 0; //para zerar
     end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
    if mistura = 2  then SpeedButton6Click(Sender);
    if mistura = 4  then SpeedButton6Click(Sender);
    if mistura = 6  then SpeedButton6Click(Sender);
    if mistura = 8  then SpeedButton6Click(Sender);
    if mistura = 10 then SpeedButton5Click(Sender);
    if mistura = 12 then SpeedButton5Click(Sender);
    if mistura = 14 then SpeedButton5Click(Sender);
    if mistura = 16 then SpeedButton5Click(Sender);
    if mistura = 18 then SpeedButton6Click(Sender);
    if mistura = 20 then SpeedButton5Click(Sender);
    if mistura = 22 then SpeedButton6Click(Sender);
    if mistura = 24 then SpeedButton5Click(Sender);
    if mistura = 26 then SpeedButton5Click(Sender);
    if mistura = 28 then SpeedButton6Click(Sender);
    if mistura = 30 then SpeedButton6Click(Sender);
    if mistura = 32 then SpeedButton5Click(Sender);
    if mistura = 34 then SpeedButton5Click(Sender);
    if mistura = 36 then SpeedButton6Click(Sender);
    if mistura = 38 then SpeedButton5Click(Sender);
    if mistura = 40 then SpeedButton5Click(Sender);
    if mistura = 42 then SpeedButton6Click(Sender);
    if mistura = 44 then SpeedButton6Click(Sender);
    if mistura = 48 then SpeedButton5Click(Sender);
    if mistura = 50 then SpeedButton5Click(Sender);
end;

end.



