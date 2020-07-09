program SimOptic;

uses
  UIApp in 'uiapp.pas',
  Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UfrmAcercaDe in 'UfrmAcercaDe.pas' {frmAcercaDe},
  UfrmPresentacion in 'UfrmPresentacion.pas' {frmPresentacion},
  UPantalla in 'UPantalla.pas',
  UFicheroIdioma in 'UFicheroIdioma.pas',
  UFicheroAlineacionVisores in 'UFicheroAlineacionVisores.pas',
  UFicheroTipoVisores in 'UFicheroTipoVisores.pas',
  USimuladorOptico in 'USimuladorOptico.pas',
  UFicheroZoomImagen in 'UFicheroZoomImagen.pas',
  UFicheroComentarios in 'UFicheroComentarios.pas',
  UfrmPreviewReporteSimulacionImagenes in 'UfrmPreviewReporteSimulacionImagenes.pas' {frmPreviewReporteSimulacionImagenes},
  UfrmQRReporteSimulacionImagenes in 'UfrmQRReporteSimulacionImagenes.pas' {QuickReportSimulacionImagenes: TQuickRep},
  UfrmRegistro in 'UfrmRegistro.pas' {frmRegistro};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SimOptic 2008';
  Application.HelpFile := 'HelpFiles\HELP.HLP';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmAcercaDe, frmAcercaDe);
  Application.CreateForm(TfrmPresentacion, frmPresentacion);
  Application.CreateForm(TfrmPreviewReporteSimulacionImagenes, frmPreviewReporteSimulacionImagenes);
  Application.CreateForm(TfrmRegistro, frmRegistro);
  Application.CreateForm(TQuickReportSimulacionImagenes, QuickReportSimulacionImagenes);
  Application.Run;
end.
