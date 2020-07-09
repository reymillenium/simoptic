unit UFicheroAlineacionVisores;

interface

uses
  Classes, Forms;

type
  TFicheroAlineacionVisores = class(TObject)
  private
  protected
    { Protected declarations }
    FAlineacionVerticalSimulacionImagenes: TStringList;
    FAlineacionHorizontalSimulacionImagenes: TStringList;

    FAlineacionVerticalEntrenamientoMicroscopioOptico: TStringList;
    FAlineacionHorizontalEntrenamientoMicroscopioOptico: TStringList;

    FAlineacionVerticalEntrenamientoCasosTipicos: TStringList;
    FAlineacionHorizontalEntrenamientoCasosTipicos: TStringList;
  public
    constructor New;
    
    procedure CargarAlineaciones;

    procedure SalvarAlineacionVerticalSimulacionImagenes;
    procedure SalvarAlineacionHorizontalSimulacionImagenes;

    procedure SalvarAlineacionVerticalEntrenamientoMicroscopioOptico;
    procedure SalvarAlineacionHorizontalEntrenamientoMicroscopioOptico;

    procedure SalvarAlineacionVerticalEntrenamientoCasosTipicos;
    procedure SalvarAlineacionHorizontalEntrenamientoCasosTipicos;


    function DeterminarAlineacionVerticalSimulacionImagenes: String;
    function DeterminarAlineacionHorizontalSimulacionImagenes: String;

    function DeterminarAlineacionVerticalEntrenamientoMicroscopioOptico: String;
    function DeterminarAlineacionHorizontalEntrenamientoMicroscopioOptico: String;

    function DeterminarAlineacionVerticalEntrenamientoCasosTipicos: String;
    function DeterminarAlineacionHorizontalEntrenamientoCasosTipicos: String;
    

    procedure SetAlineacionVerticalSimulacionImagenes(aAlign: String);
    procedure SetAlineacionHorizontalSimulacionImagenes(aAlign: String);

    procedure SetAlineacionVerticalEntrenamientoMicroscopioOptico(aAlign: String);
    procedure SetAlineacionHorizontalEntrenamientoMicroscopioOptico(aAlign: String);

    procedure SetAlineacionVerticalEntrenamientoCasosTipicos(aAlign: String);
    procedure SetAlineacionHorizontalEntrenamientoCasosTipicos(aAlign: String);

    

    property AlineacionVerticalSimulacionImagenes: TStringList read FAlineacionVerticalSimulacionImagenes Write FAlineacionVerticalSimulacionImagenes;
    property AlineacionHorizontalSimulacionImagenes: TStringList read FAlineacionHorizontalSimulacionImagenes Write FAlineacionHorizontalSimulacionImagenes;

    property AlineacionVerticalEntrenamientoMicroscopioOptico: TStringList read FAlineacionVerticalEntrenamientoMicroscopioOptico Write FAlineacionVerticalEntrenamientoMicroscopioOptico;
    property AlineacionHorizontalEntrenamientoMicroscopioOptico: TStringList read FAlineacionHorizontalEntrenamientoMicroscopioOptico Write FAlineacionHorizontalEntrenamientoMicroscopioOptico;

    property AlineacionVerticalEntrenamientoCasosTipicos: TStringList read FAlineacionVerticalEntrenamientoCasosTipicos Write FAlineacionVerticalEntrenamientoCasosTipicos;
    property AlineacionHorizontalEntrenamientoCasosTipicos: TStringList read FAlineacionHorizontalEntrenamientoCasosTipicos Write FAlineacionHorizontalEntrenamientoCasosTipicos;

    //property ContenidoOriginal: TStringList read FContenidoOriginal;
    //property ContenidoNuevo: TStringList read FContenidoNuevo;

  end;

var
 FFicheroAlineacionVisores: TFicheroAlineacionVisores;

implementation

uses SysUtils, StrUtils;

  { TUnit }




procedure TFicheroAlineacionVisores.CargarAlineaciones;
begin
  //FContenidoOriginal.LoadFromFile(way);
  //FContenidoNuevo.LoadFromFile(way);

  //Cargo los ficheros de alineacion de los visores
  FAlineacionVerticalSimulacionImagenes.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Vertical\Simulacion\Align.txt');
  FAlineacionHorizontalSimulacionImagenes.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Horizontal\Simulacion\Align.txt');

  FAlineacionVerticalEntrenamientoMicroscopioOptico.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Vertical\Entrenamiento\Seccion1\Align.txt');
  FAlineacionHorizontalEntrenamientoMicroscopioOptico.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Horizontal\Entrenamiento\Seccion1\Align.txt');

  FAlineacionVerticalEntrenamientoCasosTipicos.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Vertical\Entrenamiento\Seccion2\Align.txt');
  FAlineacionHorizontalEntrenamientoCasosTipicos.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Horizontal\Entrenamiento\Seccion2\Align.txt');
end;



Constructor TFicheroAlineacionVisores.New;  
begin
  inherited Create;
  AlineacionVerticalSimulacionImagenes:= TStringList.Create;
  AlineacionHorizontalSimulacionImagenes:= TStringList.Create;

  AlineacionVerticalEntrenamientoMicroscopioOptico:= TStringList.Create;
  AlineacionHorizontalEntrenamientoMicroscopioOptico:= TStringList.Create;

  AlineacionVerticalEntrenamientoCasosTipicos:= TStringList.Create;
  AlineacionHorizontalEntrenamientoCasosTipicos:= TStringList.Create;
end;



function TFicheroAlineacionVisores.DeterminarAlineacionHorizontalEntrenamientoCasosTipicos: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= AlineacionHorizontalEntrenamientoCasosTipicos.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



function TFicheroAlineacionVisores.DeterminarAlineacionHorizontalEntrenamientoMicroscopioOptico: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= AlineacionHorizontalEntrenamientoMicroscopioOptico.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



function TFicheroAlineacionVisores.DeterminarAlineacionHorizontalSimulacionImagenes: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= AlineacionHorizontalSimulacionImagenes.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



function TFicheroAlineacionVisores.DeterminarAlineacionVerticalEntrenamientoCasosTipicos: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= AlineacionVerticalEntrenamientoCasosTipicos.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



function TFicheroAlineacionVisores.DeterminarAlineacionVerticalEntrenamientoMicroscopioOptico: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= AlineacionVerticalEntrenamientoMicroscopioOptico.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



function TFicheroAlineacionVisores.DeterminarAlineacionVerticalSimulacionImagenes: String;
var
  Cadena: String;
begin
  //cargo la primera linea
  Cadena:= AlineacionVerticalSimulacionImagenes.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;



procedure TFicheroAlineacionVisores.SetAlineacionHorizontalEntrenamientoCasosTipicos(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= AlineacionHorizontalEntrenamientoCasosTipicos.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  AlineacionHorizontalEntrenamientoCasosTipicos.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  AlineacionHorizontalEntrenamientoCasosTipicos.Strings[0]:= aAlign;
end;



procedure TFicheroAlineacionVisores.SetAlineacionHorizontalEntrenamientoMicroscopioOptico(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= AlineacionHorizontalEntrenamientoMicroscopioOptico.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  AlineacionHorizontalEntrenamientoMicroscopioOptico.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  AlineacionHorizontalEntrenamientoMicroscopioOptico.Strings[0]:= aAlign;
end;



procedure TFicheroAlineacionVisores.SetAlineacionHorizontalSimulacionImagenes(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= AlineacionHorizontalSimulacionImagenes.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  AlineacionHorizontalSimulacionImagenes.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  AlineacionHorizontalSimulacionImagenes.Strings[0]:= aAlign;
end;



procedure TFicheroAlineacionVisores.SetAlineacionVerticalEntrenamientoCasosTipicos(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= AlineacionVerticalEntrenamientoCasosTipicos.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  AlineacionVerticalEntrenamientoCasosTipicos.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  AlineacionVerticalEntrenamientoCasosTipicos.Strings[0]:= aAlign;
end;



procedure TFicheroAlineacionVisores.SetAlineacionVerticalEntrenamientoMicroscopioOptico(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= AlineacionVerticalEntrenamientoMicroscopioOptico.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  AlineacionVerticalEntrenamientoMicroscopioOptico.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  AlineacionVerticalEntrenamientoMicroscopioOptico.Strings[0]:= aAlign;
end;



procedure TFicheroAlineacionVisores.SetAlineacionVerticalSimulacionImagenes(aAlign: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= AlineacionVerticalSimulacionImagenes.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  AlineacionVerticalSimulacionImagenes.Strings[0]:= cadena;

  //Reescribo la cadena con la nueva alineacion
  AlineacionVerticalSimulacionImagenes.Strings[0]:= aAlign;
end;



procedure TFicheroAlineacionVisores.SalvarAlineacionHorizontalEntrenamientoCasosTipicos;
begin
  //Salvo el fichero de alineacion
  FAlineacionHorizontalEntrenamientoCasosTipicos.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Horizontal\Entrenamiento\Seccion2\Align.txt');
end;



procedure TFicheroAlineacionVisores.SalvarAlineacionHorizontalEntrenamientoMicroscopioOptico;
begin
  //Salvo el fichero de alineacion
  FAlineacionHorizontalEntrenamientoMicroscopioOptico.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Horizontal\Entrenamiento\Seccion1\Align.txt');
end;



procedure TFicheroAlineacionVisores.SalvarAlineacionHorizontalSimulacionImagenes;
begin
  //Salvo el fichero de alineacion
  FAlineacionHorizontalSimulacionImagenes.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Horizontal\Simulacion\Align.txt');
end;



procedure TFicheroAlineacionVisores.SalvarAlineacionVerticalEntrenamientoCasosTipicos;
begin
  //Salvo el fichero de alineacion
  FAlineacionVerticalEntrenamientoCasosTipicos.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Vertical\Entrenamiento\Seccion2\Align.txt');
end;



procedure TFicheroAlineacionVisores.SalvarAlineacionVerticalEntrenamientoMicroscopioOptico;
begin
  //Salvo el fichero de alineacion
  FAlineacionVerticalEntrenamientoMicroscopioOptico.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Vertical\Entrenamiento\Seccion1\Align.txt');
end;



procedure TFicheroAlineacionVisores.SalvarAlineacionVerticalSimulacionImagenes;
begin
  //Salvo el fichero de alineacion
  FAlineacionVerticalSimulacionImagenes.SaveToFile(ExtractFilePath(Application.ExeName) + 'Visor\Alineacion\Vertical\Simulacion\Align.txt');
end;



end.
