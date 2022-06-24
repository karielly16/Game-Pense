unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.DFM}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
 Form1.SpeedButton8Click(Sender);
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
 Form1.Timer1.Enabled := false;
 Form1.P1.Caption:='1'; Form1.P1.Color:=clAqua;
 Form1.P2.Caption:='2'; Form1.P2.Color:=clYellow;
 Form1.P3.Caption:='3'; Form1.P3.Color:=clLime;
 Form1.P4.Caption:='4'; Form1.P4.Color:=clFuchsia;
 Form1.P5.Caption:='5'; Form1.P5.Color:=clInactiveCaptionText;
 Form1.P6.Caption:='6'; Form1.P6.Color:=clInfoBk;
 Form1.P7.Caption:='#'; Form1.P7.Color:=$0000BBBB;
 Form1.P8.Caption:='#'; Form1.P8.Color:=clSilver;
 Form1.P9.Caption:='#'; Form1.P9.Color:=clWhite;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
 Form1.Timer1.Enabled := false;
 Form1.P1.Caption:='1'; Form1.P1.Color:=clAqua;
 Form1.P2.Caption:='2'; Form1.P2.Color:=clYellow;
 Form1.P3.Caption:='3'; Form1.P3.Color:=clLime;
 Form1.P4.Caption:='4'; Form1.P4.Color:=clFuchsia;
 Form1.P5.Caption:='5'; Form1.P5.Color:=clInactiveCaptionText;
 Form1.P6.Caption:='6'; Form1.P6.Color:=clInfoBk;
 Form1.P7.Caption:='7'; Form1.P7.Color:=$0000BBBB;
 Form1.P8.Caption:='#'; Form1.P8.Color:=clSilver;
 Form1.P9.Caption:='#'; Form1.P9.Color:=clWhite;
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
 Form1.Timer1.Enabled := false;
 Form1.P1.Caption:='1'; Form1.P1.Color:=clAqua;
 Form1.P2.Caption:='2'; Form1.P2.Color:=clYellow;
 Form1.P3.Caption:='3'; Form1.P3.Color:=clLime;
 Form1.P4.Caption:='4'; Form1.P4.Color:=clFuchsia;
 Form1.P5.Caption:='5'; Form1.P5.Color:=clInactiveCaptionText;
 Form1.P6.Caption:='6'; Form1.P6.Color:=clInfoBk;
 Form1.P7.Caption:='7'; Form1.P7.Color:=$0000BBBB;
 Form1.P8.Caption:='8'; Form1.P8.Color:=clSilver;
 Form1.P9.Caption:='9'; Form1.P9.Color:=clWhite;
end;

end.
