unit UPantalla;

interface

uses
  Classes, ShellApi, Windows, Messages, SysUtils;
  
type
  TPantalla = Class(TObject)
  private
    FAnchoOriginalPantalla: Integer;
    FAltoOriginalPantalla: Integer;


  public
    Constructor Create;
    Destructor Destroy;
    function CambiarResolucion(XRes, YRes: DWord): integer;

    //propertys de acceso a los campos del Puesto de Trabajo (5 campos)
	  property AnchoOriginalPantalla: Integer read FAnchoOriginalPantalla write FAnchoOriginalPantalla;
    property AltoOriginalPantalla: Integer read FAltoOriginalPantalla write FAltoOriginalPantalla;


end;

implementation

{ TPuestoDeTrabajo }

function TPantalla.CambiarResolucion(XRes, YRes: DWord): integer;
var
  lpDevMode : TDeviceMode;
begin
//Cambio la resolución de la pantalla a los valores
  EnumDisplaySettings(nil, 0, lpDevMode);
  lpDevMode.dmFields:=DM_PELSWIDTH or DM_PELSHEIGHT;
  lpDevMode.dmPelsWidth:=XRes;
  lpDevMode.dmPelsHeight:=YRes;
  CambiarResolucion:=ChangeDisplaySettings(lpDevMode, 0);
end;



Constructor TPantalla.Create;
begin
  inherited Create;
end;

Destructor TPantalla.Destroy;
begin
   inherited Destroy;
end;

end.
