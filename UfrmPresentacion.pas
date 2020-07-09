unit UfrmPresentacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, ComCtrls, MarqueeProgressBar, QProgBar,
  ShellApi, mxProtector, LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs,
  
  //Clases entidad
  UFicheroIdioma, UPantalla,

  //Clases interfaz (formas)
  UfrmRegistro;

type
  TfrmPresentacion = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;

    Image1: TImage;
    Panel5: TPanel;
    Label5: TLabel;
    lblVersionYCompilacion: TLabel;
    Label3: TLabel;
    QProgressBarCargando: TQProgressBar;
    mxProtector: TmxProtector;
    lblbtnEvaluar: TLbButton;
    lblMensaje: TLabel;
    lblbtnRegistrar: TLbButton;
    lblQuedando: TLabel;
    lblbtnCerrar: TLbButton;
    FontDialogSimulacionImagenes: TFontDialog;
    lblMensaje2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SetIdiomaEspannol;
    procedure SetIdiomaIngles;

    procedure ProcessRights;    

    procedure mxProtectorDayTrial(Sender: TObject; DaysRemained: Integer);
    procedure mxProtectorExpiration(Sender: TObject);
    procedure mxProtectorInvalidSystemTime(Sender: TObject);
    procedure lblbtnEvaluarClick(Sender: TObject);
    procedure lblbtnCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblbtnRegistrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Variables para la configuracion del modo de pantalla (optimo = 1024 X 768)
    AnchoOriginalPantalla: Integer;
    AltoOriginalPantalla: Integer;

    IdiomaImperante: AnsiString;   
  end;

var
  frmPresentacion: TfrmPresentacion;
  FicheroIdiomaInicio: TFicheroIdioma;

implementation
{$R *.dfm}

Var
    //Variables para la configuracion del modo de pantalla (optimo = 1024 X 768)
    Pantalla: TPantalla;


procedure TfrmPresentacion.Timer1Timer(Sender: TObject);
begin
  //Adelanto un paso mas el ProgressBar de la presentacion
  QProgressBarCargando.position:= QProgressBarCargando.position + 1;

  //Verifico si llegó al final el Gauge
  if (QProgressBarCargando.position = 100)
    then
      begin
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              //Cambio el caption
              QProgressBarCargando.caption:= 'Listo';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        //Cambio el caption
                        QProgressBarCargando.caption:= 'Ready';
                      end;
                end;
      end;

      

  //Verifico si está registrado y llegó al final el Gauge
  if (   (mxProtector.IsRegistered = True) and (QProgressBarCargando.position = 100)   )
    then
      begin
        //Cierro la forma (presentacion), para pasar a la Forma Principal
        frmPresentacion.Close;
      end;
end;



procedure TfrmPresentacion.Timer2Timer(Sender: TObject);
begin
  //frmPresentacion.Close;
end;



procedure TfrmPresentacion.FormShow(Sender: TObject);
const
  //clPaleGreen= TColor($CCFFCC);
  //clPaleRed= TColor($CCCCFF);
  clStrongRed=TColor($006C6CFF);
begin
  //Le cambio el color al ProgressBar
  //PostMessage(ProgressBar1.Handle, $0409, 0, clStrongRed);

  //Creo el fichero de idioma
  FicheroIdiomaInicio:= TFicheroIdioma.New;

  //Cargo el fichero de idioma
  FicheroIdiomaInicio.Cargar(ExtractFilePath(Application.ExeName) + 'Languaje\lang.txt');

  //Determino el idoma a mostrar en a interfaz
  if (FicheroIdiomaInicio.DeterminarIdiomaImperante = 'Ingles')
    then
      begin
        //Actualizo la variable indicadora de idioma imperante
        IdiomaImperante:= 'Ingles';

        //Le especifico el idioma español para los dialogs
        MsgOptions.DefLang:= ltEnglish;

        //Instauro el idioma ingles
        SetIdiomaIngles;
      end
        else
          begin
            if (FicheroIdiomaInicio.DeterminarIdiomaImperante = 'Espannol')
              then
                begin
                  //Actualizo la variable indicadora de idioma imperante
                  IdiomaImperante:= 'Espannol';

                  //Le especifico el idioma español para los dialogs
                  MsgOptions.DefLang:= ltSpanish;

                  //Instauro el idioma espannol
                  SetIdiomaEspannol;
                end;
          end;

  //Chequeo el Periodo de Prueba
  mxProtector.CheckDayTrial;
  
  //Chequeo el Registro
  mxProtector.CheckRegistration;
  
  //Verifico si está registrado el producto
  if (mxProtector.IsRegistered = True)
    then
      begin
        //Escondo todos los botones
        lblbtnEvaluar.Visible:= False;
        lblbtnCerrar.Visible:= False;
        lblbtnRegistrar.Visible:= False;

        //Escondo el label de tiempo restante
        lblQuedando.Visible:= False;
        
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              lblMensaje.Caption := 'Versión Registrada por ' + mxProtector.UserName;
              lblMensaje2.Caption := '';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        lblMensaje.Caption := 'Registered Version by ' + mxProtector.UserName;
                        lblMensaje2.Caption := '';
                      end;
                end;
      end;


end;



procedure TfrmPresentacion.SetIdiomaEspannol;
begin
  //Pongo los Captions
  lblVersionYCompilacion.Caption:= 'Compilación 17.7';
  QProgressBarCargando.caption:= 'Cargando';


  lblbtnEvaluar.Caption:= 'Evaluar';
  lblbtnCerrar.Caption:= 'Cerrar';
  lblbtnRegistrar.Caption:= 'Registrar';
  
  //Pongo los Hints
  lblbtnEvaluar.Hint:= 'Período de Evaluación';
  lblbtnCerrar.Hint:= 'Cerrar la Aplicación';
  lblbtnRegistrar.Hint:= 'Registrar SimOptic 2008';
  
end;



procedure TfrmPresentacion.SetIdiomaIngles;
begin
  //Pongo los Captions en Ingles
  lblVersionYCompilacion.Caption:= 'Build 17.7';
  QProgressBarCargando.caption:= 'Loading';

  lblbtnEvaluar.Caption:= 'Trial';
  lblbtnCerrar.Caption:= 'Close';
  lblbtnRegistrar.Caption:= 'Register';

  //Pongo los Hints en Ingles
  lblbtnEvaluar.Hint:= 'Trial Period';
  lblbtnCerrar.Hint:= 'Close the Application';
  lblbtnRegistrar.Hint:= 'Register SimOptic 2008';
end;



procedure TfrmPresentacion.mxProtectorDayTrial(Sender: TObject; DaysRemained: Integer);
begin
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        If DaysRemained = 1
          then
            begin
              lblMensaje.Caption := 'Versión de Evaluación';
              lblQuedando.Caption := 'Solo falta un día de prueba';
            end
              else
                begin
                  lblMensaje.Caption := 'Versión de Evaluación';
                  lblQuedando.Caption := Format( 'El período de prueba expirará dentro de %d días.', [ DaysRemained ] );
                end;
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  If DaysRemained = 1
                    then
                      begin
                        lblMensaje.Caption := 'Shareware Edition';
                        lblQuedando.Caption := 'Only one trial day left';
                      end
                        else
                          begin
                            lblMensaje.Caption := 'Shareware Edition';
                            lblQuedando.Caption := Format( 'This trial period will expire after %d days.', [ DaysRemained ] );
                          end;
                end;
          end;
  //lblQuedando.Caption := Format( 'This trial period will expire after %d days.', [ DaysRemained ] );
  //Muestro la opcion de evaluar
  lblbtnEvaluar.Enabled := True;
  lblbtnEvaluar.Visible := True;
end;



procedure TfrmPresentacion.mxProtectorExpiration(Sender: TObject);
begin
{
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin

      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin

                end;
          end;
}

  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        lblQuedando.Caption := 'Quedan 0 días de prueba';
        lblMensaje.Caption := 'El período de evaluación ha expirado.';
        lblMensaje2.Caption := 'Debe registrar el sistema.';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  lblQuedando.Caption := '0 days remained';
                  lblMensaje.Caption := 'The trial period has expired.';
                  lblMensaje2.Caption := 'You must register the system.';
                end;
          end;

  //Escondo la opcion de evaluar
  lblbtnEvaluar.Enabled := False;
  lblbtnEvaluar.Visible := False;
end;



procedure TfrmPresentacion.mxProtectorInvalidSystemTime(Sender: TObject);
begin
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        MessageDlg( 'Your system time is invalid.' + #13 + #10 + 'Please set the correct date and time to continue.', mtError, [ mbOK ], 0 );
      end
        else
          begin
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  MessageDlg( 'La hora de su sistema no es válida.' + #13 + #10 + 'Por favor ponga la fecha y hora correcta para continuar.', mtError, [ mbOK ], 0 );
                end;
          end;
end;



procedure TfrmPresentacion.lblbtnEvaluarClick(Sender: TObject);
begin
  //Cierro la forma (presentacion), para pasar a la Forma Principal
  frmPresentacion.Close;
end;

procedure TfrmPresentacion.lblbtnCerrarClick(Sender: TObject);
begin
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        if MessageDlg('¿Desea cerrar el sistema SimOptic 2008?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
          then
            begin
              //Restituyo la resolución de la pantalla
              Pantalla.CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

              //Termino la aplicación
              Application.Terminate;
            end;
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  if MessageDlg('Do you want to close the SimOptic 2008 system?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                    then
                      begin
                        //Restituyo la resolución de la pantalla
                        Pantalla.CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

                        //Termino la aplicación
                        Application.Terminate;
                      end;
                end
                  else
                    begin //Otro lenguaje aun no comprendido, o sino por edicion no autorizada del fichero de idioma
                      //Restituyo la resolución de la pantalla
                      Pantalla.CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

                      //Termino la aplicación
                      Application.Terminate;
                    end;
          end;
end;



procedure TfrmPresentacion.FormCreate(Sender: TObject);
begin
  //Creo una instancia de la clase pantalla
  Pantalla:= TPantalla.Create;
  
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



procedure TfrmPresentacion.lblbtnRegistrarClick(Sender: TObject);
begin
  //Envio el Idioma Imperante hacia la Forma de Registro
  frmRegistro.IdiomaImperante:= IdiomaImperante;
  
  //Muestro la Forma de Registro
  frmRegistro.ShowModal;
  
  //Verifico si se registró bien
  if (frmRegistro.mxProtector.IsRegistered = True)
    then
      begin
        //Escondo todos los botones
        lblbtnEvaluar.Visible:= False;
        lblbtnCerrar.Visible:= False;
        lblbtnRegistrar.Visible:= False;

        //Escondo el label de tiempo restante
        lblQuedando.Visible:= False;
        
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              lblMensaje.Caption := 'Versión Registrada por ' + frmRegistro.mxProtector.UserName;
              lblMensaje2.Caption := '';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        lblMensaje.Caption := 'Registered Version by ' + frmRegistro.mxProtector.UserName;
                        lblMensaje2.Caption := '';
                      end;
                end;

        //Cierro la aplicacion
        frmPresentacion.Close;
      end;
end;



procedure TfrmPresentacion.ProcessRights;
begin
  lblbtnRegistrar.Enabled:= Not mxProtector.IsRegistered;
  
  //btn_Register.Enabled := ( Edit_UserName.Text <> '' ) And ( Edit_Serial.Text <> '' ) And ( Not mxProtector.IsRegistered );

  //verifico si está registrado
  If ( mxProtector.IsRegistered)
    then
      begin
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              lblMensaje.Caption := 'Versión Registrada a ' + mxProtector.UserName;
              lblMensaje2.Caption := '';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        lblMensaje.Caption := 'Registered Version to ' + mxProtector.UserName;
                        lblMensaje2.Caption := '';
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
                  lblMensaje2.Caption := '';
                end
                  else
                    begin
                      if (IdiomaImperante = 'Ingles')
                        then
                          begin
                            lblMensaje.Caption := 'Shareware Edition';
                            lblMensaje2.Caption := '';
                          end;
                    end;
          end;
end;



end.
