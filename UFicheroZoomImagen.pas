unit UFicheroZoomImagen;

interface

uses
  Classes, Forms;

type
  TFicheroZoomImagen = class(TObject)
  private
  protected
    { Protected declarations }
    FZoomImagenSimulacionImagenes: TStringList;
    
  public
    constructor New;
    
    procedure CargarZoomDeImagenExtraidaDesdeSIM(aPath: String);
    procedure SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(aPath: String);

    function DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes: String;
    procedure SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(aZoom: String);

    property ZoomImagenSimulacionImagenes: TStringList read FZoomImagenSimulacionImagenes Write FZoomImagenSimulacionImagenes;

  end;

var
 FFicheroZoomImagen: TFicheroZoomImagen;

implementation

uses SysUtils, StrUtils;

  { TUnit }




procedure TFicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(aPath: String);
begin
  //Cargo el fichero de zoom de la imagen
  //FZoomImagenSimulacionImagenes.LoadFromFile( ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt' );
  FZoomImagenSimulacionImagenes.LoadFromFile(aPath);
end;



Constructor TFicheroZoomImagen.New;
begin
  inherited Create;
  ZoomImagenSimulacionImagenes:= TStringList.Create;
  //FZoomImagenSimulacionImagenes.Strings[0]:= '100';
end;



function TFicheroZoomImagen.DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes: String;
var
  Cadena: String;
begin
  //Cargo la primera linea
  Cadena:= ZoomImagenSimulacionImagenes.Strings[0];
  
  //Verifico el estado de la cadena encontrada
  if (   StrToIntDef(Cadena, -1) <> -1   )
    then
      begin
        //Emito el resultado
        Result:= Cadena;
      end
        else
          begin
            //Emito un mensaje de error
            Result:= 'Error';
          end;


end;



procedure TFicheroZoomImagen.SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(aZoom: String);
var
  cadena: String;
begin
  //Recibo la primera linea
  cadena:= ZoomImagenSimulacionImagenes.Strings[0];
  
  //Borro la alineacion anterior, guardado en la primera linea
  Delete(cadena, 0, length(cadena));

  //Borro la primera linea
  ZoomImagenSimulacionImagenes.Strings[0]:= cadena;

  //Reescribo la cadena con el nuevo zoom
  ZoomImagenSimulacionImagenes.Strings[0]:= aZoom;
end;



procedure TFicheroZoomImagen.SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(aPath: String);
begin
  //Salvo el fichero de zoom de la imagen
  //FZoomImagenSimulacionImagenes.SaveToFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt');
  FZoomImagenSimulacionImagenes.SaveToFile(aPath);
end;



end.
