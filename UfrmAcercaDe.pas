unit UfrmAcercaDe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ShellApi,

  UFicheroIdioma, Menus, LbButton;

type
  TfrmAcercaDe = class(TForm)
    Panel1: TPanel;
    lblCreadoPor: TLabel;
    lblNombreMio: TLabel;
    imgLogoSimOpticPresentacion: TImage;
    Label2: TLabel;
    lblFecha: TLabel;
    lblNombreRolando: TLabel;
    Label3: TLabel;
    lblVersionYCompilacion: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    btnAceptar: TLbButton;
    lblNombreGregorio: TLabel;
    lblNombreMaye: TLabel;
    procedure lblCorreoMioClick(Sender: TObject);
    procedure lblCorreoRolandoClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblCorreoGregorioClick(Sender: TObject);
    procedure lblNombreMayeClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetIdiomaEspannol;
    procedure SetIdiomaIngles;    
  public
    { Public declarations }
  end;

var
  frmAcercaDe: TfrmAcercaDe;

  FicheroIdiomaInicio: TFicheroIdioma;
  IdiomaImperante: AnsiString;

implementation

{$R *.dfm}

procedure TfrmAcercaDe.lblCorreoMioClick(Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (lblNombreMio.Caption <> '')
    then
      begin
        Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       'reiniermillenium@gmail.com'),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            Cursor:= crDefault;
          end;
end;

procedure TfrmAcercaDe.lblCorreoRolandoClick(Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (lblNombreRolando.Caption <> '')
    then
      begin
        Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       'rolando.hdez@yahoo.com'),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            Cursor:= crDefault;
          end;
end;



procedure TfrmAcercaDe.btnAceptarClick(Sender: TObject);
begin
  //Cierro la forma
  frmAcercaDe.Close;
end;

procedure TfrmAcercaDe.FormShow(Sender: TObject);
begin
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

                  //Instauro el idioma espannol
                  SetIdiomaEspannol;
                end;
          end; 
end;

procedure TfrmAcercaDe.SetIdiomaEspannol;
begin
  frmAcercaDe.Caption:= 'Acerca de SimOptic 2008';
  lblVersionYCompilacion.Caption:= 'Compilación 17.7';
  lblCreadoPor.Caption:= 'Creado por :';
  lblFecha.Caption:= 'Septiembre del 2008.';
  btnAceptar.Caption:= 'Aceptar';
end;

procedure TfrmAcercaDe.SetIdiomaIngles;
begin
  frmAcercaDe.Caption:= 'About SimOptic 2008';
  lblVersionYCompilacion.Caption:= 'Build 17.7';
  lblCreadoPor.Caption:= 'Created by :';
  lblFecha.Caption:= 'September 2008.';
  btnAceptar.Caption:= 'OK';
end;

procedure TfrmAcercaDe.lblCorreoGregorioClick(Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (lblNombreGregorio.Caption <> '')
    then
      begin
        Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       'ramosgregorio@hotmail.com'),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            Cursor:= crDefault;
          end;
end;

procedure TfrmAcercaDe.lblNombreMayeClick(Sender: TObject);
begin
  //Verifico primero que se haya encontrado un email
  if (lblNombreMaye.Caption <> '')
    then
      begin
        Cursor:= crHandPoint;
        ShellExecute(GetDesktopWindow(),
                       nil,
                       pChar('mailto:'+
                       'mayelinespino@gmail.com'),
                       nil,
                       nil,
                       SW_SHOWNORMAL);
      end
        else
          begin
            Cursor:= crDefault;
          end;
end;

end.
