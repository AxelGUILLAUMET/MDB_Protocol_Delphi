unit AboutForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, ShellApi;

type
  TFAboutForm = class(TForm)
    Image1: TImage;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAboutForm: TFAboutForm;

implementation

{$R *.dfm}

procedure TFAboutForm.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFAboutForm.Label10Click(Sender: TObject);
begin
ShellExecute(Application.Handle, PChar('open'), PChar('https://github.com/AxelGUILLAUMET/MDB_Protocol_Delphi'), nil, nil, SW_SHOW);
end;

procedure TFAboutForm.Label11Click(Sender: TObject);
begin
ShellExecute(Application.Handle, PChar('open'), PChar('https://www.ingenieriaelectronica.net/'), nil, nil, SW_SHOW);
end;

procedure TFAboutForm.Label12Click(Sender: TObject);
begin
ShellExecute(Application.Handle, PChar('open'), PChar('https://www.cranepi.com/en/products/coin/changers/cashflow-7000'), nil, nil, SW_SHOW);
end;

procedure TFAboutForm.Label5Click(Sender: TObject);
begin
ShellExecute(Application.Handle, PChar('open'), PChar('https://www.namanow.org/wp-content/uploads/Multi-Drop-Bus-and-Internal-Communication-Protocol.pdf'), nil, nil, SW_SHOW);
end;

procedure TFAboutForm.Label6Click(Sender: TObject);
begin
ShellExecute(Application.Handle, PChar('open'), PChar('http://www.waferlife.com/en/MDB2PC-PC2MDB.html'), nil, nil, SW_SHOW);
end;

end.
