unit UfrmQRReporteSimulacionImagenes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,
  RpDefine, RpRender, RpRenderPDF,
  QRExport, jpeg;

type
  TQuickReportSimulacionImagenes = class(TQuickRep)
    QRBandTitleResumenPlanillasProvinciales: TQRBand;
    QRImageLogo: TQRImage;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImageBarrita: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRlblMuestra: TQRLabel;
    QRLabelFechaEmitido: TQRLabel;
    QRBand1: TQRBand;
    QRlblComentarios: TQRLabel;
    QRMemoComentarios: TQRMemo;
    QRImageMuestra: TQRImage;
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  QuickReportSimulacionImagenes: TQuickReportSimulacionImagenes;

implementation
Uses
  UfrmPreviewReporteSimulacionImagenes;
{$R *.DFM}

procedure TQuickReportSimulacionImagenes.QuickRepPreview(
  Sender: TObject);
begin
  //Refresco las imagenes
  QRImageLogo.Refresh;
  QRImageMuestra.Refresh;
  QRImageLogo.Repaint;
  QRImageMuestra.Repaint;

  //Le mando al printer del Preview la información de este mismo reporte
  frmPreviewReporteSimulacionImagenes.Preview.QRPrinter := QuickReportSimulacionImagenes.QRPrinter;

  //Mando a que se muestre el Preview
  frmPreviewReporteSimulacionImagenes.ShowModal;
end;

end.
