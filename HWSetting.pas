unit HWSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CPortCtl, Buttons;

type
  TFHWSetting = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MDB_COMPORT_Selector: TComComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FHWSetting: TFHWSetting;

implementation

uses MainForm;

{$R *.dfm}

procedure TFHWSetting.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFHWSetting.BitBtn1Click(Sender: TObject);
begin

  with FMainForm do begin
    MDB_COM := MDB_COMPORT_Selector.Text;
    MDB_COMPORT.Port := MDB_COMPORT_Selector.Text;
    Label_MDB_COMPORT.Caption := MDB_COMPORT_Selector.Text;
    inifile.WriteString('system','MDB_COMPORT',MDB_COM);
  end;

  close;

end;

end.
