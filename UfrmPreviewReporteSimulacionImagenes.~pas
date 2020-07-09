unit UfrmPreviewReporteSimulacionImagenes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExportPack, ImgList, QRPrntr, ComCtrls, ToolWin, ExtCtrls,
  StdCtrls, RpDefine, RpBase, RpSystem, ATImageBox, RpRender, RpRenderPDF;

type
  TfrmPreviewReporteSimulacionImagenes = class(TForm)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    TBSave: TToolButton;
    TBPrint: TToolButton;
    TBExit: TToolButton;
    Preview: TQRPreview;
    IL: TImageList;
    EXQR: TExportQR;
    TBPrimero: TToolButton;
    TBUltimo: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    TBAnterior: TToolButton;
    TBSiguiente: TToolButton;
    ToolButton1: TToolButton;
    TBAumentarZoom: TToolButton;
    TBZoomToFit: TToolButton;
    TBZoomToWidth: TToolButton;
    TBReducirZoom: TToolButton;
    edtPorcientoDeZoom: TEdit;
    ATImageBoxOriginalColorRealSimulacionImagenes: TATImageBox;
    RvSystemSimulacionImagenes: TRvSystem;
    SaveDialogSimulacionImagenes: TSaveDialog;
    MemoComentariosSimulacionImagenes: TMemo;
    MemoMuelaSimulacionImagenes: TMemo;
    RvRenderPDFSimulacionImagenes: TRvRenderPDF;
    procedure TBSaveClick(Sender: TObject);
    procedure TBPrintClick(Sender: TObject);
    procedure TBExitClick(Sender: TObject);
    procedure TBPrimeroClick(Sender: TObject);
    procedure TBZoomToFitClick(Sender: TObject);
    procedure TBZoomToWidthClick(Sender: TObject);
    procedure TBAumentarZoomClick(Sender: TObject);
    procedure TBReducirZoomClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RvSystemSimulacionImagenesBeforePrint(Sender: TObject);
    procedure RvSystemSimulacionImagenesPrint(Sender: TObject);
    procedure TBUltimoClick(Sender: TObject);
    procedure TBSiguienteClick(Sender: TObject);
    procedure TBAnteriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdiomaImperante: AnsiString;
    NombreMuestra: AnsiString;
    FechaDelSistema: AnsiString;
  end;

var
  frmPreviewReporteSimulacionImagenes: TfrmPreviewReporteSimulacionImagenes;
  

implementation

Uses
  UfrmQRReporteSimulacionImagenes;
{$R *.dfm}

procedure TfrmPreviewReporteSimulacionImagenes.TBSaveClick(Sender: TObject);
begin
// Be careful!, only if export from a preview window
  //EXQR.Preview := Preview;
  //EXQR.ExportQRFromPreview;

  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPreviewReporteSimulacionImagenes.Caption:= 'SimOptic 2008. Vista Previa. Exportando el Reporte a PDF, para la muestra ' + NombreMuestra  + '.';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReporteSimulacionImagenes.Caption:= 'SimOptic 2008. Preview. Exporting the Report to PDF format, for the sample ' + NombreMuestra  + '.';
                end;
          end;


  
  //Oculto los botones de "Generar Reporte" de las Planillas Provinciales

  //Oculto el SpeedButton de "Generar Reporte"

  //Oculto la opción de "Generar Reporte" en el MainMenu



  //---------- *** Esta es la parte donde debo implementar la generación de Reportes *** ----------







  
  //---- *** A partir de aquí exporto el reporte hacia PDF *** ----


  //Usando Rave Report
  //Especifico que el destino sea como fichero
  RvSystemSimulacionImagenes.DefaultDest    := rdFile;

  //Especifico que la salida nativa sea falsa (¿?)
  RvSystemSimulacionImagenes.DoNativeOutput := false;

  //Le quito a la especificación del rvSystem el que salga el cartelito de Setup
  RvSystemSimulacionImagenes.SystemSetups   :=   RvSystemSimulacionImagenes.SystemSetups - [ssAllowSetup];

  //Le paso el rvRender como objeto renderizador del rvSystem
  RvSystemSimulacionImagenes.RenderObject   := RvRenderPDFSimulacionImagenes;

  //Epecifico las características del SaveDialog
  SaveDialogSimulacionImagenes.Filter       := 'Acrobat Reader|*.PDF';
  SaveDialogSimulacionImagenes.DefaultExt   := 'PDF';

  if SaveDialogSimulacionImagenes.Execute then
    begin
      //Limpio el SaveDialog
      //SaveDialogPlanillasProvinciales.Free;

      //La salida del rvSystem será la del SaveDialog
      RvSystemSimulacionImagenes.OutputFileName  := SaveDialogSimulacionImagenes.FileName;

      //Ejecuto el rvSystem
      RvSystemSimulacionImagenes.Execute;
    end;


  //---- *** A partir de aquí restituyo el estado de los componentes *** ----

  //Muestro los botones de "Generar Reporte" de las Planillas Provinciales

  //Muestro el SpeedButton de "Generar Reporte"

  //Muestro la opción de "Generar Reporte" en el MainMenu






  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPreviewReporteSimulacionImagenes.Caption:= 'SimOptic 2008. Vista Previa del Reporte de la Muestra ' + NombreMuestra  + '.';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReporteSimulacionImagenes.Caption:= 'SimOptic 2008. Report´s Preview of Sample ' + NombreMuestra  + '.';
                end;
          end;

  
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBPrintClick(Sender: TObject);
begin
  Preview.QRPrinter.Print;
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBExitClick(Sender: TObject);
begin
  Close;
  Preview.QRPrinter := nil;
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBPrimeroClick(
  Sender: TObject);
begin
  //Voy a la primera pagina
  Preview.PageNumber:= 1;
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBZoomToFitClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize complete (que encaje o coincida)
  Preview.ZoomToFit;
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBZoomToWidthClick(
  Sender: TObject);
begin
  //Hago que el reporte se viasualize al ancho completo
  Preview.ZoomToWidth;
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBAumentarZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte aumente el zoom
  Preview.Zoom:= Preview.Zoom + 10;
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBReducirZoomClick(
  Sender: TObject);
begin
  //Hago que el reporte reduzca el zoom
  Preview.Zoom:= Preview.Zoom - 10;
end;



procedure TfrmPreviewReporteSimulacionImagenes.FormShow(Sender: TObject);
begin
  //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPreviewReporteSimulacionImagenes.Caption:= 'SimOptic 2008. Vista Previa del Reporte de la Muestra ' + NombreMuestra  + '.';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPreviewReporteSimulacionImagenes.Caption:= 'SimOptic 2008. Report´s Preview of Sample ' + NombreMuestra  + '.';
                end;
          end;
end;



procedure TfrmPreviewReporteSimulacionImagenes.RvSystemSimulacionImagenesBeforePrint(
  Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    SetPaperSize(1, 215.9, 279.4);
  end;
end;



procedure TfrmPreviewReporteSimulacionImagenes.RvSystemSimulacionImagenesPrint(
  Sender: TObject);
var
  Bitmap, BitmapCopyright : TBitmap;
  i: Integer;
  Altura, Ancho : Integer;
  
begin
  with Sender as TBaseReport do
  begin
    Bold := True;
    GotoXY(31.7, 25.4);
    //Creamos un objeto BitMap (mapa de bits, o BMP)
    Bitmap := TBitmap.Create;

    //Cargamos la imagen del Logo del SimOptic de esta forma, para que permita exportar a PDF sin alterar el directorio
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Images\Logo_Microscopio.bmp');

    //Imprimirla en el centro
    //PrintBitmap(96, 25.4, 0.85, 0.85, Bitmap);

    //Imprimirla a la izquierda
    //PrintBitmap(31.7, 25.4, 0.30, 0.30, Bitmap);  //Quise moverlo a la derecha un poco
    PrintBitmap(45, 25.4, 0.30, 0.30, Bitmap);

    Bitmap.Free;
    //NewLine;

    ClearTabs;
    Bold := True;
    SetTab(75, pjLeft, 100, 0, 0, 0);
    NewLine;
    
    Bold := True;
    SetFont('Arial', 8);
    PrintTab('Colaboración CENAPET - CECAM - IMSS');
    NewLine;
    PrintTab('URL: http://www.simoptic.blogspot.com/');
    NewLine;
    PrintTab('EMails: reiniermillenium@gmail.com');
    NewLine;
    PrintTab('             rolando.hdez@yahoo.com');
    NewLine;
    PrintTab('             ramosgregorio@hotmail.com');       
    NewLine;
    NewLine;

    SetFont('Arial', 11);
    Bold := True;
    PrintCenter('Simulador de Microscopio Óptico', 105.95);
    NewLine;
    PrintCenter('SimOptic 2008 ©', 105.95);
    NewLine;
    NewLine;
    ClearTabs;


    //Cargamos la imagen de la barrita
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Images\barrita.bmp');
    //Imprimirla
    PrintBitmap(31.7, 58, 0.80, 0.80, Bitmap);
    Bitmap.Free;

    //Configurando los titulares de la 1ra página
    SetFont('Arial', 14);
    Bold:= True;

    GotoXY(31.7, 70);
    PrintCenter('Edición Especial de Muestras de Citohistopatología, destinada', 105.95);
    NewLine;
    PrintCenter('a estudiantes de Tecnología de la Salud.', 105.95);
    NewLine;
    NewLine;

    //Ponemos el título identificador del reporte
    SetFont('Arial', 12);
    Bold:= True;
    PrintLeft('Muestra: ' + NombreMuestra, 31.7);
    PrintRight('Emitido en: ' + FechaDelSistema, 190);
    NewLine;
    NewLine;

    //Ahora debo trasladarme a una posicion posterior a la barrita (Con NewLine no estaba bastando)
    //GotoXY(31.7, 70);

    //Creo un bitmap temporal para la muestra
    Bitmap := TBitmap.Create;

    //Creo un bitmap temporal para el Copyright
    BitmapCopyright := TBitmap.Create;

    //Salvo la imagen del ATImageBox de Color Real
    ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap.SaveToFile( ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

    //Ahora paso la imagen del ATImageBoc Original (Color Real) hacia un TImage de reporte
    //ImageReportesSimulacionImagenes.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
    //ImageReportesSimulacionImagenes.Picture.Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

    //Cargo el archivo bmp en el bitmap temporal para la muestra
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

    //Cargo el bitmap para el Copyright (Mide 18 de ancho y 131 de alto)
    BitmapCopyright.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Images\Copyright.bmp');

    //Incrusto el bitmap Copyright en el de la muestra  (debo mejorarlo. La posicion del copyright debe automatizarse. No deben ser coordenadas fijas)
    //Bitmap.Canvas.Draw(622, 349, BitmapCopyright);
    Bitmap.Canvas.Draw(Bitmap.Width - 18, Bitmap.Height - 131, BitmapCopyright);

    //Imprimo el bitmap de la muestra en el reporte
    PrintBitmap(31.7, 95, 0.70, 0.70, Bitmap);
    //PrintBitmap(31.7, 95, 0.70, 0.70, ImageReportesSimulacionImagenes.Picture.Bitmap);

    //Libero memoria del bitmap temporal para la muestra
    Bitmap.Free;

    //Libero memoria del bitmap temporal para el Copyright
    BitmapCopyright.Free;

    NewLine;
    NewLine;

    //Borro la imagen temporal del reporte (no encriptada)
    DeleteFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');



    //** Ahora debo trasladarme a una posicion posterior a la del bitmap cargado **
    //Primero calculo las dimensiones de la imagen
    //Altura:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Height;
    //Ancho:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Width;


    //Debo justificar los comentarios
    Bold:= False;

    //Limpio el Memo de muela de reportes
    MemoMuelaSimulacionImagenes.Clear;

    //Paso la info del Memo de comentarios al Memo de muela de reportes
    MemoMuelaSimulacionImagenes.Text:= MemoComentariosSimulacionImagenes.Text;

    //Verifico el tamaño de los comentarios
    if (MemoMuelaSimulacionImagenes.Lines.Count > 6)
      then
        begin
          //Voy a la pagina siguiente
          NewPage;

          GotoXY(31.7, 25.4);

          //Ahora debo cargar los comentarios
          Underline:= False;
          SetFont('Arial', 12);
          Bold:= True;
          PrintLeft('Comentarios :', 31.7);
          SetFont('Arial', 12);
          Bold:= False;
          NewLine;
          NewLine;

          //Muestro los comentarios
          for i:=0 to MemoMuelaSimulacionImagenes.Lines.Count do
            begin
              PrintJustify(MemoMuelaSimulacionImagenes.Lines[i], 1.27, pjBlock, 0, 3.0);
              NewLine;
              if YPos>SectionBottom
                then
                  NewPage;
            end;
        end
          else
            begin
              GotoXY(31.7, 220);

              //Ahora debo cargar los comentarios
              Underline:= False;
              SetFont('Arial', 12);
              Bold:= True;
              PrintLeft('Comentarios :', 31.7);
              SetFont('Arial', 12);
              Bold:= False;
              NewLine;
              NewLine;
              
              //Muestro los comentarios
              for i:=0 to MemoMuelaSimulacionImagenes.Lines.Count do
                begin
                  PrintJustify(MemoMuelaSimulacionImagenes.Lines[i], 1.27, pjBlock, 0, 3.0);
                  NewLine;
                  if YPos>SectionBottom
                    then
                      NewPage;
                end;
            end;
      
    //Fin del reporte.
  end;
end;



procedure TfrmPreviewReporteSimulacionImagenes.TBUltimoClick(
  Sender: TObject);
begin
  //Voy a la ultima pagina
  Preview.PageNumber:= 2;
end;

procedure TfrmPreviewReporteSimulacionImagenes.TBSiguienteClick(
  Sender: TObject);
begin
  //Voy a la 2da pagina
  Preview.PageNumber:= 2;
end;

procedure TfrmPreviewReporteSimulacionImagenes.TBAnteriorClick(Sender: TObject);
var
  report: TQuickReportSimulacionImagenes;
begin
  report:= TQuickReportSimulacionImagenes.Create(report);

  report.QRImageLogo.Refresh;
  report.QRImageMuestra.Refresh;

  report.QRImageMuestra.Picture.Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) + 'TempFiles\test.bmp');

  report.Destroy;
  
end;

end.
