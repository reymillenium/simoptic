unit UFicheroIdioma;

interface

uses
  Classes;

type
  TFicheroIdioma = class(TObject)
  private
  protected
    { Protected declarations }
    FContenidoOriginal: TStringList;
    FContenidoNuevo: TStringList;
  public
    constructor New;
    procedure Cargar(way:string);
    procedure Salvar(way:string);
    procedure DepurarUnitOriginal;
    function DeterminarIdiomaImperante: String;
    procedure SetIdiomaImperante(aIdioma: String);

    function ContarLOC:integer;
    property ContenidoOriginal: TStringList read FContenidoOriginal Write FContenidoOriginal;
    property ContenidoNuevo: TStringList read FContenidoNuevo Write FContenidoNuevo;
    //property ContenidoOriginal: TStringList read FContenidoOriginal;
    //property ContenidoNuevo: TStringList read FContenidoNuevo;

  end;

var
 FFicheroIdioma: TFicheroIdioma;

implementation

uses SysUtils, StrUtils;

  { TUnit }

procedure TFicheroIdioma.DepurarUnitOriginal;
var
  i: integer;   Posicion: integer;  Cadena: String;
  PosiAbre: integer; PosiCierra: integer;
begin

// Primero depuro los comentarios de línea
  for i:= 0 to ContenidoNuevo.Count - 1 do
    begin
      Cadena:= ContenidoNuevo.Strings[i];
      Posicion:= Pos('//', Cadena);
      if Posicion <> 0 then Delete(Cadena, Posicion, length(Cadena));
      ContenidoNuevo.Strings[i]:= Cadena ;
    end;

// Luego depuro los comentarios que aparecen en bloque
  i:=0;
  While i < ContenidoNuevo.Count do
    begin   //inicio del while exterior
      Cadena:= ContenidoNuevo.Strings[i];
      PosiAbre:= Pos('{', Cadena);
      PosiCierra:= Pos('}', Cadena);
      if (PosiAbre <> 0) and (PosiCierra <> 0) and (PosiCierra > PosiAbre) then // Hay '{' y '}' en la misma línea. La borro.
        begin
          Delete(Cadena, PosiAbre, length(Cadena));
          ContenidoNuevo.Strings[i]:= Cadena;
          inc(i);
        end
           else
             if (PosiAbre <> 0) and (PosiCierra = 0)  then // Hay '{'  pero no hay '}'
               begin
                 Delete(Cadena, PosiAbre, length(Cadena)); // Borro la primera línea en la que aparece '{'
                 ContenidoNuevo.Strings[i]:= Cadena;
                 inc(i);
                 while Pos('}', ContenidoNuevo.Strings[i]) = 0 do  // Sigo borrando hasta que aparezca '}'
                   begin
                     Cadena:= ContenidoNuevo.Strings[i] ;
                     Delete(Cadena, 1, length(Cadena));
                     ContenidoNuevo.Strings[i]:= Cadena;
                     inc(i);
                   end;
                 Cadena:= ContenidoNuevo.Strings[i] ;
                 Delete(Cadena, 1, length(Cadena));
                 ContenidoNuevo.Strings[i]:= Cadena;
               end
                  else
                    inc(i);
    end;  //Fin del while exterior

end;


function TFicheroIdioma.ContarLOC: integer;
var
  i, count: integer;
begin
  count:= 0 ;
  for i:= 0 to ContenidoNuevo.Count -1  do
    if trim(ContenidoNuevo.Strings[i]) <> '' then Inc(count);
  Result:= count;
end;

procedure TFicheroIdioma.Cargar(way: string);
begin
  FContenidoOriginal.LoadFromFile(way);
  FContenidoNuevo.LoadFromFile(way);
end;

Constructor TFicheroIdioma.New;
begin
  inherited create;
  ContenidoOriginal:= TStringList.Create;
  ContenidoNuevo:= TStringList.Create;
end;

procedure TFicheroIdioma.Salvar(way:string);
begin
  FContenidoNuevo.SaveToFile(way);
end;

function TFicheroIdioma.DeterminarIdiomaImperante: String;
var
  i: integer;   Posicion: integer;  Cadena: String;
  PosiAbre: integer; PosiCierra: integer;
begin
  //cargo la primera linea
  Cadena:= ContenidoNuevo.Strings[0];

  //Emito el resultado
  Result:= Cadena;
end;

procedure TFicheroIdioma.SetIdiomaImperante(aIdioma: String);
var
  cadena: String;
begin
  //recibo la primera linea
  cadena:= ContenidoNuevo.Strings[0];
  
  //Borro el idioma anterior en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  ContenidoNuevo.Strings[0]:= cadena;

  //Reescribo la cadena con el nuevo idioma
  ContenidoNuevo.Strings[0]:= aIdioma;
end;

end.
