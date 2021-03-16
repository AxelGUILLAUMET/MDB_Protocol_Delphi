{*******************************************************************************

DEMOSTRADOR de bus MDB con DELPHI

Requiere la libreria TComPort 4.11

Codigo bajo licencia MIT

Desarrollado por Axel GUILLAUMET

www.ingenieriaelectronica.net

https://github.com/AxelGUILLAUMET/MDB_Protocol_Delphi

*******************************************************************************}

unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, CPort, inifiles,
  Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TFMainForm = class(TForm)
    MDB_COM_TIMER: TTimer;
    MDB_COMPORT: TComPort;
    MDB_PARSER_TIMER: TTimer;
    GroupBox2: TGroupBox;
    Shape_STAT_MDB_COMPORT: TShape;
    Label1: TLabel;
    Label_MDB_COMPORT: TLabel;
    Label7: TLabel;
    Label_MDB_STATUS: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label_MDB_tubeA: TLabel;
    Label_MDB_tubeB: TLabel;
    Label_MDB_tubeD: TLabel;
    Label_MDB_tubeE: TLabel;
    Label_MDB_tubeC: TLabel;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    Label18: TLabel;
    Label_MDB_totalTubes: TLabel;
    GroupBox5: TGroupBox;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    procedure MDB_PARSE;
    procedure MDB_COM_TIMERTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MDB_COMPORTRxChar(Sender: TObject; Count: Integer);
    procedure MDB_PARSER_TIMERTimer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    MDB_COM_BUFFER : String; // Buffer serial del puerto serial al cual se conecta el dispositivo MDB
  public
    MDB_COM : string; // Nombre del puerto serial al cual se conecta el dispositivo MDB
    m50c : word;   // Cantidad de monedas de 50 centavos presentes en cassette
    m1p : word;   // Cantidad de monedas de 1 peso presentes en cassette
    m2p : word;   // Cantidad de monedas de 2 pesos presentes en cassette
    m5p : word;   // Cantidad de monedas de 5 pesos presentes en cassette
    m10p : word;  // Cantidad de monedas de 10 pesos presentes en cassette

    cantidad_insertada : word; // Cantidad de dinero total insertado
    MDB_Status : byte; // Estatuto MDB del sistema
                       //   1 -> Escrow request
                       //   2 -> hanger payout busy
                       //   3 -> No credit
                       //   4 -> Defective tube sensor
                       //   5 -> Double arrival
                       //   6 -> Acceptor unplugged
                       //   7 -> Tube jam
                       //   8 -> ROM checksum error
                       //   9 -> Coin routing error
                       //   10 -> Changer busy
                       //   11 -> Changer was reset
                       //   12 -> Coin jam
                       // Vendran mas para billetera
                       //   255 -> No Message...
   Monedero_MDB_ispolled : boolean;
   MDB_polldelay : word;
   Timer_MSG_MDB_STATUS : word;
  end;

var
  FMainForm: TFMainForm;
  inifile : Tinifile; // Objeto Inifile de la configuracion global


implementation

{$R *.dfm}

uses HWSetting, AboutForm;

procedure TFMainForm.BitBtn1Click(Sender: TObject);
begin
  FAboutForm.showmodal;
end;

procedure TFMainForm.BitBtn2Click(Sender: TObject);
begin

  MDB_COMPORT.WriteStr(chr($0F));
  MDB_COMPORT.WriteStr(chr($02));
  MDB_COMPORT.WriteStr(chr(strtoint(edit1.text)*2));

  //MDB_COMPORT.WriteStr(#$0F#$02#$04);

end;

procedure TFMainForm.BitBtn3Click(Sender: TObject);
begin
  application.terminate;
end;

procedure TFMainForm.BitBtn4Click(Sender: TObject);
begin
  FHWSetting.showmodal;
end;

procedure TFMainForm.BitBtn5Click(Sender: TObject);
begin
  MDB_COMPORT.WriteStr(chr($0A));
end;

procedure TFMainForm.FormCreate(Sender: TObject);
begin

  // Codigo de inicializacion

  inifile := TInifile.create(GetCurrentDir +'/config.ini');
  MDB_COM_BUFFER := '';

  MDB_Status := 255; // No hay mensaje MDB
  Monedero_MDB_ispolled := false; // El monedero MDB no ha sido polleado

  try
    MDB_COM := inifile.ReadString('system','MDB_COMPORT','COM1');
    Label_MDB_COMPORT.Caption := MDB_COM;
    MDB_COMPORT.Port := MDB_COM;
  except end;


end;

procedure TFMainForm.FormDestroy(Sender: TObject);
begin
  inifile.Free;
end;


procedure TFMainForm.MDB_COMPORTRxChar(Sender: TObject; Count: Integer);
var RX_MDB_data : string;
begin
  MDB_PARSER_TIMER.Enabled := false; // El parseo de los datos MDB esta trabajando con un timer diferente hay que pararlo mientras que llemos el puerto serial.
  MDB_COMPORT.ReadStr(RX_MDB_data, Count);
  MDB_COM_BUFFER := MDB_COM_BUFFER + RX_MDB_data;
  memo1.Text := memo1.Text + RX_MDB_data;
  MDB_PARSER_TIMER.Enabled := true; // Reactivamos el timer del timer del parseo MDB
end;

procedure TFMainForm.MDB_COM_TIMERTimer(Sender: TObject);
begin

  // Loop para verificar si el TComPort MDB_COMPORT esta abierto, en caso contrario intenamos abrirlo.

  // El COMPORT NO esta abierto
  if not MDB_COMPORT.Connected then begin
    try
      MDB_COMPORT.Open;
      // POLL test para estar seguro
      MDB_COMPORT.WriteStr(chr($0B));
    except end;


  end

  // El COMPORT ESTA abierto
  else begin

   if Monedero_MDB_ispolled then
     Shape_STAT_MDB_COMPORT.Brush.Color := cllime
   else
     Shape_STAT_MDB_COMPORT.Brush.Color := clred;
     try
       // MDB_COMPORT.Close;
     except end;

  end;

  // Hacemos un POLL al monedero para ver el estatuto general del sistema
  {
  MDB_polldelay := MDB_polldelay + 1;

  if MDB_polldelay >= 10 then begin
    Monedero_MDB_ispolled := false;
    MDB_polldelay := 0;
    MDB_COMPORT.WriteStr(chr($0B));
  end;
  }

  // Gestion de Label_MDB_STATUS

  Timer_MSG_MDB_STATUS := Timer_MSG_MDB_STATUS + 1;

  if (Timer_MSG_MDB_STATUS >= 5) then begin
    Timer_MSG_MDB_STATUS := 10;
    MDB_Status := 255;
    Label_MDB_STATUS.Caption := '-';
  end;

  end;


procedure TFMainForm.MDB_PARSER_TIMERTimer(Sender: TObject);
begin
  MDB_PARSER_TIMER.Enabled := false;
  MDB_PARSE; // Con ese timer, se ejectura el parse de los datos MDB recibidos.
  MDB_PARSER_TIMER.Enabled := true;
end;

procedure TFMainForm.MDB_PARSE;
var watchdog : integer;
    tempvalue : string;

begin

  ///////////////
  // Parse MDB //
  ///////////////

  // REVISAR BIEN EL PARSE READ : DE REPENTE NO TOMA EN CUENTA LA MONEDA

  // EL ERROR ES QUE MANDA DE REPENTE 08 21 en LUGAR DE una trama completa y no devuelvle la moneda.
  // (Aparentemente se arreglo desactivando el timer al momento de recibir los datos del puerto serial...)

  // Verificar cotejo con mas de 127 monedas en total-----

  // CADENA VACIA, SALIMOS
  if (MDB_COM_BUFFER = '') then exit; // Si el buffer esta vacio, salimos de la procedure

  // -----------------
  // POLL MONEDERO MDB
  // -----------------
  // 00 #13 #10
  // Longitud de la cadena 5 caracteres


  if ((MDB_COM_BUFFER[1] = '0') and (MDB_COM_BUFFER[2] = '0') and (MDB_COM_BUFFER[3] = ' ') and(MDB_COM_BUFFER[4] = #13) and (MDB_COM_BUFFER[5] = #10) and (MDB_COM_BUFFER.Length = 5)) then begin

    Monedero_MDB_ispolled := true;

    Delete(MDB_COM_BUFFER, 1, 5); // Liberamos del buffer la trama que parseamos.

  end else


  // ----------------
  // MONEDA INSERTADA
  // ----------------
  // 08 xx yy
  // Longitud de la cadena 10 caracteres
  // 08 -> Direccion MDB para monedero                    [1][2]
  // -> Espacio                                           [3]
  // xx -> Tipo de moneda (52,53,54,55)                   [4][5]
  // -> Espacio                                           [6]
  // yy -> Cantidad de monedas presentes en el cassette   [7][8]
  // FINAL -> #13 #10                                           [9][10]

  if ((MDB_COM_BUFFER[1] = '0') and (MDB_COM_BUFFER[2] = '8') and (MDB_COM_BUFFER[4] = '5')) then begin

      // Loopeamos hasta tener el final de la trama para asegurarnos de que viene completa.
      // Vérificamos los 2 bytes del final
      watchdog := 0;
      repeat
      watchdog := watchdog + 1;

      if (watchdog >= 20000) then begin
        Delete(MDB_COM_BUFFER, 1, 1);
        exit;
      end;

      until ((MDB_COM_BUFFER[9] = #13)  and (MDB_COM_BUFFER[10] = #10));

      // Se suma al dinero total insertado

      if (MDB_COM_BUFFER[5] = '2') then begin // 52 -> 1 peso
        cantidad_insertada := cantidad_insertada + 1;
      end;

      if (MDB_COM_BUFFER[5] = '3') then begin // 53 -> 2 pesos
        cantidad_insertada := cantidad_insertada + 2;
      end;

      if (MDB_COM_BUFFER[5] = '4') then begin // 54 -> 5 pesos
        cantidad_insertada := cantidad_insertada + 5;
      end;

      if (MDB_COM_BUFFER[5] = '5') then begin // 55 -> 10 pesos
        cantidad_insertada := cantidad_insertada + 10;
      end;


      label2.Caption := inttostr(cantidad_insertada);

      Delete(MDB_COM_BUFFER, 1, 10); // Liberamos del buffer la trama que parseamos.

  end else

  // -----------------
  // ESTATUTO MONEDERO
  // -----------------
  // 08 xx
  // Longitud de la cadena 7 caracteres
  // 08 -> Direccion MDB para monedero                    [1][2]
  // -> Espacio                                           [3]
  // xx -> Codigo de err             or                   [4][5]
  // FINAL -> #13 #10                                           [6][7]


  if ((MDB_COM_BUFFER[1] = '0') and (MDB_COM_BUFFER[2] = '8') and (MDB_COM_BUFFER[4] = '0')) then begin

      // Loopeamos hasta tener el final de la trama para asegurarnos de que viene completa.
      // Vérificamos los 2 bytes del final
      watchdog := 0;
      repeat
      watchdog := watchdog + 1;

      if (watchdog >= 20000) then begin
        Delete(MDB_COM_BUFFER, 1, 1);
        exit;
      end;

      until ((MDB_COM_BUFFER[6] = #13)  and (MDB_COM_BUFFER[7] = #10));

      // Identificamos el ESTATUTO MDB del monedero
      case MDB_COM_BUFFER[5] of

        // Escrow request
        '1' : begin
              MDB_Status := 1;
              Label_MDB_STATUS.Caption := 'Escrow request';
              end;

        // Changer payout busy
        '2' : begin
              MDB_Status := 2;
              Label_MDB_STATUS.Caption := 'Changer payout busy';
              end;

        // No credit
        '3' : begin
              MDB_Status := 3;
              Label_MDB_STATUS.Caption := 'No credit';
              end;

        // Defective tube sensor
        '4' : begin
              MDB_Status := 4;
              Label_MDB_STATUS.Caption := 'Defective tube sensor';
              end;

        // Double arrival
        '5' : begin
              MDB_Status := 5;
              Label_MDB_STATUS.Caption := 'Double arrival';
              end;

        // Acceptor unplugged
        '6' : begin
              MDB_Status := 6;
              Label_MDB_STATUS.Caption := 'Acceptor unplugged';
              end;

        // Tube jam
        '7' : begin
              MDB_Status := 7;
              Label_MDB_STATUS.Caption := 'Tube jam';
              end;

        // ROM checksum error
        '8' : begin
              MDB_Status := 8;
              Label_MDB_STATUS.Caption := 'ROM checksum error';
              end;

        // Coin routing error
        '9' : begin
              MDB_Status := 9;
              Label_MDB_STATUS.Caption := 'Coin routing error';
              end;

        // Changer busy
        'A' : begin
              MDB_Status := 10;
              Label_MDB_STATUS.Caption := 'Changer busy';
              end;

        // Changer was reset
        'B' : begin
              MDB_Status := 11;
              Label_MDB_STATUS.Caption := 'Changer was reset';
              end;

        // Coin jam
        'C' : begin
              MDB_Status := 12;
              Label_MDB_STATUS.Caption := 'Coin jam';
              end;

      end;

      Timer_MSG_MDB_STATUS := 0;

      Delete(MDB_COM_BUFFER, 1, 7); // Liberamos del buffer la trama que parseamos.



  end else

  // --------------
  // ESTATUTO TUBOS
  // --------------
  // 00 00 vv 00 ww xx yy zz 00 00 00 00 00 00 00 00 00 00 tt
  // Longitud de la cadena 58 caracteres
  // vv -> 50 Centavos [7][8] - Tubo A
  // ww -> 1 Peso      [13][14] - Tubo B
  // xx -> 2 Pesos     [16][17] - Tubo D
  // yy -> 5 Pesos     [19][20] - Tubo E
  // zz -> 10 Pesos    [22][23] - Tubo C
  // FINAL -> #13 #10  [57][58]


  if ((MDB_COM_BUFFER[1] = '0') and (MDB_COM_BUFFER[2] = '0') and (MDB_COM_BUFFER[3] = ' ') and (MDB_COM_BUFFER[4] = '0') and (MDB_COM_BUFFER[5] = '0')) then begin


      // Loopeamos hasta tener el final de la trama para asegurarnos de que viene completa.
      // Verificamos los 2 bytes del final
      watchdog := 0;
      repeat
      watchdog := watchdog + 1;

      if (watchdog >= 20000) then begin
        Delete(MDB_COM_BUFFER, 1, 1);
        exit;
      end;

      until ((MDB_COM_BUFFER[58] = #13) and (MDB_COM_BUFFER[59] = #10));

      // Recuperamos la cantidad de monedas presentes en cada tubo
      m50c := ((StrToInt('$' + MDB_COM_BUFFER[7]))*16) + (StrToInt('$' + MDB_COM_BUFFER[8]));
      m1p  := ((StrToInt('$' + MDB_COM_BUFFER[13]))*16) + (StrToInt('$' + MDB_COM_BUFFER[14]));
      m2p  := ((StrToInt('$' + MDB_COM_BUFFER[16]))*16) + (StrToInt('$' + MDB_COM_BUFFER[17]));
      m5p  := ((StrToInt('$' + MDB_COM_BUFFER[19]))*16) + (StrToInt('$' + MDB_COM_BUFFER[20]));
      m10p := ((StrToInt('$' + MDB_COM_BUFFER[22]))*16) + (StrToInt('$' + MDB_COM_BUFFER[23]));



      Label_MDB_tubeA.Caption := inttostr(m50c);
      Label_MDB_tubeB.Caption := inttostr(m1p);
      Label_MDB_tubeD.Caption := inttostr(m2p);
      Label_MDB_tubeE.Caption := inttostr(m5p);
      Label_MDB_tubeC.Caption := inttostr(m10p);

      Label_MDB_totalTubes.Caption := inttostr( (m50c div 2) + (m1p)+(m2p*2)+(m5p*5)+(m10p*10) )+'$MXN';

      Delete(MDB_COM_BUFFER, 1, 58); // Liberamos del buffer la trama que parseamos.

  end

  else begin

    // Detectamos otro tipo de entrada, la ignoramos

      Delete(MDB_COM_BUFFER, 1, 1); // Liberamos del buffer la trama que parseamos.

  end;


end;



end.
