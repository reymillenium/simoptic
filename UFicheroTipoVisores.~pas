unit UFicheroTipoVisores;

interface

uses
  Classes, Forms;

type
  TFicheroTipoVisores = class(TObject)
  private
  protected
    { Protected declarations }
    FTipoVisorSimulacionImagenes: TStringList;

    FTipoVisorEntrenamientoMicroscopioOptico: TStringList;

    FTipoVisorEntrenamientoCasosTipicos: TStringList;
  public
    constructor New;
    
    procedure CargarTiposDeVisores;

    procedure SalvarTipoVisorSimulacionImagenes;

    procedure SalvarTipoVisorEntrenamientoMicroscopioOptico;

    procedure SalvarTipoVisorEntrenamientoCasosTipicos;


    function DeterminarTipoVisorSimulacionImagenes: String;

    function DeterminarTipoVisorEntrenamientoMicroscopioOptico: String;

    function DeterminarTipoVisorEntrenamientoCasosTipicos: String;


    procedure SetTipoVisorSimulacionImagenes(aAlign: String);

    procedure SetTipoVisorEntrenamientoMicroscopioOptico(aAlign: String);

    procedure SetTipoVisorEntrenamientoCasosTipicos(aAlign: String);

    

    property TipoVisorSimulacionImagenes: TStringList read FTipoVisorSimulacionImagenes Write FTipoVisorSimulacionImagenes;

    property TipoVisorEntrenamientoMicroscopioOptico: TStringList read FTipoVisorEntrenamientoMicroscopioOptico Write FTipoVisorEntrenamientoMicroscopioOptico;

    property TipoVisorEntrenamientoCasosTipicos: TStringList read FTipoVisorEntrenamientoCasosTipicos Write FTipoVisorEntrenamientoCasosTipicos;

    //property ContenidoOriginal: TStringList read FContenidoOriginal;
    //property ContenidoNuevo: TStringList read FContenidoNuevo;

  end;

var
 FFicheroTipoVisores: TFicheroTipoVisores;

implementation

uses SysUtils, StrUtils;

  { TUnit }




procedure TFicheroTipoVisores.CargarTiposDeVisores;
begin
  //FContenidoOriginal.LoadFromFile(way);
  //FContenidoNuevo.LoadFromFile(way);

  //Cargo los ficheros de alineacion de los visores
  FTipoVisorSimulacionImagenes.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Tipo\Simulacion\Kind.txt');

  FTipoVisorEntrenamientoMicroscopioOptico.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Tipo\Entrenamiento\Seccion1\Kind.txt');

  FTipoVisorEntrenamientoCasosTipicos.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Tipo\Entrenamiento\Seccion2\Kind.txt');
end;



Constructor TFicheroTipoVisores.New;
begin
  inherited Create;
  TipoVisorSimulacionImagenes:= TStringList.Create;

  TipoVisorEntrenamientoMicroscopioOptico:= TStringList.Create;

  TipoVisorEntrenamientoCasosTipicos:= TStringList.Create;
end;



function TFicheroTipoVisores.DeterminarTipoVisorEntrenamientoCasosTipicos: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= TipoVisorEntrenamientoCasosTipicos.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



function TFicheroTipoVisores.DeterminarTipoVisorEntrenamientoMicroscopioOptico: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= TipoVisorEntrenamientoMicroscopioOptico.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



function TFicheroTipoVisores.DeterminarTipoVisorSimulacionImagenes: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= TipoVisorSimulacionImagenes.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



procedure TFicheroTipoVisores.SetTipoVisorEntrenamientoCasosTipicos(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= TipoVisorEntrenamientoCasosTipicos.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  TipoVisorEntrenamientoCasosTipicos.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  TipoVisorEntrenamientoCasosTipicos.Strings[0]:= aAlign;
end;



procedure TFicheroTipoVisores.SetTipoVisorEntrenamientoMicroscopioOptico(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= TipoVisorEntrenamientoMicroscopioOptico.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  TipoVisorEntrenamientoMicroscopioOptico.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  TipoVisorEntrenamientoMicroscopioOptico.Strings[0]:= aAlign;
end;



procedure TFicheroTipoVisores.SetTipoVisorSimulacionImagenes(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= TipoVisorSimulacionImagenes.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  TipoVisorSimulacionImagenes.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  TipoVisorSimulacionImagenes.Strings[0]:= aAlign;
end;



procedure TFicheroTipoVisores.SalvarTipoVisorEntrenamientoCasosTipicos;
begin
  //Salvo el fichero de alineacion
  FTipoVisorEntrenamientoCasosTipicos.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Tipo\Entrenamiento\Seccion2\Kind.txt');
end;



procedure TFicheroTipoVisores.SalvarTipoVisorEntrenamientoMicroscopioOptico;
begin
  //Salvo el fichero de alineacion
  FTipoVisorEntrenamientoMicroscopioOptico.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Tipo\Entrenamiento\Seccion1\Kind.txt');end;



procedure TFicheroTipoVisores.SalvarTipoVisorSimulacionImagenes;
begin
  //Salvo el fichero de alineacion
  FTipoVisorSimulacionImagenes.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Tipo\Simulacion\Kind.txt');
end;



end.
