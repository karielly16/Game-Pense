unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TAboutBox = class(TForm)
    BitBtn1: TBitBtn;
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}

procedure TAboutBox.Panel1Click(Sender: TObject);
begin
close;
end;

end.
 
