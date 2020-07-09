unit UfrmRegistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, mxProtector, StdCtrls, AdvGroupBox, LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, ExtCtrls, AdvPanel, AppEvnts;

type
  TfrmRegistro = class(TForm)
    mxProtector: TmxProtector;
    FontDialogSimulacionImagenes: TFontDialog;
    AdvPanel1: TAdvPanel;
    lblMensaje: TLabel;
    lblHardwareID: TLabel;
    edtHardwareID: TEdit;
    AdvGroupBoxDatosDeRegistro: TAdvGroupBox;
    lblUsuario: TLabel;
    lblNumeroSerie: TLabel;
    edtUsuario: TEdit;
    edtNumeroSerie: TEdit;
    lblbtnCerrar: TLbButton;
    lblbtnRegistrar: TLbButton;
    procedure lblbtnCerrarClick(Sender: TObject);
    procedure mxProtectorInvalidSerialNumber(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SetIdiomaEspannol;
    procedure SetIdiomaIngles;
    procedure ProcessRights;

    procedure lblbtnRegistrarClick(Sender: TObject);
    procedure mxProtectorGetSerialNumber(Sender: TObject; var UserName, SerialNumber: String);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdiomaImperante: AnsiString;

    //Usuario: AnsiString;
    //NumeroSerie: AnsiString;
  end;

var
  frmRegistro: TfrmRegistro;

implementation

{$R *.dfm}

procedure TfrmRegistro.lblbtnCerrarClick(Sender: TObject);
begin
  //Cierro la forma de Registro
  frmRegistro.Close;
end;

procedure TfrmRegistro.mxProtectorInvalidSerialNumber(Sender: TObject);
begin
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        MessageDlg( 'El Número de Serie no es válido!', mtError, [ mbOK ], 0 );
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  MessageDlg( 'This Serial Number is invalid!', mtError, [ mbOK ], 0 );
                end;
          end;
end;

procedure TfrmRegistro.FormCreate(Sender: TObject);
begin
  
  
  //--------------------------------------------------
  //*** Estipulo la configuracion para los dialogs ***
  //--------------------------------------------------
  //Customizo los botones y paneles para los dialogs
  MsgOptions.CustomButtonsColorScheme := btncsNeoSky;
  MsgOptions.CustomPanelColorScheme := pnlcsSky;
  //MsgOptions.CustomProgressColorScheme := procsSky;   //no es necesario en los dialogs
  
  //Usar customizacion para paneles de los dialogs
  MsgOptions.UseCustomPanel := True;

  //Usar customizacion para botones de los dialogs
  MsgOptions.UseCustomButtons := True;

  //Usar customizacion para el font de los dialogs
  MsgOptions.UseCustomFont := True;

  //Le especifico un font adecuado para los dialogs
  MsgOptions.Font.Assign(FontDialogSimulacionImagenes.Font);

  //Usar gradiente en los dialogs
  MsgOptions.UseGradient := True;

  //Usar forma especial en los botones de los dialogs
  MsgOptions.UseShapedForm := True;

  //No mostrar bordes en los dialogs
  MsgOptions.UseBorder := False;

  //MsgOptions.FormRoundSize := 15;
  //MsgOptions.StartGradientColor := clNavy;
  //MsgOptions.EndGradientColor := clBlack;

  //Color de
    //MsgOptions.StartGradientColor := 15448477; //clGradientInactiveCaption;
    //MsgOptions.EndGradientColor := 16749885; //clGradientActiveCaption;

  //MsgOptions.Font.Name := 'Tahoma';
  //MsgOptions.Font.Style := [fsBold];
end;



procedure TfrmRegistro.FormShow(Sender: TObject);
begin
  //Borro lo que esté en los Edits de entrada de datos
  edtUsuario.Clear;
  edtNumeroSerie.Clear;

  //Proceso los derechos de registro
  ProcessRights;
  
  //Muestro el ID de Hardware
  edtHardwareID.Text:= mxProtector.GetHardwareID;
  
  //Determino el idoma a mostrar en a interfaz
  if (IdiomaImperante = 'Ingles')
    then
      begin
        //Le especifico el idioma español para los dialogs
        MsgOptions.DefLang:= ltEnglish;

        //Instauro el idioma ingles
        SetIdiomaIngles;
      end
        else
          begin
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  //Le especifico el idioma español para los dialogs
                  MsgOptions.DefLang:= ltSpanish;

                  //Instauro el idioma espannol
                  SetIdiomaEspannol;
                end;
          end;
end;



procedure TfrmRegistro.SetIdiomaEspannol;
begin
  //Pongo los Captions en Español
  frmRegistro.Caption:= 'Registro de SimOptic 2008';
  
  lblHardwareID.Caption:= 'ID de Hardware:';
  lblUsuario.Caption:= 'Usuario:';
  lblNumeroSerie.Caption:= 'Numero de Serie:';

  AdvGroupBoxDatosDeRegistro.Caption:= ' Entre los Siguientes Datos: ';

  lblbtnCerrar.Caption:= 'Cerrar';
  lblbtnRegistrar.Caption:= 'Registrar';
end;



procedure TfrmRegistro.SetIdiomaIngles;
begin
  //Pongo los Captions en Inglés
  frmRegistro.Caption:= 'SimOptic 2008 Register Form';

  lblMensaje.Caption:= 'Shareware Edition';
  
  lblHardwareID.Caption:= 'Hardware ID:';
  lblUsuario.Caption:= 'Username:';
  lblNumeroSerie.Caption:= 'Serial Number:';

  AdvGroupBoxDatosDeRegistro.Caption:= ' Enter the Following Data: ';

  lblbtnCerrar.Caption:= 'Close';
  lblbtnRegistrar.Caption:= 'Register';
end;



procedure TfrmRegistro.lblbtnRegistrarClick(Sender: TObject);
begin
  //Guardo los datos en las variables globales
  //mxProtector.UserName:= edtUsuario.Text;
  //mxProtector.

  //Usuario:= edtUsuario.Text;
  //NumeroSerie:= edtNumeroSerie.Text;

  //Mando a Registrar y verifico derechos de registro

  if (edtUsuario.Text <> '')
    then
      begin
        mxProtector.Registration;
        ProcessRights;
      end
        else
          begin
            //En dependencia del idioma imperante
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  MessageDlg( '¡Debe teclear el Usuario y el Número de Serie' + #13 + 'para poder registrar SimOptic 2008!', mtInformation, [ mbOK ], 0 );
                end
                  else
                    begin
                      if (IdiomaImperante = 'Ingles')
                        then
                          begin
                            MessageDlg( 'You must type the Username and Serial Number to register SimOptic 2008!', mtInformation, [ mbOK ], 0 );
                          end;
                    end;
          end;

  //Verifico nuevamente para el cartel
  If (mxProtector.IsRegistered)
    then
      begin
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              MessageDlg( 'Gracias por registrar SimOptic 2008!', mtInformation, [ mbOK ], 0 );

              //Cierro la Forma de Registro
              frmRegistro.Close;
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        MessageDlg( 'Thanks for register SimOptic 2008!', mtInformation, [ mbOK ], 0 );

                        //Cierro la Forma de Registro
                        frmRegistro.Close;
                      end;
                end;

      end  
end;



procedure TfrmRegistro.mxProtectorGetSerialNumber(Sender: TObject; var UserName, SerialNumber: String);
begin
  //Intento Registrar
  //UserName := Usuario;
  //SerialNumber := NumeroSerie;

  UserName := edtUsuario.Text;
  SerialNumber := edtNumeroSerie.Text;;
end;



procedure TfrmRegistro.ProcessRights;
begin
  lblbtnRegistrar.Enabled:= Not mxProtector.IsRegistered;
  AdvGroupBoxDatosDeRegistro.Enabled:= Not mxProtector.IsRegistered;
  
  //btn_Register.Enabled := ( Edit_UserName.Text <> '' ) And ( Edit_Serial.Text <> '' ) And ( Not mxProtector.IsRegistered );

  //verifico si está registrado
  If (mxProtector.IsRegistered)
    then
      begin
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              lblMensaje.Caption := 'Versión Registrada por ' + mxProtector.UserName;
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        lblMensaje.Caption := 'Registered Version by ' + mxProtector.UserName;
                      end;
                end;

      end
        else
          begin
            //En dependencia del idioma imperante
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  lblMensaje.Caption := 'Versión de Evaluación';
                end
                  else
                    begin
                      if (IdiomaImperante = 'Ingles')
                        then
                          begin
                            lblMensaje.Caption := 'Shareware Edition';
                          end;
                    end;
          end;
end;



procedure TfrmRegistro.Button1Click(Sender: TObject);
begin
        mxProtector.Reset;
        ProcessRights;
end;

end.
