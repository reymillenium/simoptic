unit UFicheroComentarios;

interface

uses
  Classes, Forms;

type
  TFicheroComentarios = class(TObject)
  private
  protected
    { Protected declarations }
    //FComentariosOriginalesSimulacionImagenes: TStringList;
    FComentariosNuevosSimulacionImagenes: TStringList;
    //FTexto: TextFile;
  public
    constructor New;
    
    procedure CargarComentariosDeImagenExtraidaDesdeSIM(aPath: String);
    procedure SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(aPath: String);

    //function DeterminarComentariosOriginalesDeImagenExtraidaDesdeSIMSimulacionImagenes: TStringList;
    function DeterminarComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes: TStringList;

    //procedure SetComentariosOriginalesDeImagenExtraidaDesdeSIMSimulacionImagenes(aComenntaries: TStringList);
    procedure SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(aComenntaries: TStringList);
    
    //property ComentariosOriginalesSimulacionImagenes: TStringList read FComentariosOriginalesSimulacionImagenes Write FComentariosOriginalesSimulacionImagenes;
    property ComentariosNuevosSimulacionImagenes: TStringList read FComentariosNuevosSimulacionImagenes Write FComentariosNuevosSimulacionImagenes;
  end;

var
 FFicheroComentarios: TFicheroComentarios;

implementation

uses SysUtils, StrUtils;

  { TUnit }




procedure TFicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(aPath: String);
begin
  //Cargo el fichero de zoom de la imagen
  //FZoomImagenSimulacionImagenes.LoadFromFile( ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt' );
  //FComentariosOriginalesSimulacionImagenes.LoadFromFile(aPath);
  FComentariosNuevosSimulacionImagenes.LoadFromFile(aPath);
end;



procedure TFicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(aPath: String);
begin
  //Salvo el fichero de zoom de la imagen
  //FZoomImagenSimulacionImagenes.SaveToFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt');
  if (FileExists(aPath))
    then
      begin
        //Borro el archivo anterior
        DeleteFile(aPath);

        //Salvo el nuevo archivo
        FComentariosNuevosSimulacionImagenes.SaveToFile(aPath);
      end;
  
end;



Constructor TFicheroComentarios.New;
begin
  inherited Create;
  //ComentariosOriginalesSimulacionImagenes:= TStringList.Create;
  ComentariosNuevosSimulacionImagenes:= TStringList.Create;
  //FZoomImagenSimulacionImagenes.Strings[0]:= '100';
end;


{
function TFicheroComentarios.DeterminarComentariosOriginalesDeImagenExtraidaDesdeSIMSimulacionImagenes: TStringList;
begin
  Result:= ComentariosOriginalesSimulacionImagenes;
end;
}


function TFicheroComentarios.DeterminarComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes: TStringList;
begin
  Result:= ComentariosNuevosSimulacionImagenes;
end;


{
procedure TFicheroComentarios.SetComentariosOriginalesDeImagenExtraidaDesdeSIMSimulacionImagenes(aComenntaries: TStringList);
var
  cadena: String;
begin
  //Reescribo la variable con los nuevos comentarios
  ComentariosOriginalesSimulacionImagenes:= aComenntaries;
end;
}


procedure TFicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(aComenntaries: TStringList);
var
  cadena: String;
begin
  //Reescribo la variable con los nuevos comentarios
  ComentariosNuevosSimulacionImagenes:= aComenntaries;
end;



end.
