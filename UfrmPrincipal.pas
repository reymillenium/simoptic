unit UfrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Buttons, Grids, DBGrids,
  ImgList, DBCtrls, ExtCtrls, Mask, ToolWin, CheckLst, AppEvnts, StrUtils,
  XPMan, ActnMan, ActnCtrls, XPStyleActnCtrls, ActnList, Math, MMSystem,
  ShellApi, DB, Winsock, OleCtrls, Sockets, RpRender,
  RpRenderPDF, RpBase, RpSystem, RpDefine, ExtDlgs, ERombBtn,
  ATImageBox, dsZoomNavigator, LbButton, CollapsePanel,

  cbClasses,
  CaptionButton, FormTrayIcon, FormRoller, FormTopmost,
  mxCaptionBarButtons, LbStaticText, LbSpeedButton,
  PJMenuSpeedButtons,

  //Sirve para poder usar el portapapeles
  ClipBrd,

  //Trabajo con imagenes
  jpeg, PixTwixLib_TLB,


  {Units interfaz confeccionadas por mi.}
  UfrmAcercaDe, UfrmRegistro,

  {Units controladoras confeccionadas por mi.}
  USimuladorOptico,

  {Units entidad confeccionadas por mi.}
  UPantalla, UFicheroIdioma, UFicheroAlineacionVisores, UFicheroTipoVisores,
  UFicheroZoomImagen, UFicheroComentarios,
  CKeysOnForm, RpRave, ExportPack,
  CabSTComps, CSelectOnRunTime, CSaveComps, BcDrawModule,
  BcCustomDrawModule, BarMenus, FileCtrl,
  
  //Reportes usando QuickReport
  UfrmQRReporteSimulacionImagenes,
  UfrmPreviewReporteSimulacionImagenes,

    
  //Para dialogos en espa�ol (buena opcion, pero no agradable visualmente)
  Msgdlg,

  
  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs,
  mxProtector;



  {Formas confeccionadas por mi.}


  //AdvPageControl  AdvTabSet

type
  TfrmPrincipal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    ImageListArchivoSimulacionImagenes: TImageList;
    ColorDialogSimulacionImagenes: TColorDialog;
    RvSystemSimulacionImagenes: TRvSystem;
    RvRenderPDFSimulacionImagenes: TRvRenderPDF;
    SaveDialogSimulacionImagenes: TSaveDialog;
    OpenPictureDialogSimulacion: TOpenPictureDialog;
    TimerRefrescarZoomNavigatorSimulacionImagenes: TTimer;
    SavePictureDialogSimulacionImagenes: TSavePictureDialog;
    OpenDialogSimulacion: TOpenDialog;
    ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes: TATImageBox;
    ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes: TATImageBox;
    ATImageBoxOriginalNegativoSimulacionImagenes: TATImageBox;
    PanelInferiorSimulacionImagenes: TPanel;
    GroupBoxMedicionesSimulacionImagenes: TGroupBox;
    lblDistancia3MirillaSimulacionImagenes: TLabel;
    lblDistancia3SimulacionImagenes: TLabel;
    lblDistancia2SimulacionImagenes: TLabel;
    lblDistancia1SimulacionImagenes: TLabel;
    lblDistancia2MirillaSimulacionImagenes: TLabel;
    lblDistancia1MirillaSimulacionImagenes: TLabel;
    ATImageBoxTemporalSimulacionImagenes: TATImageBox;
    ATImageBoxOriginalColorRealSimulacionImagenes: TATImageBox;
    CollapsePanelImagenCentralSimulacionImagenes: TCollapsePanel;
    ATImageBoxSimulacionImagenes: TATImageBox;
    PanelPilar1LenteMirillaSimulacionImagenes: TPanel;
    PanelPilar2LenteMirillaSimulacionImagenes: TPanel;
    PanelPilar3LenteMirillaSimulacionImagenes: TPanel;
    PanelPilar4LenteMirillaSimulacionImagenes: TPanel;
    PanelRayaHorizontalLenteMirillaSimulacionImagenes: TPanel;
    PanelRayitaBordeHorizontal1SimulacionImagenes: TPanel;
    PanelRayitaBordeHorizontal2SimulacionImagenes: TPanel;
    PanelRayitaBordeHorizontal4SimulacionImagenes: TPanel;
    PanelRayitaBordeHorizontal3SimulacionImagenes: TPanel;
    PanelRayitaBordeVertical1SimulacionImagenes: TPanel;
    PanelRayitaBordeVertical3SimulacionImagenes: TPanel;
    PanelRayitaBordeVertical4SimulacionImagenes: TPanel;
    PanelRayitaBordeVertical2SimulacionImagenes: TPanel;
    PanelGradiente01SimulacionImagenes: TPanel;
    PanelGradiente02SimulacionImagenes: TPanel;
    PanelGradiente03SimulacionImagenes: TPanel;
    PanelGradiente04SimulacionImagenes: TPanel;
    PanelGradiente05SimulacionImagenes: TPanel;
    PanelGradiente06SimulacionImagenes: TPanel;
    PanelGradiente07SimulacionImagenes: TPanel;
    PanelGradiente08SimulacionImagenes: TPanel;
    PanelGradiente09SimulacionImagenes: TPanel;
    PanelGradiente19SimulacionImagenes: TPanel;
    PanelGradiente18SimulacionImagenes: TPanel;
    PanelGradiente17SimulacionImagenes: TPanel;
    PanelGradiente16SimulacionImagenes: TPanel;
    PanelGradiente15SimulacionImagenes: TPanel;
    PanelGradiente14SimulacionImagenes: TPanel;
    PanelGradiente13SimulacionImagenes: TPanel;
    PanelGradiente12SimulacionImagenes: TPanel;
    PanelGradiente11SimulacionImagenes: TPanel;
    PanelGradiente29SimulacionImagenes: TPanel;
    PanelGradiente28SimulacionImagenes: TPanel;
    PanelGradiente27SimulacionImagenes: TPanel;
    PanelGradiente26SimulacionImagenes: TPanel;
    PanelGradiente25SimulacionImagenes: TPanel;
    PanelGradiente24SimulacionImagenes: TPanel;
    PanelGradiente23SimulacionImagenes: TPanel;
    PanelGradiente22SimulacionImagenes: TPanel;
    PanelGradiente21SimulacionImagenes: TPanel;
    PanelDerechoSimulacionImagenes: TPanel;
    CollapsePanelObservacionMuestraSimulacionImagenes: TCollapsePanel;
    GroupBoxOpcionesDeAjusteSimulacionImagenes: TGroupBox;
    Bevel1: TBevel;
    chkFitSimulacionImagenes: TCheckBox;
    chkCenterSimulacionImagenes: TCheckBox;
    chkFitOnlyBigSimulacionImagenes: TCheckBox;
    chkBorderSimulacionImagenes: TCheckBox;
    chkLabelSimulacionImagenes: TCheckBox;
    chkDragSimulacionImagenes: TCheckBox;
    GroupBoxEscalaDeLaImagenSimulacionImagenes: TGroupBox;
    lblEscalaSimulacionImagenes: TLabel;
    LabelScaleSimulacionImagenes: TLabel;
    TrackBarSimulacionImagenes: TTrackBar;
    chkKeepPosSimulacionImagenes: TCheckBox;
    GroupBoxPaneoImagenSimulacionImagenes: TGroupBox;
    dsZoomNavigatorSimulacionImagenes: TdsZoomNavigator;
    GroupBoxPropiedadesSimulacionImagenes: TGroupBox;
    lblBrilloSimulacionImagenes: TLabel;
    lblContrasteSimulacionImagenes: TLabel;
    lblCeroSimulacionImagenes: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    TrackBarBrilloSimulacionImagenes: TTrackBar;
    TrackBarContrasteSimulacionImagenes: TTrackBar;
    PanelIzquierdoSimulacionImagenes: TPanel;
    CollapsePanelEdicionSimulacionImagenes: TCollapsePanel;
    Bevel11: TBevel;
    lblbtnHerramientaFotografiarSimulacionImagenes: TLbButton;
    lblbtnLimpiarSimulacionImagenes: TLbButton;
    lblbtnZoomInSimulacionImagenes: TLbButton;
    lblbtnZoomOutSimulacionImagenes: TLbButton;
    Image1: TImage;
    CollapsePanelVerSimulacionImagenes: TCollapsePanel;
    Bevel6: TBevel;
    rbtnColorRealSimulacionImagenes: TRadioButton;
    rbtnTonosGrisesSimulacionImagenes: TRadioButton;
    chkAumentosSimulacionImagenes: TCheckBox;
    chkMedicionesSimulacionImagenes: TCheckBox;
    chkMirillaSimulacionImagenes: TCheckBox;
    chkNegativoSimulacionImagenes: TCheckBox;
    CollapsePanelBibliotecaInternaSimulacionImagenes: TCollapsePanel;
    ToolBarSimulacion: TToolBar;
    SpeedButtonCargarArchivoSimulacionImagenes: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButtonSalvarArchivoSimulacionImagenes: TSpeedButton;
    SpeedButtonLimpiarSimulacionImagenes: TSpeedButton;
    ToolButton2: TToolButton;
    SpeedButtonImprimirSimulacionImagenes: TSpeedButton;
    ToolButton5: TToolButton;
    SpeedButtonTemasDeAyudaSimulacionImagenes: TSpeedButton;
    SpeedButtonAcercaDeSimOpticSimulacionImagenes: TSpeedButton;
    BcBarMainMenuSimulacionImagenes: TBcBarMainMenu;
    MenuArchivo: TMenuItem;
    SubMenuAbrir: TMenuItem;
    N13: TMenuItem;
    SubMenuGuardar: TMenuItem;
    SubMenuGuardarComo: TMenuItem;
    SubMenuLimpiar: TMenuItem;
    N12: TMenuItem;
    SubMenuImprimir: TMenuItem;
    N11: TMenuItem;
    SubMenuSalir: TMenuItem;
    MenuEdicion: TMenuItem;
    SubMenuEdicionCalcularDistancia: TMenuItem;
    SubMenuEdicionCapturaDeImagen: TMenuItem;
    N14: TMenuItem;
    SubMenuEdicionAmpliarImagen: TMenuItem;
    SubMenuEdicionAchicarImagen: TMenuItem;
    MenuVer: TMenuItem;
    SubMenuVerColorReal: TMenuItem;
    SubMenuVerTonosGrises: TMenuItem;
    N17: TMenuItem;
    SubMenuVerNegativo: TMenuItem;
    N16: TMenuItem;
    SubMenuVerAumentos: TMenuItem;
    SubMenuVerMediciones: TMenuItem;
    SubMenuVerVisor: TMenuItem;
    MenuHerramientas: TMenuItem;
    SubMenuConfiguracionIdioma: TMenuItem;
    SubMenuEspannol: TMenuItem;
    SubMenuEnglish: TMenuItem;
    SubMenuConfigurarVisor: TMenuItem;
    SubMenuConfigurarAlineacionVerticalVisor: TMenuItem;
    SubMenuAlineacionVerticalVisorArriba: TMenuItem;
    SubMenuAlineacionVerticalVisorCentro: TMenuItem;
    SubMenuAlineacionVerticalVisorAbajo: TMenuItem;
    SubMenuConfigurarAlineacionHorizontalVisor: TMenuItem;
    SubMenuAlineacionHorizontalVisorIzquierda: TMenuItem;
    SubMenuAlineacionHorizontalVisorCentro: TMenuItem;
    SubMenuAlineacionHorizontalVisorDerecha: TMenuItem;
    N19: TMenuItem;
    SubMenuConfigurarTipoVisor: TMenuItem;
    SubMenuVisorTipoSimple: TMenuItem;
    SubMenuVisorTipoComplejo: TMenuItem;
    N18: TMenuItem;
    SubMenuConfigurarColorVisor: TMenuItem;
    SubMenuVisorColorAutomatico: TMenuItem;
    SubMenuVisorColorPersonalizado: TMenuItem;
    SubMenuConfigurarEtiqueta: TMenuItem;
    SubMenuConfigurarColorEtiqueta: TMenuItem;
    SubMenuColorEtiquetaEstandard: TMenuItem;
    SubMenuColorEtiquetaPersonalizado: TMenuItem;
    MenuAyuda: TMenuItem;
    SubMenuTemasDeAyuda: TMenuItem;
    N20: TMenuItem;
    SubMenuAcercaDeSimOptic: TMenuItem;
    BcCustomDrawModuleSimulacionImagenes: TBcCustomDrawModule;
    ImageListEdicionSimulacionImagenes: TImageList;
    ImageListHerramientasSimulacionImagenes: TImageList;
    ImageListAyudaSimulacionImagenes: TImageList;
    ImageListVerSimulacionImagenes: TImageList;
    lblbtnBorrarArchivoSIMSimulacionImagenes: TLbButton;
    FileListBoxSimulacionImagenes: TFileListBox;
    chkRedondearMediciones: TCheckBox;
    FontDialogSimulacionImagenes: TFontDialog;
    TimerTime: TTimer;
    SaveComps1: TSaveComps;
    SelectOnRunTime: TSelectOnRunTime;
    ActionList1: TActionList;
    ActionCrearMesa: TAction;
    ActionChangeGray: TAction;
    ActionChangeColor: TAction;
    ActionSalir: TAction;
    ActionBorrarMEsa: TAction;
    ActionGuardarDistribucion: TAction;
    ActionRecuperarDistribucion: TAction;
    ActionModificarMesa: TAction;
    ActionNuevoCliente: TAction;
    ActionNota: TAction;
    imgMesaDemo: TImage;
    ShapeCuadradoSimulacionImagenes: TShape;
    ShapeElipseSimulacionImagenes: TShape;
    cbMesa: TComboBox;
    GroupBoxComentariosSimulacionImagenes: TGroupBox;
    MemoComentariosSimulacionImagenes: TMemo;
    lblbtnGuardarComentariosSimulacionImagenes: TLbButton;
    lblbtnCancelarComentariosSimulacionImagenes: TLbButton;
    lblbtnModificarComentariosSimulacionImagenes: TLbButton;
    MemoTemporalSimulacionImagenes: TMemo;
    SubMenuAgregarABiblioteca: TMenuItem;
    SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes: TSpeedButton;
    STCabReaderSimulacionImagenes: TSTCabReader;
    STCabWriterSimulacionImagenes: TSTCabWriter;
    ATImageBoxOriginalEncriptadoSimulacionImagenes: TATImageBox;
    edtFiltroBibliotecaInternaSimulacionImagenes: TEdit;
    N1: TMenuItem;
    SubMenuBlogDelSistema: TMenuItem;
    N2: TMenuItem;
    SubMenuEdicionBorrarArchivoSIM: TMenuItem;
    lblbtnPrevisualizarReporteSimulacionImagenes: TLbButton;
    lblbtnExportarHaciaPDFSimulacionImagenes: TLbButton;
    MemoMuelaSimulacionImagenes: TMemo;
    ImageReportesSimulacionImagenes: TImage;
    EXQR: TExportQR;
    RvProjectSimulacionImagenes: TRvProject;
    Shape1: TShape;
    GroupBoxPosicionImagenSimulacionImagenes: TGroupBox;
    lblEjeXImagenSimulacionImagenes: TLabel;
    lblEtiquetaEjeXImagenSimulacionImagenes: TLabel;
    lblEtiquetaEjeYImagenSimulacionImagenes: TLabel;
    lblEjeYImagenSimulacionImagenes: TLabel;
    GroupBoxAumentoSimulacionImagenes: TGroupBox;
    lblValorAumentoOpticoSimulacionImagenes: TLabel;
    lblAumentoOpticoSimulacionImagenes: TLabel;
    lblAumentoDigitalSimulacionImagenes: TLabel;
    lblValorAumentoDigitalSimulacionImagenes: TLabel;
    lblAumentoFinalSimulacionImagenes: TLabel;
    lblValorAumentoFinalSimulacionImagenes: TLabel;
    N3: TMenuItem;
    N4: TMenuItem;
    SubMenuEdicionPrevisualizarReporte: TMenuItem;
    SubMenuEdicionExportarHaciaPDF: TMenuItem;
    KeysOnForm1: TKeysOnForm;
    lblspdbtnHerramientaMedirDistanciaSimulacionImagenes: TLbSpeedButton;
    N5: TMenuItem;
    SubMenuRegistro: TMenuItem;



    //Eventos de la forma principal (como tal)
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PersonalizarCaptionsMenuSistemaDeLaForma(AFormHandle:HWnd);
    procedure FormActivate(Sender: TObject);
    
    //Eventos del Menu Principal  (MainMenu)
    procedure SubMenuSalirClick(Sender: TObject);
    procedure SubMenuAcercaDeSimOpticClick(Sender: TObject);
    procedure SubMenuAbrirClick(Sender: TObject);
    procedure SubMenuTemasDeAyudaClick(Sender: TObject);
    procedure SubMenuLimpiarClick(Sender: TObject);
    procedure SubMenuEspannolClick(Sender: TObject);
    procedure SubMenuEnglishClick(Sender: TObject);
    
    //Configuracion del idioma
    procedure DeterminarIdiomaDesdeFichero;
    procedure SetIdiomaEspannol;
    procedure SetIdiomaIngles;

    function MinDeTres(a, b, c: integer): integer;
    function MaxDeTres(a, b, c: integer): integer;
    function CalcularDistanciaEntrePuntos(Pa, Pb: TPoint; Redondear: Boolean): AnsiString;
    function CalcularDistanciaPorEtapas(Pa, Pb: TPoint; Redondear: Boolean): AnsiString;
    function ObtenerFechaDelSistema: String;

    //Eventos de los check

    //Eventos de los LabelButton
    
    
    procedure lblbtnLimpiarSimulacionImagenesClick(Sender: TObject);
    procedure AddToClipClick(Sender: TObject);
    procedure lblbtnZoomInSimulacionImagenesClick(Sender: TObject);
    procedure lblbtnZoomOutSimulacionImagenesClick(Sender: TObject);

    procedure TrackBarSimulacionImagenesChange(Sender: TObject);

    procedure chkKeepPosSimulacionImagenesClick(Sender: TObject);
    procedure chkResampleSimulacionImagenesClick(Sender: TObject);
    procedure chkFitSimulacionImagenesClick(Sender: TObject);
    procedure chkFitOnlyBigSimulacionImagenesClick(Sender: TObject);
    procedure chkCenterSimulacionImagenesClick(Sender: TObject);
    procedure chkBorderSimulacionImagenesClick(Sender: TObject);
    procedure chkLabelSimulacionImagenesClick(Sender: TObject);
    procedure chkDragSimulacionImagenesClick(Sender: TObject);
    procedure chkAumentosSimulacionImagenesClick(Sender: TObject);
    procedure chkMirillaSimulacionImagenesClick(Sender: TObject);
    procedure chkMedicionesSimulacionImagenesClick(Sender: TObject);

    procedure edtResampleDelaySimulacionImagenesChange(Sender: TObject);


    procedure TimerRefrescarZoomNavigatorSimulacionImagenesTimer(Sender: TObject);
    procedure dsZoomNavigatorSimulacionImagenesDrawPage(Sender: TObject);
    procedure ApplicationEventsSimulacionImagenesIdle(Sender: TObject; var Done: Boolean);


    // *************   Eventos de los ToolBar *************
    
    // *** Modulo de Simulacion ***
    procedure SpeedButtonCargarArchivoSimulacionImagenesClick(Sender: TObject);
    procedure SpeedButtonTemasDeAyudaSimulacionImagenesClick(Sender: TObject);
    procedure SpeedButtonSalvarArchivoSimulacionImagenesClick(Sender: TObject);
    procedure SpeedButtonAcercaDeSimOpticSimulacionImagenesClick(Sender: TObject);

    procedure TrackBarBrilloSimulacionImagenesChange(Sender: TObject);
    procedure lblbtnNegativoSimulacionImagenesClick(Sender: TObject);
    procedure TrackBarContrasteSimulacionImagenesChange(Sender: TObject);
    procedure chkNegativoSimulacionImagenesClick(Sender: TObject);
    procedure rbtnColorRealSimulacionImagenesClick(Sender: TObject);
    procedure rbtnTonosGrisesSimulacionImagenesClick(Sender: TObject);
    procedure lblbtnHerramientaFotografiarSimulacionImagenesClick(Sender: TObject);



    procedure SubMenuAlineacionVerticalVisorArribaClick(Sender: TObject);
    procedure SubMenuAlineacionHorizontalVisorIzquierdaClick(Sender: TObject);
    procedure SubMenuAlineacionHorizontalVisorCentroClick(Sender: TObject);
    procedure SubMenuAlineacionHorizontalVisorDerechaClick(Sender: TObject);
    procedure SubMenuAlineacionVerticalVisorCentroClick(Sender: TObject);
    procedure SubMenuAlineacionVerticalVisorAbajoClick(Sender: TObject);
    procedure SubMenuVisorTipoSimpleClick(Sender: TObject);
    procedure SubMenuVisorTipoComplejoClick(Sender: TObject);

    //Menus y submenus
    procedure SubMenuVerColorRealClick(Sender: TObject);
    procedure SubMenuVerTonosGrisesClick(Sender: TObject);
    procedure SubMenuVerNegativoClick(Sender: TObject);
    procedure SubMenuVerAumentosClick(Sender: TObject);
    procedure SubMenuVerMedicionesClick(Sender: TObject);
    procedure SubMenuVerVisorClick(Sender: TObject);
    procedure SubMenuColorEtiquetaEstandardClick(Sender: TObject);
    procedure SubMenuColorEtiquetaPersonalizadoClick(Sender: TObject);
    procedure SubMenuVisorColorAutomaticoClick(Sender: TObject);
    procedure SubMenuVisorColorPersonalizadoClick(Sender: TObject);
    procedure SubMenuEdicionAmpliarImagenXXXClick(Sender: TObject);
    procedure SubMenuEdicionAchicarImagenXXXClick(Sender: TObject);
    procedure SubMenuEdicionCapturaDeImagenXXXClick(Sender: TObject);
    procedure SpeedButtonLimpiarSimulacionImagenesClick(Sender: TObject);
    procedure SubMenuGuardarClick(Sender: TObject);
    procedure SubMenuGuardarComoClick(Sender: TObject);


    procedure CargarArchivoSimDesdeLibreriaSimulacionImagenes(Sender: TObject);    
    procedure CargarImagenDesdeLibreria;
    procedure lblbtnBorrarArchivoSIMSimulacionImagenesClick(      Sender: TObject);
    procedure BcCustomDrawModuleSimulacionImagenesDrawMenuItem(Sender: TObject;      AMenuItem: TMenuItem; ACanvas: TCanvas; ARect: TRect;      State: TOwnerDrawState; ABarVisible: Boolean;      var DefaultDraw: Boolean);

    procedure lblbtnHerramientaAgregarElipseSimulacionImagenesClick(Sender: TObject);

    procedure SelectOnRunTimeBeforeSelect(Sender: TObject; Selected: TControl; var Select: Boolean);

    procedure ATImageBoxSimulacionImagenesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ATImageBoxImageSimulacionImagenesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lblbtnGuardarComentariosSimulacionImagenesClick(Sender: TObject);
    procedure lblbtnModificarComentariosSimulacionImagenesClick(Sender: TObject);
    procedure lblbtnCancelarComentariosSimulacionImagenesClick(Sender: TObject);
    procedure lblbtnBorrarArchivoSIMSimulacionImagenesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lblbtnHerramientaAgregarRectanguloSimulacionImagenesClick(Sender: TObject);
    procedure lblbtnHerramientaDimensionarSimulacionImagenesClick(Sender: TObject);
    procedure SubMenuAgregarABibliotecaClick(Sender: TObject);
    procedure SpeedButtonAgregarArchivoABibliotecaSimulacionImagenesClick(Sender: TObject);
    procedure SpeedButtonImprimirSimulacionImagenesClick(Sender: TObject);
    procedure SubMenuImprimirClick(Sender: TObject);
    procedure edtFiltroBibliotecaInternaSimulacionImagenesChange(Sender: TObject);
    procedure edtFiltroBibliotecaInternaSimulacionImagenesKeyPress(Sender: TObject; var Key: Char);
    procedure SubMenuBlogDelSistemaClick(Sender: TObject);
    procedure SubMenuEdicionBorrarArchivoSIMClick(Sender: TObject);
    procedure lblbtnPrevisualizarReporteSimulacionImagenesClick(Sender: TObject);
    procedure RvSystemSimulacionImagenesBeforePrint(Sender: TObject);
    procedure RvSystemSimulacionImagenesPrint(Sender: TObject);
    procedure lblbtnExportarHaciaPDFSimulacionImagenesClick(Sender: TObject);
    procedure SubMenuImprimirImagenClick(Sender: TObject);
    procedure lblbtnHerramientaMedirDistanciaSimulacionImagenesClick(
      Sender: TObject);
    procedure SubMenuEdicionPrevisualizarReporteClick(Sender: TObject);
    procedure SubMenuEdicionExportarHaciaPDFClick(Sender: TObject);
    procedure KeysOnForm1F4(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SubMenuEdicionCapturaDeImagenClick(Sender: TObject);
    procedure SubMenuEdicionCalcularDistanciaClick(Sender: TObject);
    procedure SubMenuRegistroClick(Sender: TObject);


  private
    { Private declarations }
    FUpdatingSelfOptionsSimulacionImagenes: Boolean;

    //Cosas para el Menu Especial
    FDrawBuffer: TBitmap;

    //Variables para el uso de imagenes vectoriales
    _OriginalBitmap: TBitmap;
    _nmesas: Integer;

    //Variables para borrado de ficheros sim
    ProcedenciaDelFicheroSimulacionImagenes: AnsiString;
    
    function GetDrawBuffer: TBitmap;

    procedure appmessage(var msg: tmsg; var handled: boolean);
    procedure DeterminarResolucionInicial;
    function CambiarResolucion(XRes, YRes: DWord): integer;

    //Posicion del Mouse
    function HallarColumnaPosicionX: Integer;
    function HallarFilaPosicionY: Integer;

    function QuitaEn(Cadena, Esto: String): String;
    function DeterminarAumento(aCadena: String): Integer;
    function CumpleConFormatoAdecuado(aCadena: String): Boolean;
    function ExtraerParteUtilDeNombreFichero(aCadena: String): String;

    //Trabajo con ficheros *.SIM
    procedure ExtraerFicheroSIM(aPath: AnsiString);


    procedure BorrarArchivoSIM;
    procedure AgregarArchivoABiblioteca;
    
    function QuitarEspaciosVaciosAlInicio(aNombre: AnsiString): AnsiString;
    function NombreValidoParaFichero(aNombre: AnsiString): Boolean;
    procedure ValidarCaptionLabelButtonsComentariosSimulacionImagenes;
    procedure ValidarEnableLabelButtonsComentariosSimulacionImagenes;
    procedure ValidarAumentosSimulacionImagenes;
    //****************************************************************
    //*                                                              *
    //*                   M�dulo de Simulaci�n                       *
    //*                                                              *
    //****************************************************************

    //Cosas del ATImageBox

    procedure UpdateImageOptionsSimulacionImagenes;
    procedure UpdateImageScaleOptionsSimulacionImagenes;
    procedure UpdateSelfOptionsSimulacionImagenes;
    procedure UpdateSelfScaleOptionsSimulacionImagenes;
    procedure ModificarBrilloSimulacionImagenes(aValue: Integer);  //Sistema de variacion completa
    procedure ActualizarBrilloContrasteSimulacionImagenes;
    procedure ActualizarBrilloContrasteDobleCapaSimulacionImagenes;
    procedure ActualizarVisionSimulacionImagenes;
    procedure ActualizarMostrarSimulacionImagenes;

    //CoDec para bitmaps
    function EncriptarBitmap(aBitmap: TBitmap): TBitmap;   //No pinchaba bien algunas veces
    function DesencriptarBitmap(aBitmap: TBitmap): TBitmap; //No pinchaba bien algunas veces
    
    procedure EncriptarBitmapEspecial;
    procedure DesencriptarBitmaps;

    
    procedure ConvertirOriginalesEscalaGrisSimulacionImagenes;

    procedure RedimensionarImagenTemporalSimulacionImagenes;
    procedure RedimensionarImagenOriginalColorRealSimulacionImagenes;
    procedure RedimensionarImagenOriginalNegativoSimulacionImagenes;
    procedure RedimensionarImagenOriginalColorRealTonosGrisesSimulacionImagenes;
    procedure RedimensionarImagenOriginalNegativoTonosGrisesSimulacionImagenes;
    procedure RedimensionarImagenOriginalEncriptadaSimulacionImagenes;

    procedure RecortarImagenTemporalSimulacionImagenes;
    procedure RecortarImagenOriginalColorRealSimulacionImagenes;
    procedure RecortarImagenOriginalNegativoSimulacionImagenes;
    procedure RecortarImagenOriginalColorRealTonosGrisesSimulacionImagenes;
    procedure RecortarImagenOriginalNegativoTonosGrisesSimulacionImagenes;
    procedure RecortarImagenOriginalEncriptadaSimulacionImagenes;
    
    function RedimensionarImagen(aBitmap: TBitmap): TBitmap; //No pinchaba bien algunas veces
    function RecortarImagen(aBitmap: TBitmap): TBitmap;      //No pinchaba bien algunas veces
    
    procedure CapturarImagenSimulacionImagenes;
    function DeterminarColoresPredominantesSimulacionImagenes: TColor;

    //Cosas de la etiqueta
    procedure UpdateImageLabelSimulacionImagenes;
    procedure BorrarImageLabelSimulacionImagenes;


    //Cosas del Visor
    procedure SetAlineacionVerticalVisorSimulacionImagenes(aAlign: String);
    procedure SetAlineacionHorizontalVisorSimulacionImagenes(aAlign: String);
    procedure SetTipoVisorSimulacionImagenes(aKind: String);

    //Cosas de los dsZoomNavigator
    procedure ScrollBoxScrollSimulacionImagenes(Sender: TObject);
    procedure DrawPageSimulacionImagenes(Sender: TObject);
    procedure ActualizarDSZoomNavigatorSimulacionImagenes;
    function EstaEncimaZoomNavigatorSimulacionImagenes: Boolean;
    function EstaEncimaImagenCentral: Boolean;

    //Probando con la imagen
    procedure InvertirBitmap(Bmp: TBitmap);

    //Componentes
    procedure HabilitarComponentesSimulacionImagenes;
    procedure DeshabilitarComponentesSimulacionImagenes;

    procedure MostrarMirillaSimulacionImagenes;
    procedure OcultarMirillaSimulacionImagenes;
    procedure ColorearMirillaSimulacionImagenes(aColor: TColor);


    //Imagenes vectoriales
    function CrearImagenVectorial(aTipo: String; aName:String; AParent:TWinControl; ALeft, ATop:Integer):TImage;
    function CrearFormaVectorial(aTipo: String; aName:String; AParent:TWinControl; ALeft, ATop:Integer):TShape;
    
    procedure OnMesaClick(Sender: TObject);
    procedure OnMesaMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure OnFormaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure OnFormaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    
    procedure AjustarCoordenadas;

  public
    procedure DrawGradient(Canvas: TCanvas; ARect: TRect; StartingColor, EndingColor: TColor; Style: TGradientStyle);

    property DrawBuffer: TBitmap read GetDrawBuffer;
    { Public declarations }

  end;






var
  frmPrincipal: TfrmPrincipal;


const
    MaxPixelCount   =  32768;

type
    pRGBArray  =  ^TRGBArray;
    TRGBArray  =  ARRAY[0..MaxPixelCount-1] OF TRGBTriple;

  function Min(a, b: integer): integer;
  function Max(a, b: integer): integer;




      implementation
  
 uses UfrmPresentacion,
 BcRectUtilities;

var
    //Variables para la configuracion del modo de pantalla (optimo = 1024 X 768)
    AnchoOriginalPantalla: Integer;
    AltoOriginalPantalla: Integer;
    Pantalla: TPantalla;
    //frmRegistro: TfrmRegistro;


    //*** Variables de trabajo con archivos ***
    //Variables para nombres de archivos abiertos
    ArchivoEnteroAbiertoSimulacionImagenes: AnsiString;
    CaminoDelArchivoAbiertoSimulacionImagenes: AnsiString;

    NombreEnteroDelArchivoAbiertoSimulacionImagenes: AnsiString;
    NombreDelArchivoAbiertoSimulacionImagenes: AnsiString;
    NombreUtilDelArchivoAbiertoSimulacionImagenes: AnsiString;
    
    ExtensionDelArchivoAbiertoSimulacionImagenes: AnsiString;


    
    //Variable para el trabajo con ficheros integrantes del fichero SIM
    FicheroZoomImagen: TFicheroZoomImagen;
    FicheroComentarios: TFicheroComentarios;
    FicheroTemporalComentarios: TFicheroComentarios;

    //Variables de comentarios
    ComentariosSimulacionImagenes: TStringList;

    //Libreria y variables para el trabajo con imagenes
    FreeImageLibrary: TPixTwix;
    BitmapOriginalColorRealSimulacionImagenes: TBitmap;


    //Variables de ultimo trabajo realizado
    UltimoTrabajoSimulacionImagenes: AnsiString;


    //*** Variables ficheros de la configuraci�n de los visores ***
    FicheroAlineacionVisores: TFicheroAlineacionVisores;
    FicheroTipoVisores: TFicheroTipoVisores;


    //Variables de la alineaci�n vertical de los visores
    AlineacionVerticalVisorSimulacionImagenes: AnsiString;


    //Variables de la alineaci�n horizontal de los visores
    AlineacionHorizontalVisorSimulacionImagenes: AnsiString;


    //Variables del tipo de visores
    TipoDeVisorSimulacionImagenes: AnsiString;


    //Variables del color de los visores
    ColorAutomatizadoVisorSimulacionImagenes: Boolean;
    ColorPersonalizadoVisorSimulacionImagenes: TColor;



    //Variables de la configuraci�n de las etiquetas
    ColorEstandardEtiquetaSimulacionImagenes: Boolean;


    //Variables del sistema de configuracion de idioma
    IdiomaImperante: AnsiString;
    FicheroIdioma: TFicheroIdioma;


    //Variables del calculo de distancia
    AumentoSimulacionImagenes: Integer;
    PrimerPunto, SegundoPunto: TPoint;
    Calculando: Boolean;
    Turno: Integer;

    
    //Variables del calculo de colores predominantes en la imagen mostrada
    PigmentoRojoSimulacionImagenes: Integer;
    PigmentoVerdeSimulacionImagenes: Integer;
    PigmentoAzulSimulacionImagenes: Integer;

{$R *.dfm}



Procedure TfrmPrincipal.appmessage(var msg:tmsg; var handled:boolean);
begin
  if (   (msg.message = wm_syscommand) and (msg.wParam = sc_screensave)   )
    then handled:= True;
end;



procedure TfrmPrincipal.SubMenuSalirClick(Sender: TObject);
begin
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        if MessageDlg('�Desea cerrar el sistema SimOptic 2008?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
          then
            begin
              //Restituyo la resoluci�n de la pantalla
              CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

              //Termino la aplicaci�n
              Application.Terminate;
            end;
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  if MessageDlg('Do you want to close the SimOptic 2008 system?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                    then
                      begin
                        //Restituyo la resoluci�n de la pantalla
                        CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

                        //Termino la aplicaci�n
                        Application.Terminate;
                      end;
                end
                  else
                    begin //Otro lenguaje aun no comprendido, o sino por edicion no autorizada del fichero de idioma
                      //Restituyo la resoluci�n de la pantalla
                      CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

                      //Termino la aplicaci�n
                      Application.Terminate;
                    end;
          end;

end;


{---------------------------------------------------------}


procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  //Envio los valores de pantalla inicial a la Forma de Presentacion (Splash Screen)
  frmPresentacion.AnchoOriginalPantalla:= AnchoOriginalPantalla;
  frmPresentacion.AltoOriginalPantalla:= AltoOriginalPantalla;

  //Envio el idioma imperante a la Forma de Presentacion (Splash Screen)
  frmPresentacion.IdiomaImperante:= IdiomaImperante;

  //Muestro el Splash Screen
  frmPresentacion.ShowModal;

  //Deshabilito los componentes
  DeshabilitarComponentesSimulacionImagenes;

  //Creo el fichero de idioma
  FicheroIdioma:= TFicheroIdioma.New;

  //Cargo el fichero de idioma
  FicheroIdioma.Cargar(ExtractFilePath(Application.ExeName) + 'Languaje\lang.txt');

  //Determino el idoma a mostrar en a interfaz
  if (FicheroIdioma.DeterminarIdiomaImperante = 'Ingles')
    then
      begin
        //Actualizo la variable indicadora de idioma imperante
        IdiomaImperante:= 'Ingles';

        //Instauro el idioma ingles
        SetIdiomaIngles;
      end
        else
          begin
            if (FicheroIdioma.DeterminarIdiomaImperante = 'Espannol')
              then
                begin
                  //Actualizo la variable indicadora de idioma imperante
                  IdiomaImperante:= 'Espannol';

                  //Instauro el idioma espannol
                  SetIdiomaEspannol;
                end;
          end;

  //** Sistema de Alineaci�n de visores de la aplicacion **

  //Creo el fichero de alineacion de los visores
  FicheroAlineacionVisores:= TFicheroAlineacionVisores.New;

  //Cargo el fichero de alineacion de los visores
  FicheroAlineacionVisores.CargarAlineaciones;


  //Determino la alineacion horizontal de los visores a mostrar en el Modulo de Simulacion
  if (FicheroAlineacionVisores.DeterminarAlineacionHorizontalSimulacionImagenes = 'Centro')
    then
      begin
        //Actualizo la variable indicadora de alineacion horizontal imperante
        AlineacionHorizontalVisorSimulacionImagenes:= 'Centro';

        //Instauro la alineacion horizontal centrada
        SetAlineacionHorizontalVisorSimulacionImagenes('Centro');
      end
        else
          begin
            if (FicheroAlineacionVisores.DeterminarAlineacionHorizontalSimulacionImagenes = 'Izquierda')
              then
                begin
                  //Actualizo la variable indicadora de alineacion horizontal imperante
                  AlineacionHorizontalVisorSimulacionImagenes:= 'Izquierda';

                  //Instauro la alineacion horizontal a la izquierda
                  SetAlineacionHorizontalVisorSimulacionImagenes('Izquierda');
                end
                  else
                    begin
                      if (FicheroAlineacionVisores.DeterminarAlineacionHorizontalSimulacionImagenes = 'Derecha')
                        then
                          begin
                            //Actualizo la variable indicadora de alineacion horizontal imperante
                            AlineacionHorizontalVisorSimulacionImagenes:= 'Derecha';

                            //Instauro la alineacion horizontal a la derecha
                            SetAlineacionHorizontalVisorSimulacionImagenes('Derecha');
                          end;
                    end;
          end;


  //Determino la alineacion vertical de los visores a mostrar en el Modulo de Simulacion
  if (FicheroAlineacionVisores.DeterminarAlineacionVerticalSimulacionImagenes = 'Centro')
    then
      begin
        //Actualizo la variable indicadora de alineacion vertical imperante
        AlineacionVerticalVisorSimulacionImagenes:= 'Centro';

        //Instauro la alineacion vertical centrada
        SetAlineacionVerticalVisorSimulacionImagenes('Centro');
      end
        else
          begin
            if (FicheroAlineacionVisores.DeterminarAlineacionVerticalSimulacionImagenes = 'Arriba')
              then
                begin
                  //Actualizo la variable indicadora de alineacion vertical imperante
                  AlineacionVerticalVisorSimulacionImagenes:= 'Arriba';

                  //Instauro la alineacion vertical hacia arriba
                  SetAlineacionVerticalVisorSimulacionImagenes('Arriba');
                end
                  else
                    begin
                      if (FicheroAlineacionVisores.DeterminarAlineacionVerticalSimulacionImagenes = 'Abajo')
                        then
                          begin
                            //Actualizo la variable indicadora de alineacion vertical imperante
                            AlineacionVerticalVisorSimulacionImagenes:= 'Abajo';

                            //Instauro la alineacion vertical hacia abajo
                            SetAlineacionVerticalVisorSimulacionImagenes('Abajo');
                          end;
                    end;
          end;

  //Pongo la variable de color de los visores en automatizado
  ColorAutomatizadoVisorSimulacionImagenes:= True;


  //** Sistema de configuracion de tipo de visores de la aplicacion **

  //Creo el fichero de tipo de visores
  FicheroTipoVisores:= TFicheroTipoVisores.New;

  //Cargo el fichero de tipo de visores
  FicheroTipoVisores.CargarTiposDeVisores;

  //Determino el tipo de visor a mostrar en el Modulo de Simulacion
  if (FicheroTipoVisores.DeterminarTipoVisorSimulacionImagenes = 'Simple')
    then
      begin
        //Actualizo la variable indicadora del tipo de visor imperante
        TipoDeVisorSimulacionImagenes:= 'Simple';

        //Instauro el tipo de visor simple
        SetTipoVisorSimulacionImagenes('Simple');
      end
        else
          begin
            if (FicheroTipoVisores.DeterminarTipoVisorSimulacionImagenes = 'Complejo')
              then
                begin
                  //Actualizo la variable indicadora del tipo de visor imperante
                  TipoDeVisorSimulacionImagenes:= 'Complejo';

                  //Instauro el tipo de visor complejo
                  SetTipoVisorSimulacionImagenes('Complejo');
                end
                  else
                    begin
                      if (FicheroTipoVisores.DeterminarTipoVisorSimulacionImagenes = 'Realista')
                        then
                          begin
                            //Actualizo la variable indicadora del tipo de visor imperante
                            TipoDeVisorSimulacionImagenes:= 'Realista';

                            //Instauro el tipo de visor realista
                            SetTipoVisorSimulacionImagenes('Realista');
                          end;
                    end;
          end;




  //Pongo la variable de color de las etiquetas en estandard
  ColorEstandardEtiquetaSimulacionImagenes:= True;

  //Coloreo adecuadamente la mirilla (color lima de inicio, sin nada cargado)
  ColorearMirillaSimulacionImagenes(clLime);

  //Especifo la procedencia inicial de los ficheros
  ProcedenciaDelFicheroSimulacionImagenes:= 'Ninguno';

  //Especifico el directorio del FileListBox (Biblioteca Interna)
  FileListBoxSimulacionImagenes.Directory:= ExtractFilePath(Application.ExeName) + 'Library\';

  //Verifico si hay al menos un archivo en el FileListBox (Biblioteca Interna)
  if (FileListBoxSimulacionImagenes.Count <> 0)
    then
      begin
        //Habilito el LabelButton
        lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= True;
      end
        else
          begin
            //Deshabilito el LabelButton
            lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= False;
          end;

  //Valido los aumentos
  ValidarAumentosSimulacionImagenes;
  
  //Probando
  //ComentariosSimulacionImagenes:= TStringList(' ');
end;



procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  {Shut down WinSock}
  WSACleanup;

  //Restituyo la resoluci�n de la pantalla
  CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);  
end;



procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Restituyo la resoluci�n de la pantalla
  CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);
end;



procedure TfrmPrincipal.DeterminarResolucionInicial;
begin
  //Determino la resoluci�n inicial de la pantalla
  AnchoOriginalPantalla:= GetSysTemMetrics(SM_CXSCREEN);   {Ancho}
  AltoOriginalPantalla:= GetSysTemMetrics(SM_CYSCREEN);   {Alto}
end;



function TfrmPrincipal.CambiarResolucion(XRes, YRes: DWord):integer;
var
  lpDevMode : TDeviceMode;
begin
//Cambio la resoluci�n de la pantalla a los valores
  EnumDisplaySettings(nil, 0, lpDevMode);
  lpDevMode.dmFields:=DM_PELSWIDTH or DM_PELSHEIGHT;
  lpDevMode.dmPelsWidth:=XRes;
  lpDevMode.dmPelsHeight:=YRes;
  CambiarResolucion:=ChangeDisplaySettings(lpDevMode, 0);
end;



//Posicion del Mouse en el eje de las X (Columna)
function TfrmPrincipal.HallarColumnaPosicionX: Integer;
var 
  Cur : TPoint;
  //x:integer;
begin 
  GetCursorPos(Cur);
  Result := Cur.x;
end;



//Posicion del Mouse en el eje de las Y
function TfrmPrincipal.HallarFilaPosicionY: Integer;
var 
  Cur : TPoint;
  //y:integer;
begin 
  GetCursorPos(Cur);
  Result := Cur.y;
end;




procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  wVersionRequested : WORD;
  wsaData : TWSAData;
  Img: TATImage;
begin
  //Para poder obtener el IP y nombre de la PC
  {Start up WinSock}
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);

  //Pruebas
  //ATImageBoxSimulacionImagenes.Image.OnMouseDown:= ATImageBoxImageSimulacionImagenesMouseDown;
  //ATImageBoxSimulacionImagenes.Image.OnMouseMove:= ATImageBoxImageSimulacionImagenesMouseMove;

  //PersonalizarCaptionsMenuSistemaDeLaForma(Handle);

  //Llamo al procedimiento que impide que se levante el salvapantallas, cuando trate de mostrarse.
  Application.OnMessage:=appmessage;

  //Determino la resoluci�n inicial de la pantalla
  DeterminarResolucionInicial;

  //Creo una instancia de la clase pantalla
  Pantalla:= TPantalla.Create;

  //Guardo los valores inicales de la pantalla
  Pantalla.AnchoOriginalPantalla:= AnchoOriginalPantalla;
  Pantalla.AltoOriginalPantalla:= AltoOriginalPantalla;

  if (   (AnchoOriginalPantalla < 1024) or (AltoOriginalPantalla < 768)   )
    then
      begin
        //Cambio la resoluci�n de la pantalla hacia 1024 X 768
        CambiarResolucion(1024, 768);
      end;   

  //Inicializo la variable de ultimo trabajo realizado
  UltimoTrabajoSimulacionImagenes:= 'Ninguno';

  ATImageBoxSimulacionImagenes.OnOptionsChange := FormResize;

  //Pongo la variable de color del ImageLabel en estandard
  ColorEstandardEtiquetaSimulacionImagenes:= True;
  
  //Cambio el font del ImageLabel de los ATImage
  ATImageBoxSimulacionImagenes.ImageLabel.Font.Color := clBlue;

  FUpdatingSelfOptionsSimulacionImagenes := False;

  UpdateImageOptionsSimulacionImagenes;

  //Cargo los bmp para los LabelButon (deshabilitados)
  lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Gris.bmp');
  lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Gris.bmp');


  //--------------------------------------------------
  //*** Estipulo la configuracion para los dialogs ***
  //--------------------------------------------------
  //Customizo los botones y paneles para los dialogs
  MsgOptions.CustomButtonsColorScheme := btncsNeoSky;
  MsgOptions.CustomPanelColorScheme := pnlcsSky;
  //MsgOptions.CustomProgressColorScheme := procsSky;   //no es necesario en los dialogs
  
  //Usar customizacion para paneles de los dialogs
  MsgOptions.UseCustomPanel := True;

  //Usar customizacion para botones de los dialogs
  MsgOptions.UseCustomButtons := True;

  //Usar customizacion para el font de los dialogs
  MsgOptions.UseCustomFont := True;

  //Le especifico un font adecuado para los dialogs
  MsgOptions.Font.Assign(FontDialogSimulacionImagenes.Font);

  //Usar gradiente en los dialogs
  MsgOptions.UseGradient := True;

  //Usar forma especial en los botones de los dialogs
  MsgOptions.UseShapedForm := True;

  //No mostrar bordes en los dialogs
  MsgOptions.UseBorder := False;

  //MsgOptions.FormRoundSize := 15;
  //MsgOptions.StartGradientColor := clNavy;
  //MsgOptions.EndGradientColor := clBlack;

  //Color de
    //MsgOptions.StartGradientColor := 15448477; //clGradientInactiveCaption;
    //MsgOptions.EndGradientColor := 16749885; //clGradientActiveCaption;

  //MsgOptions.Font.Name := 'Tahoma';
  //MsgOptions.Font.Style := [fsBold];

  //Creo la variable bitmap para la imagen color real original
  BitmapOriginalColorRealSimulacionImagenes:= TBitmap.Create;
end;



procedure TfrmPrincipal.SubMenuAcercaDeSimOpticClick(Sender: TObject);
begin
  //Ejecuto el SpeedButton correspondiente (Acerca de...)
  SpeedButtonAcercaDeSimOpticSimulacionImagenes.Click;
end;



procedure TfrmPrincipal.SubMenuAbrirClick(Sender: TObject);
begin
  //Ejecuto el SpeedButton de abrir archivo
  if (SpeedButtonCargarArchivoSimulacionImagenes.Enabled = True)
    then
      begin
        SpeedButtonCargarArchivoSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.SpeedButtonCargarArchivoSimulacionImagenesClick(Sender: TObject);
var
  ArchivoEnteroAbierto: AnsiString;
  CaminoDelArchivoAbierto: AnsiString;
  NombreEnteroDelArchivoAbierto: AnsiString;
  NombreDelArchivoAbierto: AnsiString;

  ExtensionDelArchivoAbierto: AnsiString;
  NombreUtilDelArchivoAbierto: AnsiString;
  

  //Debe desecharse posteriormente
  //ArchivoEnteroCargado: AnsiString;
  //CaminoDelArchivoCargado: AnsiString;
  //NombreEnteroDelArchivoCargado: AnsiString;
  //NombreDelArchivoCargado: AnsiString;

  MyJPEG : TJPEGImage;
  MyBMP  : TBitmap;
  BitmapEncriptado : TBitmap;
  
  Label Salida;
begin
  //Le cambio el filter al OpenDialog de Simulacion
  OpenDialogSimulacion.FileName:= '';
  OpenDialogSimulacion.Filter:= 'Archivos Compatibles (*.SIM, *.BMP, *.JPG)|*.SIM; *.BMP; *.JPG|Archivos de Simulaci�n (*.SIM)|*.SIM|Archivos de BitMap (*.BMP)|*.BMP|Archivos de Im�genes (*.JPG)|*.JPG';
  //OpenDialogSimulacion.DefaultExt := '*.SIM';
  OpenDialogSimulacion.DefaultExt := '*.SIM; *.BMP; *.JPG';
  
  //Ejecuto el OpenDialog
  if (OpenDialogSimulacion.Execute)
    then
      begin
        //Copio la direccion entera al archivo abierto
        ArchivoEnteroAbierto:= OpenDialogSimulacion.FileName;

        //Le extraigo el camino de acceso al archivo abierto
        CaminoDelArchivoAbierto:= ExtractFilePath(ArchivoEnteroAbierto);

        //Obtengo el nombre entero del archivo abierto (junto con la extension)
        NombreEnteroDelArchivoAbierto:= QuitaEn(ArchivoEnteroAbierto, CaminoDelArchivoAbierto);

        //Obtengo el nombre del archivo abierto (sin la extension)
        NombreDelArchivoAbierto:=  QuitaEn(NombreEnteroDelArchivoAbierto, AnsiRightStr(NombreEnteroDelArchivoAbierto, 3 + 1));

        //*** Verificamos si el archivo abierto es de extension *.sim, *.bmp o *.jpg
        if (  LowerCase( AnsiRightStr(NombreEnteroDelArchivoAbierto, 3) ) = 'sim'   )
          then
            begin //Formato *.SIM
              //Obtengo la extension del archivo abierto
              ExtensionDelArchivoAbierto:= 'sim';

              //En este caso la parte util coincide con el nombre
              NombreUtilDelArchivoAbierto:= NombreDelArchivoAbierto;
                    
              //Procedemos a extraer la informacion hacia los archivos temporales de la biblioteca
              ExtraerFicheroSIM(ArchivoEnteroAbierto);

              //Verifico el formato del archivo interior (si est�)
              if (   FileExists(   LowerCase(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp')   ) = True   )
                then
                  begin  //Formato bmp de la imagen interior
                    //Creo un fichero de zoom
                    FicheroZoomImagen:= TFicheroZoomImagen.New;

                    //Cargo el fichero de zoom
                    FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Zoom.txt');

                    //Verifico que no haya lios con el aumento a partir del fichero interior de aumento
                    if (FicheroZoomImagen.DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes <> 'Error')
                      then
                        begin //Todo ok con el aumento a partir del fichero interior de aumento
                          //Determino el aumento a partir del fichero interior de aumento y lo guardo en la variable global
                          AumentoSimulacionImagenes:= StrToInt(FicheroZoomImagen.DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes);

                          //Muestro el aumento al usuario en el Label correspondiente
                          lblValorAumentoOpticoSimulacionImagenes.Caption:= IntToStr(AumentoSimulacionImagenes);

                          //Creo un fichero de comentarios
                          FicheroComentarios:= TFicheroComentarios.New;

                          //Cargo el fichero de comentarios
                          FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Commentaries.txt');

                          //Determino los comentarios a partir del fichero interior de comentarios y lo guardo en la variable global
                          ComentariosSimulacionImagenes:= FicheroComentarios.DeterminarComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes;

                          //Limpio el Memo de comentarios
                          MemoComentariosSimulacionImagenes.Clear;

                          //Muestro los comentarios en su Memo correspondiente
                          MemoComentariosSimulacionImagenes.Lines:= ComentariosSimulacionImagenes;

                          //Libero memoria del fichero de comentarios
                          FicheroComentarios.Free;

                          //Guardo la direccion entera al archivo abierto en la variable global
                          ArchivoEnteroAbiertoSimulacionImagenes:= ArchivoEnteroAbierto;

                          //Guardo el camino de acceso al archivo abierto en la variable global
                          CaminoDelArchivoAbiertoSimulacionImagenes:= CaminoDelArchivoAbierto;

                          //Guardo el nombre entero del archivo abierto en la variable global
                          NombreEnteroDelArchivoAbiertoSimulacionImagenes:= NombreEnteroDelArchivoAbierto;

                          //Guardo el nombre del archivo abierto (sin la extension) en la variable global
                          NombreDelArchivoAbiertoSimulacionImagenes:= NombreDelArchivoAbierto;

                          //Guardamos la extension del archivo abierto en la variable global
                          ExtensionDelArchivoAbiertoSimulacionImagenes:= 'sim';

                          //Guardo el nombre util del archivo abierto en la variable global
                          NombreUtilDelArchivoAbiertoSimulacionImagenes:= NombreUtilDelArchivoAbierto;


                          //Cargo el bitmap encriptado en un ATImageBox especial
                          ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );
                          
                          //Desencripto los bitmaps
                          DesencriptarBitmaps;

{
                          //** Cargamos directamente las imagenes **
                          //ATImageBox de visualizacion
                          ATImageBoxSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox temporal de procesamiento
                          ATImageBoxTemporalSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Color Real)
                          ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Negativo)
                          ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Color Real + Escala Gris)
                          ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Negativo + Escala Gris)
                          ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

}

                          //Verifico el caption del LabelButton de comentarios
                          ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

                          //Verifico el Enable del LabelButton de comentarios
                          ValidarEnableLabelButtonsComentariosSimulacionImagenes;

                          //Cancelo el calculo, por si acaso se estaba haciendo
                          Calculando:= False;
                          

                          //Levanto el LabelSpeedButton de medicion de distancia entre puntos
                          lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Down:= False;
                          

                          //Le cambio el HeaderCaption al CollapsePanel central de Simulacion de Imagenes
                          if (IdiomaImperante = 'Espannol')
                            then
                              begin
                                CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                              end
                                else
                                  begin
                                    if (IdiomaImperante = 'Ingles')
                                      then
                                        begin
                                          CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                        end;
                                  end;
                                                            
                          //Especificaciones para los componentes visuales que muestran la imagen
                          dsZoomNavigatorSimulacionImagenes.ScrollBox:= ATImageBoxSimulacionImagenes;
                          dsZoomNavigatorSimulacionImagenes.Control:= ATImageBoxSimulacionImagenes.Image;
                          dsZoomNavigatorSimulacionImagenes.OnDrawPage:= DrawPageSimulacionImagenes;
                          dsZoomNavigatorSimulacionImagenes.Width:= 180;

                          ATImageBoxSimulacionImagenes.OnScroll:= ScrollBoxScrollSimulacionImagenes;

                          TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= True;

                          //Habilito los componentes del modulo de simulacion
                          HabilitarComponentesSimulacionImagenes;

                          //Refresco el ZoomNavigator de Simulacion de Imagenes
                          dsZoomNavigatorSimulacionImagenes.Refresh;

                          //Habilito los botones de Zoom
                          lblbtnZoomInSimulacionImagenes.Enabled:= True;
                          lblbtnZoomOutSimulacionImagenes.Enabled:= True;

                          //Cargo los bmp para los LabelButon (habilitados)
                          lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');
                          lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

                          //Refrescamos los LabelButon para que se muestren los cambios
                          lblbtnZoomInSimulacionImagenes.Refresh;
                          lblbtnZoomOutSimulacionImagenes.Refresh;

                          //Llevamos la imagen del modulo de simulacion directamente a 24 bits
                          ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.PixelFormat := pf24bit;

                          //Habilitamos los TrackBar de variacion de brillo y contraste
                          TrackBarBrilloSimulacionImagenes.Enabled:= True;
                          TrackBarContrasteSimulacionImagenes.Enabled:= True;

                          //Ponemos los TrackBar de brillo y contraste en el centro
                          TrackBarBrilloSimulacionImagenes.Position := 0;
                          TrackBarContrasteSimulacionImagenes.Position := 0;

                          //Actualizo la vision de la imagen
                          ActualizarVisionSimulacionImagenes;

                          //Ejecuto la conversion a Negativo del Original (negativo)
                          InvertirBitmap(ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap);
                          ATImageBoxOriginalNegativoSimulacionImagenes.Refresh;

                          //Ejecuto la conversion a Escala Gris de los Originales
                          ConvertirOriginalesEscalaGrisSimulacionImagenes;
                                  
                          //Habilitamos los TrackBar de variacion de brillo y contraste
                          TrackBarBrilloSimulacionImagenes.Enabled:= True;
                          TrackBarContrasteSimulacionImagenes.Enabled:= True;

                          //Ponemos los TrackBar de brillo y contraste en el centro
                          TrackBarBrilloSimulacionImagenes.Position := 0;
                          TrackBarContrasteSimulacionImagenes.Position := 0;

                          //Actualizo nuevamente la vision de la imagen
                          ActualizarVisionSimulacionImagenes;

                          ATImageBoxSimulacionImagenes.UpdateImageInfo;
                          UpdateSelfScaleOptionsSimulacionImagenes;

                          //Valido los aumentos
                          ValidarAumentosSimulacionImagenes;

                          //Le cambio el cursor al TImage
                          ATImageBoxSimulacionImagenes.Cursor:= crHandPoint;

                          //Especifo la procedencia del fichero abierto
                          if (CaminoDelArchivoAbierto <> (ExtractFilePath(Application.ExeName) + 'Library\'))
                            then
                              begin
                                ProcedenciaDelFicheroSimulacionImagenes:= 'Externo';
                              end
                                else
                                  begin
                                    ProcedenciaDelFicheroSimulacionImagenes:= 'Interno';
                                  end;
                        end   //Fin de todo ok con el aumento a partir del fichero interior de aumento
                          else
                            begin //Lios con el aumento a partir del fichero interior de aumento
                              //El archivo interjno de zoom esta da�ado o no es valido
                              MessageDlg('El archivo abierto ' + NombreDelArchivoAbierto + '.sim' + ' tiene datos internos de aumento NO ADECUADOS, o est�n da�ados.', mtError, [mbOK], 0);

                              //Salgo del procedimiento
                              Goto Salida;
                            end;  //Fin de lios con el aumento a partir del fichero interior de aumento
                  end  //Fin de formato bmp de la imagen interior
                    else
                      begin
                        //No existe ningun achivo de formato admitido
                        MessageDlg('El archivo abierto ' + NombreEnteroDelArchivoAbierto + ' no posee el formato interno adecuado, o est� da�ado.', mtError, [mbOK], 0);

                        //Salgo del procedimiento
                        Goto Salida;
                      end;
            end   //Fin de formato *.SIM de fichero abierto
              else
                begin
                  if (  LowerCase( AnsiRightStr(NombreEnteroDelArchivoAbierto, 3) ) = 'bmp'   )
                    then
                      begin //Formato *.BMP de fichero abierto
                        //Obtengo la extension del archivo abierto
                        ExtensionDelArchivoAbierto:= 'bmp';

                        //Determino si el nombre del archivo abierto cumple con el formato adecuado (_X_ al final + aumento)
                        if (CumpleConFormatoAdecuado(NombreEnteroDelArchivoAbierto) = True)
                          then
                            begin //Archivo bmp abierto cumple con el formato adecuado
                              //Determino el aumento a partir del nombre del fichero cargado y lo guardo en la variable global
                              AumentoSimulacionImagenes:= DeterminarAumento(NombreEnteroDelArchivoAbierto);

                              //Muestro el aumento al usuario en el Label correspondiente
                              lblValorAumentoOpticoSimulacionImagenes.Caption:= IntToStr(AumentoSimulacionImagenes);

                              //Guardo la direccion entera al archivo abierto en la variable global
                              ArchivoEnteroAbiertoSimulacionImagenes:= ArchivoEnteroAbierto;

                              //Guardo el camino de acceso al archivo abierto en la variable global
                              CaminoDelArchivoAbiertoSimulacionImagenes:= CaminoDelArchivoAbierto;

                              //Guardo el nombre entero del archivo abierto en la variable global
                              NombreEnteroDelArchivoAbiertoSimulacionImagenes:= NombreEnteroDelArchivoAbierto;

                              //Guardo el nombre del archivo abierto (sin la extension) en la variable global
                              NombreDelArchivoAbiertoSimulacionImagenes:= NombreDelArchivoAbierto;

                              //Guardamos la extension del archivo abierto en la variable global
                              ExtensionDelArchivoAbiertoSimulacionImagenes:= 'bmp';

                              //Obtengo el nombre util del archivo bmp abierto
                              NombreUtilDelArchivoAbierto:= ExtraerParteUtilDeNombreFichero(NombreDelArchivoAbierto);

                              //Guardo el nombre util del archivo abierto en la variable global
                              NombreUtilDelArchivoAbiertoSimulacionImagenes:= NombreUtilDelArchivoAbierto;

                              //Limpio el Memo de comentarios
                              MemoComentariosSimulacionImagenes.Clear;

                              //Creo un bitmap temporal
                              MyBMP:= TBitmap.Create;

                              //Cargo en el bitmap la imagen abierta
                              MyBMP.LoadFromFile(OpenDialogSimulacion.FileName);

                              //Convierto el bitmap temporal (con la imagen ya cargada) a 24 bits 
                              MyBMP.PixelFormat := pf24bit;

                              //Salvo en temporales el bitmap para poder usarlo luego (no encriptado)
                              MyBMP.SaveToFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //** Cargo las imagenes desde temporales (ya son bmp) **
                              //ATImageBox de visualizacion
                              ATImageBoxSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //ATImageBox temporal de procesamiento
                              ATImageBoxTemporalSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //ATImageBox original (Color Real)
                              ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //ATImageBox original (Negativo)
                              ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //ATImageBox original (Color Real + Escala Gris)
                              ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //ATImageBox original (Negativo + Escala Gris)
                              ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //ATImageBox especial
                              ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'TempFiles\YourBmpHere.bmp' );

                              //Encripto la imagen del ATImageBox especial
                              EncriptarBitmapEspecial;

                              //Salvo el bitmap encriptado en temporales el bitmap (rescribe el anterior)
                              ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                              //Libero memoria del bitmap
                              MyBMP.Free;

                              //Verifico el caption del LabelButton de comentarios
                              ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

                              //Verifico el Enable del LabelButton de comentarios
                              ValidarEnableLabelButtonsComentariosSimulacionImagenes;

                              //Cancelo el calculo, por si acaso se estaba haciendo
                              Calculando:= False;

                              //Levanto el LabelSpeedButton de medicion de distancia entre puntos
                              lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Down:= False;

                              //Le cambio el Headercaption al CollapsePanel central de Simulacion de Imagenes
                              if (IdiomaImperante = 'Espannol')
                                then
                                  begin
                                    CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                  end
                                    else
                                      begin
                                        if (IdiomaImperante = 'Ingles')
                                          then
                                            begin
                                              CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                            end;
                                      end;

                              //Especificaciones para los componentes visuales que muestran la imagen
                              dsZoomNavigatorSimulacionImagenes.ScrollBox:= ATImageBoxSimulacionImagenes;
                              dsZoomNavigatorSimulacionImagenes.Control:= ATImageBoxSimulacionImagenes.Image;
                              dsZoomNavigatorSimulacionImagenes.OnDrawPage:= DrawPageSimulacionImagenes;
                              dsZoomNavigatorSimulacionImagenes.Width:= 180;

                              ATImageBoxSimulacionImagenes.OnScroll:= ScrollBoxScrollSimulacionImagenes;

                              TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= True;

                              //Habilito los componentes del modulo de simulacion
                              HabilitarComponentesSimulacionImagenes;

                              //Refresco el ZoomNavigator de Simulacion de Imagenes
                              dsZoomNavigatorSimulacionImagenes.Refresh;

                              //Habilito los botones de Zoom
                              lblbtnZoomInSimulacionImagenes.Enabled:= True;
                              lblbtnZoomOutSimulacionImagenes.Enabled:= True;

                              //Cargo los bmp para los LabelButon (habilitados)
                              lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');
                              lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

                              //Refrescamos los LabelButon para que se muestren los cambios
                              lblbtnZoomInSimulacionImagenes.Refresh;
                              lblbtnZoomOutSimulacionImagenes.Refresh;

                              //Habilitamos los TrackBar de variacion de brillo y contraste
                              TrackBarBrilloSimulacionImagenes.Enabled:= True;
                              TrackBarContrasteSimulacionImagenes.Enabled:= True;

                              //Ponemos los TrackBar de brillo y contraste en el centro
                              TrackBarBrilloSimulacionImagenes.Position := 0;
                              TrackBarContrasteSimulacionImagenes.Position := 0;

                              //Actualizo la vision de la imagen
                              ActualizarVisionSimulacionImagenes;

                              //Ejecuto la conversion a Negativo del Original (negativo)
                              InvertirBitmap(ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap);
                              ATImageBoxOriginalNegativoSimulacionImagenes.Refresh;

                              //Ejecuto la conversion a Escala Gris de los Originales
                              ConvertirOriginalesEscalaGrisSimulacionImagenes;
                                           
                              //Habilitamos los TrackBar de variacion de brillo y contraste
                              TrackBarBrilloSimulacionImagenes.Enabled:= True;
                              TrackBarContrasteSimulacionImagenes.Enabled:= True;

                              //Ponemos los TrackBar de brillo y contraste en el centro
                              TrackBarBrilloSimulacionImagenes.Position := 0;
                              TrackBarContrasteSimulacionImagenes.Position := 0;

                              //Actualizo nuevamente la vision de la imagen
                              ActualizarVisionSimulacionImagenes;

                              ATImageBoxSimulacionImagenes.UpdateImageInfo;
                              UpdateSelfScaleOptionsSimulacionImagenes;

                              //Valido los aumentos
                              ValidarAumentosSimulacionImagenes;

                              //Le cambio el cursor al TImage
                              ATImageBoxSimulacionImagenes.Cursor:= crHandPoint;

                              //Especifo la procedencia del fichero abierto
                              if (CaminoDelArchivoAbierto <> (ExtractFilePath(Application.ExeName) + 'Library\'))
                                then
                                  begin
                                    ProcedenciaDelFicheroSimulacionImagenes:= 'Externo';
                                  end
                                    else
                                      begin
                                        ProcedenciaDelFicheroSimulacionImagenes:= 'Interno';
                                      end;
                            end  //Fin de archivo bmp abierto cumple con el formato adecuado
                              else
                                begin //No cumple con el formato adecuado la imagen bmp abierta (posibles cambios)
                                  //Muestro un mensaje de error al usuario
                                  MessageDlg('La imagen ' + NombreEnteroDelArchivoAbierto + ' no cumple con el formato adecuado.' + #13 + 'Consulte la ayuda del sistema SimOptic.', mtError, [mbOK], 0);

                                  //Salgo del procedimiento
                                  goto Salida;
                                end;  //Fin de no cumple con el formato adecuado
                      end   //Fin de formato *.BMP de fichero abierto
                        else
                          begin
                            if (  LowerCase( AnsiRightStr(NombreEnteroDelArchivoAbierto, 3) ) = 'jpg'   )
                              then
                                begin //Formato *.JPG de fichero abierto
                                  //Obtengo la extension del archivo abierto
                                  ExtensionDelArchivoAbierto:= 'jpg';

                                  //Determino si el nombre del archivo abierto cumple con el formato adecuado (_X_ al final + aumento)
                                  if (CumpleConFormatoAdecuado(NombreEnteroDelArchivoAbierto) = True)
                                    then
                                      begin //Archivo jpg abierto cumple con el formato adecuado
                                        //Determino el aumento a partir del nombre del fichero cargado
                                        AumentoSimulacionImagenes:= DeterminarAumento(NombreEnteroDelArchivoAbierto);

                                        //Muestro el aumento al usuario en el Label correspondiente
                                        lblValorAumentoOpticoSimulacionImagenes.Caption:= IntToStr(AumentoSimulacionImagenes);

                                        //Guardo la direccion entera al archivo abierto en la variable global
                                        ArchivoEnteroAbiertoSimulacionImagenes:= ArchivoEnteroAbierto;

                                        //Guardo el camino de acceso al archivo abierto en la variable global
                                        CaminoDelArchivoAbiertoSimulacionImagenes:= CaminoDelArchivoAbierto;

                                        //Guardo el nombre entero del archivo abierto en la variable global
                                        NombreEnteroDelArchivoAbiertoSimulacionImagenes:= NombreEnteroDelArchivoAbierto;

                                        //Guardo el nombre del archivo abierto (sin la extension) en la variable global
                                        NombreDelArchivoAbiertoSimulacionImagenes:= NombreDelArchivoAbierto;

                                        //Guardamos la extension del archivo abierto en la variable global
                                        ExtensionDelArchivoAbiertoSimulacionImagenes:= 'jpg';

                                        //Obtengo el nombre util del archivo jpg abierto
                                        NombreUtilDelArchivoAbierto:= ExtraerParteUtilDeNombreFichero(NombreDelArchivoAbierto);

                                        //Guardo el nombre util del archivo abierto en la variable global
                                        NombreUtilDelArchivoAbiertoSimulacionImagenes:= NombreUtilDelArchivoAbierto;

                                        //Limpio el Memo de comentarios
                                        MemoComentariosSimulacionImagenes.Clear;

                                        //Verifico el caption del LabelButton de comentarios
                                        ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

                                        //Verifico el Enable del LabelButton de comentarios
                                        ValidarEnableLabelButtonsComentariosSimulacionImagenes;

                                        //Deshabilitamos los TrackBar de variacion de brillo y contraste (aun no se puede variar nada, sino se jode todo)
                                        TrackBarBrilloSimulacionImagenes.Enabled:= False;
                                        TrackBarContrasteSimulacionImagenes.Enabled:= False;

                                        //Conversion de JPG a BMP
                                        MyJPEG := TJPEGImage.Create;
                                        with MyJPEG do
                                          begin
                                            //LoadFromFile('YourJpegHere.JPEG');
                                            //cargo la imagen
                                            MyJPEG.LoadFromFile(OpenDialogSimulacion.FileName);
    
                                            MyBMP := TBitmap.Create;
                                            with MyBMP do
                                              begin
                                                Width := MyJPEG.Width;
                                                Height := MyJPEG.Height;
                                                Canvas.Draw(0, 0, MyJPEG);
                                                PixelFormat := pf24bit;



                                                SaveToFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                //ATImageBoxSimulacionImagenes.Image.Picture.Bitmap:= MyBMP;
                                                ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                ATImageBoxSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                ATImageBoxTemporalSimulacionImagenes.Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');
                                                Free;
                                              end;

                                            Free; //Elimino el TJPEGImage creado temporalmente
                                          end;

                                        //Encripto la imagen del ATImageBox especial
                                        EncriptarBitmapEspecial;

                                        //Salvo el bitmap encriptado en temporales (rescribe el anterior)
                                        ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                                        //Cancelo el calculo, por si acaso se estaba haciendo
                                        Calculando:= False;

                                        //Levanto el LabelSpeedButton de medicion de distancia entre puntos
                                        lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Down:= False;

                                        //Le cambio el Headercaption al CollapsePanel central de Simulacion de Imagenes
                                        if (IdiomaImperante = 'Espannol')
                                          then
                                            begin
                                              CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                            end
                                              else
                                                begin
                                                  if (IdiomaImperante = 'Ingles')
                                                    then
                                                      begin
                                                        CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                                      end;
                                                end;

                                        //Especificaciones para los componentes visuales que muestran la imagen
                                        dsZoomNavigatorSimulacionImagenes.ScrollBox:= ATImageBoxSimulacionImagenes;
                                        dsZoomNavigatorSimulacionImagenes.Control:= ATImageBoxSimulacionImagenes.Image;
                                        dsZoomNavigatorSimulacionImagenes.OnDrawPage:= DrawPageSimulacionImagenes;
                                        dsZoomNavigatorSimulacionImagenes.Width:= 180;

                                        ATImageBoxSimulacionImagenes.OnScroll:= ScrollBoxScrollSimulacionImagenes;

                                        TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= True;

                                        //Habilito los componentes del modulo de simulacion
                                        HabilitarComponentesSimulacionImagenes;

                                        //Refresco el ZoomNavigator de Simulacion de Imagenes
                                        dsZoomNavigatorSimulacionImagenes.Refresh;

                                        //Habilito los botones de Zoom
                                        lblbtnZoomInSimulacionImagenes.Enabled:= True;
                                        lblbtnZoomOutSimulacionImagenes.Enabled:= True;

                                        //Cargo los bmp para los LabelButon (habilitados)
                                        lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');
                                        lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

                                        //Refrescamos los LabelButon para que se muestren los cambios
                                        lblbtnZoomInSimulacionImagenes.Refresh;
                                        lblbtnZoomOutSimulacionImagenes.Refresh;

                                        //Habilitamos los TrackBar de variacion de brillo y contraste
                                        TrackBarBrilloSimulacionImagenes.Enabled:= True;
                                        TrackBarContrasteSimulacionImagenes.Enabled:= True;

                                        //Ponemos los TrackBar de brillo y contraste en el centro
                                        TrackBarBrilloSimulacionImagenes.Position := 0;
                                        TrackBarContrasteSimulacionImagenes.Position := 0;

                                        //Actualizo la vision de la imagen
                                        ActualizarVisionSimulacionImagenes;

                                        //Ejecuto la conversion a Negativo del Original (negativo)
                                        InvertirBitmap(ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap);
                                        ATImageBoxOriginalNegativoSimulacionImagenes.Refresh;

                                        //Ejecuto la conversion a Escala Gris de los Originales
                                        ConvertirOriginalesEscalaGrisSimulacionImagenes;
                                  
                                        //Habilitamos los TrackBar de variacion de brillo y contraste
                                        TrackBarBrilloSimulacionImagenes.Enabled:= True;
                                        TrackBarContrasteSimulacionImagenes.Enabled:= True;

                                        //Ponemos los TrackBar de brillo y contraste en el centro
                                        TrackBarBrilloSimulacionImagenes.Position := 0;
                                        TrackBarContrasteSimulacionImagenes.Position := 0;

                                        //Actualizo nuevamente la vision de la imagen
                                        ActualizarVisionSimulacionImagenes;

                                        ATImageBoxSimulacionImagenes.UpdateImageInfo;
                                        UpdateSelfScaleOptionsSimulacionImagenes;

                                        //Valido los aumentos
                                        ValidarAumentosSimulacionImagenes;

                                        //Le cambio el cursor al TImage
                                        ATImageBoxSimulacionImagenes.Cursor:= crHandPoint;

                                        //Especifo la procedencia del fichero abierto
                                        if (CaminoDelArchivoAbierto <> (ExtractFilePath(Application.ExeName) + 'Library\'))
                                          then
                                            begin
                                              ProcedenciaDelFicheroSimulacionImagenes:= 'Externo';
                                            end
                                              else
                                                begin
                                                  ProcedenciaDelFicheroSimulacionImagenes:= 'Interno';
                                                end;
                                      end  //Fin de archivo jpg abierto cumple con el formato adecuado
                                        else
                                          begin //No cumple con el formato adecuado la imagen jpg abierta (posibles cambios)
                                            MessageDlg('La imagen ' + NombreEnteroDelArchivoAbierto + ' no cumple con el formato adecuado.' + #13 + 'Consulte la ayuda del sistema SimOptic.', mtError, [mbOK], 0);

                                            //Salgo del procedimiento
                                            goto Salida;
                                          end;  //Fin de no cumple con el formato adecuado
                                end  //Fin de formato *.JPG de fichero abierto
                          end; //Fin de formato opuesto al *.bmp, de fichero abierto
                end;  //Fin de formato opuesto al *.SIM, de fichero abierto
      end; //Fin de OpenDialog ejecutado

  //Etiqueta que marca un punto de salida del procedimiento
  Salida:
end;



procedure TfrmPrincipal.SubMenuTemasDeAyudaClick(Sender: TObject);
begin
  //Aqu� hago una llamada a la ayuda previamente echa.
  SpeedButtonTemasDeAyudaSimulacionImagenes.Click;
end;



//*** Configuracion del idioma ***

procedure TfrmPrincipal.SetIdiomaEspannol; //Cambio los caption de todo el sistema, hacia el idioma espa�ol
begin
  //Modifico el Menu Principal
  SubMenuEspannol.Checked:= True;
  SubMenuEnglish.Checked:= False;

  SubMenuEspannol.Default:= True;
  SubMenuEnglish.Default:= False;

  //* Caption del Menu Principal (espa�ol)
  MenuArchivo.Caption:= 'Archivo';
  MenuVer.Caption:= 'Ver';
  MenuEdicion.Caption:= 'Edici�n';
  MenuHerramientas.Caption:= 'Herramientas';
  MenuAyuda.Caption:= 'Ayuda';

  //SubMenus del Menu Archivo
  SubMenuAbrir.Caption:= 'Abrir';
  SubMenuGuardar.Caption:= 'Guardar';
  SubMenuGuardarComo.Caption:= 'Guardar como...';
  SubMenuAgregarABiblioteca.Caption:= 'Agregar a la Biblioteca';
  SubMenuLimpiar.Caption:= 'Limpiar';
  SubMenuImprimir.Caption:= 'Imprimir';
  SubMenuSalir.Caption:= 'Salir';

  //SubMenus del Menu Edici�n
  SubMenuEdicionCalcularDistancia.Caption:= 'Calcular distancia';
  SubMenuEdicionCapturaDeImagen.Caption:= 'Captura de Imagen';
  SubMenuEdicionAmpliarImagen.Caption:= 'Ampliar Imagen';
  SubMenuEdicionAchicarImagen.Caption:= 'Achicar Imagen';
  SubMenuEdicionPrevisualizarReporte.Caption:= 'Previsualizar Reporte';
  SubMenuEdicionExportarHaciaPDF.Caption:= 'Exportar hacia PDF';
  SubMenuEdicionBorrarArchivoSIM.Caption:= 'Borrar archivo SIM';

  //SubMenus del Menu Ver
  SubMenuVerColorReal.Caption:= 'Color Real';
  SubMenuVerTonosGrises.Caption:= 'Tonos Grises';
  SubMenuVerNegativo.Caption:= 'Negativo';
  SubMenuVerAumentos.Caption:= 'Aumentos';
  SubMenuVerMediciones.Caption:= 'Mediciones';
  SubMenuVerVisor.Caption:= 'Visor';

  //SubMenus del Menu Herramientas
  SubMenuConfiguracionIdioma.Caption:= 'Configurar idioma';

  SubMenuConfigurarVisor.Caption:= 'Configurar Visor';
  SubMenuConfigurarAlineacionVerticalVisor.Caption:= 'Alineaci�n Vertical';
  SubMenuConfigurarAlineacionHorizontalVisor.Caption:= 'Alineaci�n Horizontal';

  SubMenuAlineacionVerticalVisorArriba.Caption:= 'Arriba';
  SubMenuAlineacionVerticalVisorCentro.Caption:= 'Centro';
  SubMenuAlineacionVerticalVisorAbajo.Caption:= 'Abajo';

  SubMenuAlineacionHorizontalVisorIzquierda.Caption:= 'Izquierda';
  SubMenuAlineacionHorizontalVisorCentro.Caption:= 'Centro';
  SubMenuAlineacionHorizontalVisorDerecha.Caption:= 'Derecha';

  SubMenuConfigurarColorVisor.Caption:= 'Color';
  SubMenuVisorColorAutomatico.Caption:= 'Selecci�n Autom�tica';
  SubMenuVisorColorPersonalizado.Caption:= 'Personalizado';

  SubMenuConfigurarTipoVisor.Caption:= 'Tipo';  
  SubMenuVisorTipoSimple.Caption:= 'Simple';
  SubMenuVisorTipoComplejo.Caption:= 'Complejo';
    
  SubMenuConfigurarEtiqueta.Caption:= 'Configurar Etiqueta';

  SubMenuConfigurarColorEtiqueta.Caption:= 'Color';
  SubMenuColorEtiquetaEstandard.Caption:= 'Estandard';
  SubMenuColorEtiquetaPersonalizado.Caption:= 'Personalizado';






  //SubMenus del Menu Ayuda
  SubMenuBlogDelSistema.Caption:= 'Blog Oficial de SimOptic 2008';
  SubMenuTemasDeAyuda.Caption:= 'Temas de Ayuda';
  SubMenuRegistro.Caption:= 'Registrar';
  SubMenuAcercaDeSimOptic.Caption:= 'Acerca de SimOptic 2008...';




  //*********************************************************
  //*** Hints de los componentes del modulo de simulacion ***
  //*********************************************************


  
  //Hints de SpeedButton de arriba
  SpeedButtonCargarArchivoSimulacionImagenes.Hint:= 'Abrir fichero';
  SpeedButtonSalvarArchivoSimulacionImagenes.Hint:= 'Guardar';
  SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Hint:= 'Agregar a la Biblioteca';
  SpeedButtonLimpiarSimulacionImagenes.Hint:= 'Limpiar la imagen';
  SpeedButtonImprimirSimulacionImagenes.Hint:= 'Imprimir Imagen';
  SpeedButtonTemasDeAyudaSimulacionImagenes.Hint:= 'Temas de ayuda';
  SpeedButtonAcercaDeSimOpticSimulacionImagenes.Hint:= 'Acerca de SimOptic 2008';


  //Hints de Edits
  edtFiltroBibliotecaInternaSimulacionImagenes.Hint:= 'Filtrar por nombre';


  //LabelButtons de la izquierda
  lblbtnBorrarArchivoSIMSimulacionImagenes.Hint:= 'Borrar Archivo SIM de la Biblioteca';

  lblbtnLimpiarSimulacionImagenes.Hint:= 'Limpiar imagen';

  lblbtnZoomInSimulacionImagenes.Hint:= 'Ampliar imagen';
  lblbtnZoomOutSimulacionImagenes.Hint:= 'Reducir imagen';
  lblbtnHerramientaFotografiarSimulacionImagenes.Hint:= 'Capturar pantalla';
  lblbtnPrevisualizarReporteSimulacionImagenes.Hint:= 'Previsualizar el reporte';
  lblbtnExportarHaciaPDFSimulacionImagenes.Hint:= 'Exportar el reporte hacia el formato PDF';


  lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Hint:= 'Medir distancia entre dos puntos';


  //Hints de LabelButtons de abajo
  lblbtnGuardarComentariosSimulacionImagenes.Hint:= 'Guardar comentarios';
  lblbtnCancelarComentariosSimulacionImagenes.Hint:= 'Cancelar comentarios';

  //En dependencia de si hay algo en el Memo de comentarios
  if (   (MemoComentariosSimulacionImagenes.Text <> '') and (Trim(MemoComentariosSimulacionImagenes.Text) <> EmptyStr)   )
    then
      begin
        lblbtnModificarComentariosSimulacionImagenes.Hint:= 'Modificar comentarios';
      end
        else
          begin
            lblbtnModificarComentariosSimulacionImagenes.Hint:= 'Agregar comentarios';
          end;



  //**************************************************************
  //*** Caption de componentes Modulo de Simulacion (imagenes) ***
  //**************************************************************

  
  //CollapsePanels
  CollapsePanelEdicionSimulacionImagenes.HeaderCaption:= '  Edici�n';
  CollapsePanelVerSimulacionImagenes.HeaderCaption:= 'Ver          ';
  CollapsePanelObservacionMuestraSimulacionImagenes.HeaderCaption:= 'Observaci�n de la muestra               ';

  //CollapsePanel central
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
      end
        else
          begin
            CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (Ninguna cargada)';
          end;
  



  //GroupBoxs
  GroupBoxOpcionesDeAjusteSimulacionImagenes.Caption:= ' Opciones de ajuste ';
  GroupBoxEscalaDeLaImagenSimulacionImagenes.Caption:= ' Escala de la imagen ';
  GroupBoxPropiedadesSimulacionImagenes.Caption:= ' Propiedades ';
  GroupBoxPaneoImagenSimulacionImagenes.Caption:= ' Paneo de la imagen ';
  GroupBoxPosicionImagenSimulacionImagenes.Caption:= ' Posici�n ';
  GroupBoxMedicionesSimulacionImagenes.Caption:= ' Mediciones ';
  GroupBoxComentariosSimulacionImagenes.Caption:= ' Comentarios ';
  GroupBoxAumentoSimulacionImagenes.Caption:= ' Aumento ';

  
  //CheckBoxs derecha
  chkFitSimulacionImagenes.Caption:= 'Ajustar imagen a la ventana';
  chkFitOnlyBigSimulacionImagenes.Caption:= 'Ajustar solo im�genes mayores que la ventana';
  chkCenterSimulacionImagenes.Caption:= 'Centrar imagen en la ventana';
  chkBorderSimulacionImagenes.Caption:= 'Mostrar bordes';
  chkLabelSimulacionImagenes.Caption:= 'Mostrar etiqueta de informaci�n';
  chkDragSimulacionImagenes.Caption:= 'Habilitar arrastre de la imagen';
  chkKeepPosSimulacionImagenes.Caption:= 'Mantener posici�n de la imagen durante el escalado';
  //chkResampleSimulacionImagenes.Caption:= 'Volver a muestrear durante el escalado';  //Quitado

  //CheckBoxs izquierda
  chkNegativoSimulacionImagenes.Caption:= 'Negativo';
  chkAumentosSimulacionImagenes.Caption:= 'Aumentos';
  chkMedicionesSimulacionImagenes.Caption:= 'Mediciones';
  chkMirillaSimulacionImagenes.Caption:= 'Visor';

  //Checkbox abajo
  chkRedondearMediciones.Caption:= 'Redondear las cifras';

  
  //LabelButtons de la izquierda
  lblbtnLimpiarSimulacionImagenes.Caption:= 'Limpiar';
  lblbtnBorrarArchivoSIMSimulacionImagenes.Caption:= 'Borrar archivo SIM';

  //LabelButtons de abajo
  lblbtnGuardarComentariosSimulacionImagenes.Caption:= 'Guardar';
  lblbtnCancelarComentariosSimulacionImagenes.Caption:= 'Cancelar';

  //Labels de la derecha
  lblEscalaSimulacionImagenes.Caption:= 'Escala:';
  //lblResampleDelaySimulacionImagenes.Caption:= 'Demora (ms):';  //Quitado
  lblBrilloSimulacionImagenes.Caption:= 'Brillo:';
  lblContrasteSimulacionImagenes.Caption:= 'Contraste:';

  //Ajusto el left de los label del brillo y contraste
  lblBrilloSimulacionImagenes.Left:= 30;
  lblContrasteSimulacionImagenes.Left:= 7;


  //RadioButtons
  rbtnColorRealSimulacionImagenes.Caption:= 'Color real';
  rbtnTonosGrisesSimulacionImagenes.Caption:= 'Tonos Grises';

    


  //*** Caption de componentes Modulo de Simulacion (imagenes) ***

  //CollapsePanels
  CollapsePanelEdicionSimulacionImagenes.HeaderCaption:= '  Edici�n';
  CollapsePanelVerSimulacionImagenes.HeaderCaption:= 'Ver          ';
  CollapsePanelObservacionMuestraSimulacionImagenes.HeaderCaption:= 'Observaci�n de la muestra               ';
  CollapsePanelBibliotecaInternaSimulacionImagenes.HeaderCaption:= '   Biblioteca Interna';

  //CollapsePanel central
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
      end
        else
          begin
            CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (Ninguna cargada)';
          end;
  




  //CheckBoxs izquierda
  chkNegativoSimulacionImagenes.Caption:= 'Negativo';
  chkAumentosSimulacionImagenes.Caption:= 'Aumentos';
  chkMedicionesSimulacionImagenes.Caption:= 'Mediciones';
  chkMirillaSimulacionImagenes.Caption:= 'Visor';


  
  //Labels de la derecha
  lblEscalaSimulacionImagenes.Caption:= 'Escala:';
  //lblResampleDelaySimulacionImagenes.Caption:= 'Demora (ms):';  //Quitado
  lblBrilloSimulacionImagenes.Caption:= 'Brillo:';
  lblContrasteSimulacionImagenes.Caption:= 'Contraste:';

  //Ajusto el left de los label del brillo y contraste
  lblBrilloSimulacionImagenes.Left:= 30;
  lblContrasteSimulacionImagenes.Left:= 7;

  //Labels de abajo
  lblEtiquetaEjeXImagenSimulacionImagenes.Caption:= 'Eje X:';
  lblEtiquetaEjeYImagenSimulacionImagenes.Caption:= 'Eje Y:';
  lblDistancia3SimulacionImagenes.Caption:= '3 Etapas: ';
  lblDistancia2SimulacionImagenes.Caption:= '2 Etapas: ';
  lblDistancia1SimulacionImagenes.Caption:= '1 Etapa: ';
  lblAumentoOpticoSimulacionImagenes.Caption:= '�ptico:';
  lblAumentoDigitalSimulacionImagenes.Caption:= 'Digital:';
  lblAumentoFinalSimulacionImagenes.Caption:= 'Final:';


  //RadioButtons
  rbtnColorRealSimulacionImagenes.Caption:= 'Color real';
  rbtnTonosGrisesSimulacionImagenes.Caption:= 'Tonos Grises';

  //Le especifico el idioma espa�ol para los dialogs
  MsgOptions.DefLang:= ltSpanish;  


  //*** Parte final de Administracion de Idioma de la aplicaci�n ***


  //Actualizo la variable indicadora de idioma imperante
  IdiomaImperante:= 'Espannol';

  //Actualizo la informacion del Label de la imagen central
  UpdateImageLabelSimulacionImagenes;

  //Guardo el idioma imperante en el fichero de idioma
  FicheroIdioma.SetIdiomaImperante('Espannol');

  //Guardo el nuevo idioma en el fichero
  FicheroIdioma.Salvar(ExtractFilePath(Application.ExeName) + 'Languaje\lang.txt');

  //Verifico el caption del LabelButton de comentarios
  ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

  //Valido los aumentos
  ValidarAumentosSimulacionImagenes;
end;



procedure TfrmPrincipal.SetIdiomaIngles;
begin
  //Modifico el Menu Principal
  SubMenuEspannol.Checked:= False;
  SubMenuEnglish.Checked:= True;

  SubMenuEspannol.Default:= False;
  SubMenuEnglish.Default:= True;


  
  //*********************************************************
  //*** Hints de los componentes del modulo de simulacion ***
  //*********************************************************


  
  //Hints de SpeedButton de arriba
  SpeedButtonCargarArchivoSimulacionImagenes.Hint:= 'Open file';
  SpeedButtonSalvarArchivoSimulacionImagenes.Hint:= 'Save';
  SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Hint:= 'Add to Internal Library';
  SpeedButtonLimpiarSimulacionImagenes.Hint:= 'Clean the image';
  SpeedButtonImprimirSimulacionImagenes.Hint:= 'Print Image';
  SpeedButtonTemasDeAyudaSimulacionImagenes.Hint:= 'Help Topics';
  SpeedButtonAcercaDeSimOpticSimulacionImagenes.Hint:= 'About SimOptic 2008';


  //Hints de Edits
  edtFiltroBibliotecaInternaSimulacionImagenes.Hint:= 'Filter by name';


  //LabelButtons de la izquierda
  


  lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Hint:= 'Measurements between two points';
  lblbtnZoomInSimulacionImagenes.Hint:= 'Zoom In';
  lblbtnZoomOutSimulacionImagenes.Hint:= 'Zoom Out';
  lblbtnHerramientaFotografiarSimulacionImagenes.Hint:= 'Capture image';
  lblbtnPrevisualizarReporteSimulacionImagenes.Hint:= 'Preview the report';
  lblbtnExportarHaciaPDFSimulacionImagenes.Hint:= 'Export the report to PDF format';
  lblbtnLimpiarSimulacionImagenes.Hint:= 'Clean image';
  lblbtnBorrarArchivoSIMSimulacionImagenes.Hint:= 'Delete SIM file from Internal Library';

  //Hints de LabelButtons de abajo
  lblbtnGuardarComentariosSimulacionImagenes.Hint:= 'Save commentaries';
  lblbtnCancelarComentariosSimulacionImagenes.Hint:= 'Cancel commentaries';

  //En dependencia de si hay algo en el Memo de comentarios
  if (   (MemoComentariosSimulacionImagenes.Text <> '') and (MemoComentariosSimulacionImagenes.Text <> ' ')   )
    then
      begin
        lblbtnModificarComentariosSimulacionImagenes.Hint:= 'Update commentaries';
      end
        else
          begin
            lblbtnModificarComentariosSimulacionImagenes.Hint:= 'Add commentaries';
          end;

          


  //*** Cambio los caption de todo el sistema, hacia el idioma ingl�s ***

  //* Caption del Menu Principal (ingl�s)
  MenuArchivo.Caption:= ' File   ';
  MenuVer.Caption:= ' View   ';
  MenuEdicion.Caption:= ' Edit   ';
  MenuHerramientas.Caption:= ' Tools   ';
  MenuAyuda.Caption:= ' Help  ';

  //SubMenus del Menu Archivo
  SubMenuAbrir.Caption:= 'Open';
  SubMenuGuardar.Caption:= 'Save';
  SubMenuGuardarComo.Caption:= 'Save as...';
  SubMenuAgregarABiblioteca.Caption:= 'Add to Library';
  SubMenuLimpiar.Caption:= 'Clean';
  SubMenuImprimir.Caption:= 'Print';
  SubMenuSalir.Caption:= 'Exit';

  //SubMenus del Menu Edici�n
  SubMenuEdicionCalcularDistancia.Caption:= 'Distance Measure';
  SubMenuEdicionCapturaDeImagen.Caption:= 'Image Capture';
  SubMenuEdicionAmpliarImagen.Caption:= 'Zoom In';
  SubMenuEdicionAchicarImagen.Caption:= 'Zoom Out';
  SubMenuEdicionPrevisualizarReporte.Caption:= 'Preview Report';
  SubMenuEdicionExportarHaciaPDF.Caption:= 'Export to PDF';
  SubMenuEdicionBorrarArchivoSIM.Caption:= 'Delete SIM file';

  //SubMenus del Menu Ver
  SubMenuVerColorReal.Caption:= 'Real Color';
  SubMenuVerTonosGrises.Caption:= 'Gray Scale';
  SubMenuVerNegativo.Caption:= 'Negative';
  SubMenuVerAumentos.Caption:= 'Zooms';
  SubMenuVerMediciones.Caption:= 'Measurements';
  SubMenuVerVisor.Caption:= 'Visor';

  //SubMenus del Menu Herramientas
  SubMenuConfiguracionIdioma.Caption:= 'Languaje Configuration';

  SubMenuConfigurarVisor.Caption:= 'Visor Configuration';

  SubMenuConfigurarAlineacionVerticalVisor.Caption:= 'Vertical Alignment';
  SubMenuAlineacionVerticalVisorArriba.Caption:= 'Up';
  SubMenuAlineacionVerticalVisorCentro.Caption:= 'Center';
  SubMenuAlineacionVerticalVisorAbajo.Caption:= 'Down';
  
  SubMenuConfigurarAlineacionHorizontalVisor.Caption:= 'Horizontal Alignment';
  SubMenuAlineacionHorizontalVisorIzquierda.Caption:= 'Left';
  SubMenuAlineacionHorizontalVisorCentro.Caption:= 'Center';
  SubMenuAlineacionHorizontalVisorDerecha.Caption:= 'Right';

  SubMenuConfigurarTipoVisor.Caption:= 'Kind';
  SubMenuVisorTipoSimple.Caption:= 'Simple';
  SubMenuVisorTipoComplejo.Caption:= 'Complex';

  SubMenuConfigurarColorVisor.Caption:= 'Color';
  SubMenuVisorColorAutomatico.Caption:= 'Automatic Selection';
  SubMenuVisorColorPersonalizado.Caption:= 'Personalized';


  SubMenuConfigurarEtiqueta.Caption:= 'Info Label Configuration';

  SubMenuConfigurarColorEtiqueta.Caption:= 'Color';
  SubMenuColorEtiquetaEstandard.Caption:= 'Standard';
  SubMenuColorEtiquetaPersonalizado.Caption:= 'Personalized';



  //SubMenus del Menu Ayuda
  SubMenuBlogDelSistema.Caption:= 'Official SimOptic 2008 Blog';
  SubMenuTemasDeAyuda.Caption:= 'SimOptic 2008 Help';
  SubMenuRegistro.Caption:= 'Register';
  SubMenuAcercaDeSimOptic.Caption:= 'About SimOptic 2008';



  //*** Caption de componentes Modulo de Simulacion (imagenes) ***

  //CollapsePanels
  CollapsePanelEdicionSimulacionImagenes.HeaderCaption:= '  Edition';
  CollapsePanelVerSimulacionImagenes.HeaderCaption:= 'View         ';
  CollapsePanelObservacionMuestraSimulacionImagenes.HeaderCaption:= 'Sample observation                      ';
  CollapsePanelBibliotecaInternaSimulacionImagenes.HeaderCaption:= ' Internal Library';
                                                                     
  //CollapsePanel central
  //CollapsePanel central
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
      end
        else
          begin
            CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (No one loaded)';
          end;


  //GroupBoxs
  GroupBoxOpcionesDeAjusteSimulacionImagenes.Caption:= ' Adjustments options ';
  GroupBoxEscalaDeLaImagenSimulacionImagenes.Caption:= ' Image scaling ';
  GroupBoxPropiedadesSimulacionImagenes.Caption:= ' Properties ';
  GroupBoxPaneoImagenSimulacionImagenes.Caption:= ' Image panning ';
  GroupBoxPosicionImagenSimulacionImagenes.Caption:= ' Position ';
  GroupBoxMedicionesSimulacionImagenes.Caption:= ' Measurements ';
  GroupBoxComentariosSimulacionImagenes.Caption:= ' Commentaries ';
  GroupBoxAumentoSimulacionImagenes.Caption:= ' Zoom ';

  //CheckBoxs derecha
  chkFitSimulacionImagenes.Caption:= 'Fit image to window';
  chkFitOnlyBigSimulacionImagenes.Caption:= 'Fit only images larger than window';
  chkCenterSimulacionImagenes.Caption:= 'Center image in window';
  chkBorderSimulacionImagenes.Caption:= 'Show border';
  chkLabelSimulacionImagenes.Caption:= 'Show info label';
  chkDragSimulacionImagenes.Caption:= 'Enable image dragging';
  chkKeepPosSimulacionImagenes.Caption:= 'Keep image position during scaling';
  //chkResampleSimulacionImagenes.Caption:= 'Resample on scaling';  //Quitado

  //CheckBoxs izquierda
  chkNegativoSimulacionImagenes.Caption:= 'Negative';
  chkAumentosSimulacionImagenes.Caption:= 'Zooms';
  chkMedicionesSimulacionImagenes.Caption:= 'Measurements';
  chkMirillaSimulacionImagenes.Caption:= 'Visor';

  //Checkbox abajo
  chkRedondearMediciones.Caption:= 'Round the digits';  


  //LabelButtons de la izquierda
  lblbtnLimpiarSimulacionImagenes.Caption:= 'Clean';
  lblbtnBorrarArchivoSIMSimulacionImagenes.Caption:= 'Delete SIM file';

  //LabelButtons de abajo
  lblbtnGuardarComentariosSimulacionImagenes.Caption:= 'Save';
  lblbtnCancelarComentariosSimulacionImagenes.Caption:= 'Cancel';
  
  //Labels de la derecha
  lblEscalaSimulacionImagenes.Caption:= 'Scale:';
  //lblResampleDelaySimulacionImagenes.Caption:= 'Delay (ms):';  //Quitado
  lblBrilloSimulacionImagenes.Caption:= 'Brightness:';
  lblContrasteSimulacionImagenes.Caption:= 'Contrast:';

  //Ajusto el left de los label del brillo y contraste
  lblBrilloSimulacionImagenes.Left:= 3;
  lblContrasteSimulacionImagenes.Left:= 13;
  
  //Labels de abajo
  lblEtiquetaEjeXImagenSimulacionImagenes.Caption:= 'Axis X:';
  lblEtiquetaEjeYImagenSimulacionImagenes.Caption:= 'Axis Y:';
  lblDistancia3SimulacionImagenes.Caption:= '3 Steps: ';
  lblDistancia2SimulacionImagenes.Caption:= '2 Steps: ';
  lblDistancia1SimulacionImagenes.Caption:= '1 Step: ';
  lblAumentoOpticoSimulacionImagenes.Caption:= 'Optic:';
  lblAumentoDigitalSimulacionImagenes.Caption:= 'Digital:';
  lblAumentoFinalSimulacionImagenes.Caption:= 'Result:';
  

  //RadioButtons
  rbtnColorRealSimulacionImagenes.Caption:= 'Real color';
  rbtnTonosGrisesSimulacionImagenes.Caption:= 'Gray Scale';

  //Le especifico el idioma espa�ol para los dialogs
  MsgOptions.DefLang:= ltEnglish;

    

  //Actualizo la variable indicadora de idioma imperante
  IdiomaImperante:= 'Ingles';

  //Actualizo la informacion del Label de la imagen central
  UpdateImageLabelSimulacionImagenes;  

  //Guardo el idioma imperante en el fichero de idioma
  FicheroIdioma.SetIdiomaImperante('Ingles');

  //Guardo el nuevo idioma en el fichero
  FicheroIdioma.Salvar(ExtractFilePath(Application.ExeName) + 'Languaje\lang.txt');

  //Verifico el caption del LabelButton de comentarios
  ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

  //Valido los aumentos
  ValidarAumentosSimulacionImagenes;  
end;



procedure TfrmPrincipal.SpeedButtonTemasDeAyudaSimulacionImagenesClick(Sender: TObject);
begin
  //Aqu� hago una llamada a la ayuda previamente echa.
  //Application.HelpContext(1);
  
  //En dependencia del idioma imperante, muestro la ayuda correspondiente
  if (IdiomaImperante = 'Espannol')
    then
      begin
        //Cierro la ayuda en Ingl�s si est� abierta �?

        
        //Ejecuto la ayuda en Espa�ol
        ShellExecute(Handle, 'open', Pchar(ExtractFilePath(Application.ExeName) + 'HelpFiles\SimOptic_2008_es.chm' ), nil,nil, SW_SHOWNORMAL);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  //Cierro la ayuda en Espa�ol si est� abierta �?


                  //Ejecuto la ayuda en Ingl�s
                  ShellExecute(Handle, 'open', Pchar(ExtractFilePath(Application.ExeName) + 'HelpFiles\SimOptic_2008_en.chm' ), nil,nil, SW_SHOWNORMAL);
                end;
          end;
end;



procedure TfrmPrincipal.lblbtnLimpiarSimulacionImagenesClick(Sender: TObject);
var
  i: Integer;
begin
  //Limpio el TImage de Simulacion
  //ATImageBoxSimulacionImagenes.Image.Picture:= Nil;
  //ATImageBoxSimulacionImagenes.Image.Refresh;
  //ATImageBoxSimulacionImagenes.Cursor:= crDefault;

  ATImageBoxSimulacionImagenes.Image.Picture.LoadFromFile('');
  ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.LoadFromFile('');
  ATImageBoxTemporalSimulacionImagenes.Image.Picture.LoadFromFile('');

  //Anulo los datos del archivo abierto (variables globales)
  ArchivoEnteroAbiertoSimulacionImagenes:= '';
  CaminoDelArchivoAbiertoSimulacionImagenes:= '';

  NombreEnteroDelArchivoAbiertoSimulacionImagenes:= '';
  NombreDelArchivoAbiertoSimulacionImagenes:= '';
  NombreUtilDelArchivoAbiertoSimulacionImagenes:= '';

  ExtensionDelArchivoAbiertoSimulacionImagenes:= '';


  
  //Incremento el position un valor para que se pueda borrar �? (pincha bien asi)
  TrackBarSimulacionImagenes.Position:= TrackBarSimulacionImagenes.Position + 1;
  
  ATImageBoxSimulacionImagenes.OnOptionsChange := FormResize;

  if (ColorEstandardEtiquetaSimulacionImagenes = True)
    then
      begin
        ATImageBoxSimulacionImagenes.ImageLabel.Font.Color := clBlue;
      end;

  FUpdatingSelfOptionsSimulacionImagenes := False;
  UpdateImageOptionsSimulacionImagenes;
  UpdateImageLabelSimulacionImagenes;

  //limpio el dsZoomNavigator de Simulacion de Imagenes
  dsZoomNavigatorSimulacionImagenes.ScrollBox := Nil;
  dsZoomNavigatorSimulacionImagenes.Control := Nil;
  dsZoomNavigatorSimulacionImagenes.OnDrawPage := Nil;
  dsZoomNavigatorSimulacionImagenes.Width := 180;

  //Refresco el ZoomNavigator de Simulacion de Imagenes
  ActualizarDSZoomNavigatorSimulacionImagenes;

  //Le cambio el Headercaption al CollapsePanel central de Simulacion de Imagenes
  if (IdiomaImperante = 'Espannol')
    then
      begin
        CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (Ninguna cargada)';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (No one loaded)';
                end;
          end;


  TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= False;

  //Deshabilito los componentes del modulo de simulacion
  DeshabilitarComponentesSimulacionImagenes;

    //Refresco el dsZoomNavigator
  dsZoomNavigatorSimulacionImagenes.Repaint;

  //Borro el ImageLabel del ATImageBox de Simulacion de Imagenes
  BorrarImageLabelSimulacionImagenes;

  //Coloreo adecuadamente la mirilla, en dependencia de la modalidad seleccionada
  if (ColorAutomatizadoVisorSimulacionImagenes = True)
    then
      begin
        //Coloreo adecuadamente la mirilla
        ColorearMirillaSimulacionImagenes(clLime);
      end
        else
          begin
            //Coloreo la mirilla a patir del color ya seleccionado
            ColorearMirillaSimulacionImagenes(ColorPersonalizadoVisorSimulacionImagenes);
          end;

  //Recorro desde el primero hasta el �ltimo archivo del FileListBox, por si hay alguno selecionado
  for i:= 0 to FileListBoxSimulacionImagenes.Count - 1 do
    begin
      //Compruebo si est� seleccionado
      if (FileListBoxSimulacionImagenes.Selected[i] = True)
        then
          begin //Est� seleccionado
            //Desmarco la que estaba seleccionada
            FileListBoxSimulacionImagenes.Selected[i]:= False;

            //Actualizo el FileListBox
            //FileListBoxSimulacionImagenes.Update;
          end;  //Fin de est� seleccionado
    end; //Fin de recorrido general

  //Limpio el memo de comentarios
  MemoComentariosSimulacionImagenes.Text:= '';

  //Refresco el memo de comentarios
  MemoComentariosSimulacionImagenes.Refresh;

  //Verifico el caption del LabelButton de comentarios
  ValidarCaptionLabelButtonsComentariosSimulacionImagenes;
  
  //Verifico el Enable del LabelButton de comentarios
  ValidarEnableLabelButtonsComentariosSimulacionImagenes;

  //Cancelo el calculo de distancia entre puntos
  Calculando:= False;
end;



procedure TfrmPrincipal.AddToClipClick(Sender: TObject);
begin   //Hay que mejorar esto
  IF Clipboard.HasFormat(CF_BITMAP) then
  begin
     with ATImageBoxSimulacionImagenes.Image.Picture.Bitmap do
       //Cargo la imagen desde ClipBoard
       LoadFromClipboardFormat(CF_BITMAP, ClipBoard.GetAsHandle(CF_BITMAP),0);

       //Habilito los componentes
       HabilitarComponentesSimulacionImagenes;
       
       //Le cambio el cursor al TImage
       ATImageBoxSimulacionImagenes.Cursor:= crHandPoint;

       //Refresco el ZoomNavigator de Simulacion de Imagenes
       dsZoomNavigatorSimulacionImagenes.Refresh;
       dsZoomNavigatorSimulacionImagenes.Repaint;
   end
     else
       ShowMessage('No hay un Bitmap en el Portapapeles');
end;



procedure TfrmPrincipal.UpdateImageOptionsSimulacionImagenes;
const
  Borders: array[Boolean] of TBorderStyle = (bsNone, bsSingle);
begin
  if not FUpdatingSelfOptionsSimulacionImagenes then
  begin
    ATImageBoxSimulacionImagenes.ImageFitToWindow:= chkFitSimulacionImagenes.Checked;
    ATImageBoxSimulacionImagenes.ImageFitOnlyBig:= chkFitOnlyBigSimulacionImagenes.Checked;
    ATImageBoxSimulacionImagenes.ImageCenter:= chkCenterSimulacionImagenes.Checked;
    //ATImageBoxSimulacionImagenes.Image.Resample:= chkResampleSimulacionImagenes.Checked; //Quit� este checkbox
    ATImageBoxSimulacionImagenes.Image.Resample:= True;

    //Quit� este Edit, m�s 
    //ATImageBoxSimulacionImagenes.Image.ResampleDelay:= StrToIntDef(edtResampleDelaySimulacionImagenes.Text, ATImageBoxSimulacionImagenes.Image.ResampleDelay);
    ATImageBoxSimulacionImagenes.Image.ResampleDelay:= 300;

    if (chkBorderSimulacionImagenes.Checked)
      then
        begin
          ATImageBoxSimulacionImagenes.BorderStyle:= bsSingle;
        end
          else
            begin
              ATImageBoxSimulacionImagenes.BorderStyle:= bsNone;
            end;
     
    //ATImageBoxSimulacionImagenes.BorderStyle:= Borders[chkBorder.Checked];
    ATImageBoxSimulacionImagenes.ImageLabel.Visible:= chkLabelSimulacionImagenes.Checked;
    ATImageBoxSimulacionImagenes.ImageDrag:= chkDragSimulacionImagenes.Checked;
    ATImageBoxSimulacionImagenes.ImageKeepPosition:= chkKeepPosSimulacionImagenes.Checked;
  end;
end;



procedure TfrmPrincipal.UpdateImageScaleOptionsSimulacionImagenes;
begin
  if not FUpdatingSelfOptionsSimulacionImagenes then
  begin
    ATImageBoxSimulacionImagenes.ImageScale := TrackBarSimulacionImagenes.Position;

    //Agencio la habilitacion de los botones de Zoom (limite)
    if (TrackBarSimulacionImagenes.Position = 500)
      then
        begin
          //Deshabilito el LabelButton de ZoomIn (llego al tope)
          lblbtnZoomInSimulacionImagenes.Enabled:= False;

          //Cargo el bmp para el LabelButon de ZoomIn (deshabilitado)
          lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Gris.bmp');

          //Habilito el LabelButton de ZoomOut
          lblbtnZoomOutSimulacionImagenes.Enabled:= True;

          //Cargo el bmp para el LabelButon de ZoomOut (habilitado)
          lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

          //Refrescamos los LabelButon para que se muestren los cambios
          lblbtnZoomInSimulacionImagenes.Refresh;
          lblbtnZoomOutSimulacionImagenes.Refresh;
        end;

    //Agencio la habilitacion de los botones de Zoom (minimo)
    if (TrackBarSimulacionImagenes.Position = 1)
      then
        begin
          //Deshabilito el LabelButton de ZoomOut (llego al minimo)
          lblbtnZoomOutSimulacionImagenes.Enabled:= False;

          //Cargo el bmp para el LabelButon de ZoomOut (deshabilitado)
          lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Gris.bmp');

          //Habilito el LabelButton de ZoomIn
          lblbtnZoomInSimulacionImagenes.Enabled:= True;

          //Cargo el bmp para el LabelButon de ZoomIn (habilitado)
          lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');

          //Refrescamos los LabelButon para que se muestren los cambios
          lblbtnZoomInSimulacionImagenes.Refresh;
          lblbtnZoomOutSimulacionImagenes.Refresh;
        end;
        
    //Agencio la habilitacion de los botones de Zoom (zona intermedia)
    if (   (TrackBarSimulacionImagenes.Position > 1) and (TrackBarSimulacionImagenes.Position < 500)   )
      then
        begin
          //Verifico si estaba deshabilitado el boton de ZoomOut
          if (lblbtnZoomOutSimulacionImagenes.Enabled = False)
            then
              begin
                //Habilito el LabelButton de ZoomOut
                lblbtnZoomOutSimulacionImagenes.Enabled:= True;

                //Cargo el bmp para el LabelButon de ZoomOut (habilitado)
                lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

                //Refrescamos el LabelButon para que se muestren los cambios
                lblbtnZoomOutSimulacionImagenes.Refresh;
              end;

          //Verifico si estaba deshabilitado el boton de ZoomIn
          if (lblbtnZoomInSimulacionImagenes.Enabled = False)
            then
              begin
                //Habilito el LabelButton de ZoomIn
                lblbtnZoomInSimulacionImagenes.Enabled:= True;

                //Cargo el bmp para el LabelButon de ZoomIn (habilitado)
                lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');

                //Refrescamos el LabelButon para que se muestren los cambios
                lblbtnZoomInSimulacionImagenes.Refresh;
              end;
              

        end;
  end;
end;



procedure TfrmPrincipal.UpdateSelfOptionsSimulacionImagenes;
begin
  FUpdatingSelfOptionsSimulacionImagenes := True;

  chkFitSimulacionImagenes.Checked := ATImageBoxSimulacionImagenes.ImageFitToWindow;
  UpdateSelfScaleOptionsSimulacionImagenes;

  FUpdatingSelfOptionsSimulacionImagenes := False;
end;



procedure TfrmPrincipal.UpdateSelfScaleOptionsSimulacionImagenes;
begin
  FUpdatingSelfOptionsSimulacionImagenes := True;

  TrackBarSimulacionImagenes.Position := ATImageBoxSimulacionImagenes.ImageScale;
  LabelScaleSimulacionImagenes.Caption := Format('%d%%', [ATImageBoxSimulacionImagenes.ImageScale]);
  UpdateImageLabelSimulacionImagenes;

  FUpdatingSelfOptionsSimulacionImagenes := False;
end;



procedure TfrmPrincipal.UpdateImageLabelSimulacionImagenes;
begin
  //Verifico el idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        with ATImageBoxSimulacionImagenes do
          ImageLabel.Caption := Format(
            'Tama�o original: %d x %d'#13'Escala actual: %d%%',
            [ImageWidth, ImageHeight, ImageScale]);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  with ATImageBoxSimulacionImagenes do
                    ImageLabel.Caption := Format(
                      'Original size: %d x %d'#13'Current scale: %d%%',
                      [ImageWidth, ImageHeight, ImageScale]);
                end;
          end;

  //Verifico el modo de coloracion de la etiqueta
  if (ColorEstandardEtiquetaSimulacionImagenes = True)
    then
      begin
        ATImageBoxSimulacionImagenes.ImageLabel.Font.Color:= clBlue;
      end;
end;



procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
//**** Plantilla para determinar Modulo y Seccion en activo ****
{
  if (PageControlTodo.ActivePageIndex = 0) //Modulo de Simulacion
    then
      begin

      end
        else
          begin
            if (PageControlTodo.ActivePageIndex = 1) //Modulo de Entrenamiento
             then
               begin
                 if (PageControlEntrenamiento.ActivePageIndex = 0) //Seccion de Microscopio Optico
                   then
                     begin

                     end
                       else
                         begin
                           if (PageControlEntrenamiento.ActivePageIndex = 1) //Seccion de Casos Tipicos
                             then
                               begin

                               end;
                         end;
               end;
          end;
}


  UpdateSelfScaleOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.BorrarImageLabelSimulacionImagenes;
begin
  if (IdiomaImperante = 'Espannol')
    then
      begin
        with ATImageBoxSimulacionImagenes do
          ImageLabel.Caption := Format('Tama�o original: %d x %d'#13'Escala actual: %d%%', [0, 0, ImageScale]);
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  with ATImageBoxSimulacionImagenes do
                    ImageLabel.Caption := Format('Original size: %d x %d'#13'Current scale: %d%%', [0, 0, ImageScale]);
                end;
          end;


end;



procedure TfrmPrincipal.TrackBarSimulacionImagenesChange(Sender: TObject);
begin
  UpdateImageScaleOptionsSimulacionImagenes;
  UpdateSelfOptionsSimulacionImagenes;

  //Refresco el dsZoomNavigator
  dsZoomNavigatorSimulacionImagenes.RefreshZoomBox;

  //Valido los aumentos
  ValidarAumentosSimulacionImagenes;  
end;



procedure TfrmPrincipal.chkKeepPosSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.chkResampleSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.chkFitSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
  UpdateSelfScaleOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.chkFitOnlyBigSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
  UpdateSelfScaleOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.chkCenterSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.chkBorderSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
  UpdateSelfScaleOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.chkLabelSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.chkDragSimulacionImagenesClick(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.edtResampleDelaySimulacionImagenesChange(Sender: TObject);
begin
  UpdateImageOptionsSimulacionImagenes;
end;



procedure TfrmPrincipal.DrawPageSimulacionImagenes(Sender: TObject);
begin
  dsZoomNavigatorSimulacionImagenes.Canvas.StretchDraw(dsZoomNavigatorSimulacionImagenes.ClientRect, ATImageBoxSimulacionImagenes.Image.Picture.Graphic);

  //Pego el ImageLabel en el lugar adecuado
  ATImageBoxSimulacionImagenes.ImageLabel.Top:= 0;
  ATImageBoxSimulacionImagenes.ImageLabel.Left:= 0;

  //Redimensiono el GroupBox para que se vea bien al cargar la imagen
  GroupBoxPaneoImagenSimulacionImagenes.Height:= dsZoomNavigatorSimulacionImagenes.Height + 24;

  //Redimensiono el CollapsePanel para que se vea bien al cargar la imagen  
  CollapsePanelObservacionMuestraSimulacionImagenes.Height:= GroupBoxPaneoImagenSimulacionImagenes.Height + 338;
end;



procedure TfrmPrincipal.ActualizarDSZoomNavigatorSimulacionImagenes;
begin
  //Refresco el dsZoomNavigator
  dsZoomNavigatorSimulacionImagenes.RefreshZoomBox;
end;



function TfrmPrincipal.EstaEncimaZoomNavigatorSimulacionImagenes: Boolean;
var
  AltoDelMenuPrincipal: Integer;
  BordePerdido: Integer;

begin
  //Le doy valores a las diferentes variables
  BordePerdido:= 20;
  AltoDelMenuPrincipal:= 20;
  
  //Determino si el puntero esta encima del ZoomNavigator de Simulacion de Imagenes
//  if (   (HallarColumnaPosicionX > 730) and (HallarFilaPosicionY > 532)   )
  if (   (HallarColumnaPosicionX > 730) and (HallarFilaPosicionY > frmPrincipal.Top + AltoDelMenuPrincipal + PanelDerechoSimulacionImagenes.Top + CollapsePanelObservacionMuestraSimulacionImagenes.Top + GroupBoxPaneoImagenSimulacionImagenes.Top + dsZoomNavigatorSimulacionImagenes.Top + BordePerdido)   )
    then
      begin
        Result:= True;
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TfrmPrincipal.ScrollBoxScrollSimulacionImagenes(Sender: TObject);
Label Salida;
begin
  dsZoomNavigatorSimulacionImagenes.RefreshZoomBox;
end;



procedure TfrmPrincipal.TimerRefrescarZoomNavigatorSimulacionImagenesTimer(
  Sender: TObject);
begin
  //Refresco el dsZoomNavigator
  ActualizarDSZoomNavigatorSimulacionImagenes;
end;



procedure TfrmPrincipal.dsZoomNavigatorSimulacionImagenesDrawPage(
  Sender: TObject);
begin
  //Desconecto el Timer para que no siga refrescando el ZoomNavigator
  TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= False;
end;



procedure TfrmPrincipal.ApplicationEventsSimulacionImagenesIdle(Sender: TObject; var Done: Boolean);
var
  Incremento: Real;
  Label Salida;
begin
  //Cambio el estado del LabelSpeedButton
  if (Calculando = True)
    then
      begin
        //Presiono el LabelButton de medir distancia entre puntos
        lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Down:= True;

        //Marco la opcion de medir distancia en Menu principal
        SubMenuEdicionCalcularDistancia.Checked:= True;
      end
        else
          begin
            //Levanto el LabelButton de medir distancia entre puntos
            lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Down:= False;

            //Desmarco la opcion de medir distancia en Menu principal
            SubMenuEdicionCalcularDistancia.Checked:= False;
          end;


          
  //Verifico si el usuario esta trabajando encima del ZoomNavigator del Modulo de Simulacion de Imagenes
  if (EstaEncimaZoomNavigatorSimulacionImagenes = True)
    then
      begin
        //Desconecto el Timer para que no siga refrescando el ZoomNavigator
        TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= False;

        //Pego el ImageLabel en el lugar adecuado
        ATImageBoxSimulacionImagenes.ImageLabel.Top:= 0;
        ATImageBoxSimulacionImagenes.ImageLabel.Left:= 0;
      end
        else
          begin
            //Conecto el Timer para que siga refrescando el ZoomNavigator
            TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= True;
          end;


  //Verifico primero si existe alguna imagen
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '') //Existe la imagen (fue abierta)
    then
      begin
        //Verifico ahora si el usuario esta trabajando encima de la imagen central del Modulo de Simulacion
        if (EstaEncimaImagenCentral = True) 
          then
            begin  //Esta dentro de la imagen central
              if (IdiomaImperante = 'Espannol')
                then
                  begin
                    //Vario la informacion de los Label
                    //lblEjeXImagenSimulacionImagenes.Caption:= 'Dentro';

                    //Vario la informacion de los Label
                    //lblEjeYImagenSimulacionImagenes.Caption:= 'Dentro';

                    //Vario la informacion de los Label
                    //lblEjeXImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.HorzScrollBar.Position);

                    //Vario la informacion de los Label
                    //lblEjeYImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.VertScrollBar.Position);

                    //lblEjeXImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.ImageMousePosX);
                    //lblEjeYImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.ImageMousePosY);

                    lblEjeXImagenSimulacionImagenes.Caption:= FloatToStr(   SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosX) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)   );
                    lblEjeYImagenSimulacionImagenes.Caption:= FloatToStr(   SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosY) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)   );
                  end
                    else
                      begin
                        if (IdiomaImperante = 'Ingles')
                          then
                            begin
                              //Vario la informacion de los Label
                              //lblEjeXImagenSimulacionImagenes.Caption:= 'Inside';

                              //Vario la informacion de los Label
                              //lblEjeYImagenSimulacionImagenes.Caption:= 'Inside';
                              //lblEjeXImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.ImageMousePosX);
                              //lblEjeYImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.ImageMousePosY);

                              lblEjeXImagenSimulacionImagenes.Caption:= FloatToStr(   SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosX) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)   );
                              lblEjeYImagenSimulacionImagenes.Caption:= FloatToStr(   SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosY) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)   );
                            end;
                      end;

            end
              else
                begin //Esta fuera de la imagen central
                  if (IdiomaImperante = 'Espannol')
                    then
                      begin

                        //Vario la informacion de los Label y lo corro 4 pixels a la izquierda
                        lblEjeXImagenSimulacionImagenes.Caption:= 'Fuera';
                        lblEjeXImagenSimulacionImagenes.Left:= 39;

                        //Vario la informacion de los Label y lo corro 4 pixels a la izquierda
                        lblEjeYImagenSimulacionImagenes.Caption:= 'Fuera';
                        lblEjeYImagenSimulacionImagenes.Left:= 39;
                      end
                        else
                          begin
                            if (IdiomaImperante = 'Ingles')
                              then
                                begin
                                  //Vario la informacion de los Label y lo muevo de regreso a la derecha (4 pixels)
                                  lblEjeXImagenSimulacionImagenes.Caption:= 'Out';
                                  lblEjeXImagenSimulacionImagenes.Left:= 43;

                                  //Vario la informacion de los Label y lo muevo de regreso a la derecha (4 pixels)
                                  lblEjeYImagenSimulacionImagenes.Caption:= 'Out';
                                  lblEjeYImagenSimulacionImagenes.Left:= 43;
                                end;
                          end;
                end;
      end
        else
          begin //No existe imagen alguna (borrado o aun no ha sido cargada)
            //En dependencia del idioma imperante
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  //Vario la informacion de los Label
                  lblEjeXImagenSimulacionImagenes.Caption:= 'No';

                  //Vario la informacion de los Label
                  lblEjeYImagenSimulacionImagenes.Caption:= 'No';
                end
                  else
                    begin
                      if (IdiomaImperante = 'Ingles')
                        then
                          begin
                            //Vario la informacion de los Label
                            lblEjeXImagenSimulacionImagenes.Caption:= 'Off';

                            //Vario la informacion de los Label
                            lblEjeYImagenSimulacionImagenes.Caption:= 'Off';
                          end;
                    end;
          end;


  //*** Calculo de distancia de mirilla ***
  //Determino la distancia de la mirilla Modulo de Simulacion
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        //En dependencia de si se debe redondear o no
        if (chkRedondearMediciones.Checked = True)
          then
            begin //Redondear las cifras
              //Sistema de calculo mas reciente
              lblDistancia3MirillaSimulacionImagenes.Caption:= CalcularDistanciaPorEtapas(Point(213, 245), Point(363, 245), True);
              lblDistancia2MirillaSimulacionImagenes.Caption:= CalcularDistanciaPorEtapas(Point(263, 245), Point(363, 245), True);
              lblDistancia1MirillaSimulacionImagenes.Caption:= CalcularDistanciaPorEtapas(Point(313, 245), Point(363, 245), True);
            end
              else
                begin //No redondear
                  //Sistema de calculo mas reciente
                  lblDistancia3MirillaSimulacionImagenes.Caption:= CalcularDistanciaPorEtapas(Point(213, 245), Point(363, 245), False);
                  lblDistancia2MirillaSimulacionImagenes.Caption:= CalcularDistanciaPorEtapas(Point(263, 245), Point(363, 245), False);
                  lblDistancia1MirillaSimulacionImagenes.Caption:= CalcularDistanciaPorEtapas(Point(313, 245), Point(363, 245), False);
                end;
      end
        else
          begin
            //En dependencia del idioma
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  //Anulo la distancia de la mirilla (nada cargado)
                  lblDistancia3MirillaSimulacionImagenes.Caption:= 'Deshabilitado';
                  lblDistancia2MirillaSimulacionImagenes.Caption:= 'Deshabilitado';
                  lblDistancia1MirillaSimulacionImagenes.Caption:= 'Deshabilitado';
                end
                  else
                    begin
                      if (IdiomaImperante = 'Ingles')
                        then
                          begin
                            //Anulo la distancia de la mirilla (nada cargado)
                            lblDistancia3MirillaSimulacionImagenes.Caption:= 'Disable';
                            lblDistancia2MirillaSimulacionImagenes.Caption:= 'Disable';
                            lblDistancia1MirillaSimulacionImagenes.Caption:= 'Disable';
                          end;
                    end;
          end;

          
          
  //Muestro el caption de la forma principal en dependencia del idioma
  if (IdiomaImperante = 'Espannol')
    then
      begin
        //Cambio el caption
        frmPrincipal.Caption:= 'SimOptic 2008 - Simulador de Microscopio �ptico';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  //Cambio el caption
                  frmPrincipal.Caption:= 'SimOptic 2008 - Optic Microscope Simulator';
                end;
          end;
end;



procedure TfrmPrincipal.lblbtnZoomInSimulacionImagenesClick(Sender: TObject);
begin
  //Hago un ZoomIn a traves del TrackBar (le incremento 20)
  if (TrackBarSimulacionImagenes.Position <= 480)
    then
      begin
        TrackBarSimulacionImagenes.Position:= TrackBarSimulacionImagenes.Position + 20;
      end;

  //Hago un ZoomIn a traves del TrackBar (al tope, lo que falta, pero sin pasarse de 500)
  if (   (TrackBarSimulacionImagenes.Position > 480) and (TrackBarSimulacionImagenes.Position < 500)   )
    then
      begin
        TrackBarSimulacionImagenes.Position:= 500;
      end;
end;



procedure TfrmPrincipal.lblbtnZoomOutSimulacionImagenesClick(Sender: TObject);
begin

  //Hago un ZoomOut a traves del TrackBar (le reduzco 20)
  if (TrackBarSimulacionImagenes.Position >= 21)
    then
      begin
        TrackBarSimulacionImagenes.Position:= TrackBarSimulacionImagenes.Position - 20;
      end;

  //Hago un ZoomIn a traves del TrackBar (al minimo, lo que falta)
  if (   (TrackBarSimulacionImagenes.Position < 21) and (TrackBarSimulacionImagenes.Position > 1)   )
    then
      begin
        TrackBarSimulacionImagenes.Position:= 1;
      end;
end;



function TfrmPrincipal.QuitaEn(Cadena, Esto: String): String;
var
  aPos: Integer;
begin
  aPos:= Pos(Esto, Cadena);
  Result:= '';
  
  while (aPos > 0) do
    begin
      Result := Result + Copy(Cadena, 1, aPos-1);
      Delete(Cadena, 1, aPos + Length(Esto)-1);
      aPos := Pos(Esto, Cadena);
    end;

  Result:= Result + Cadena;
end;



procedure TfrmPrincipal.SubMenuLimpiarClick(Sender: TObject);
begin
  //Mando a ejecutar el SpeedButton correspondiente
  if (lblbtnLimpiarSimulacionImagenes.Enabled = True)
    then
      begin //Esta habilitado
        //Mando a limpiar entonces
        lblbtnLimpiarSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.SubMenuEspannolClick(Sender: TObject);
begin
  //Pongo el idioma espa�ol
  SetIdiomaEspannol;
end;



procedure TfrmPrincipal.SubMenuEnglishClick(Sender: TObject);
begin
  //Pongo el idioma ingles
  SetIdiomaIngles;
end;



procedure TfrmPrincipal.DeterminarIdiomaDesdeFichero;
begin
  //Cargo desde el fichero de idioma el ultimo lenguaje imperante
  
end;



procedure TfrmPrincipal.TrackBarBrilloSimulacionImagenesChange(Sender: TObject);
begin

  //Mando a modificar el brillo a partir de la posicion del Trackbar (Sistema Completo)
  //ModificarBrilloSimulacionImagenes(TrackBarBrilloSimulacionImagenes.Position);

  //Mando a actualizar estado de la imagen (Brillo y Contraste con PixTwix)
  //ActualizarBrilloContraste;
  ActualizarBrilloContrasteDobleCapaSimulacionImagenes;

  //Actualizo la variable de ultimo trabajo realizado
  UltimoTrabajoSimulacionImagenes:= 'ModificarBrillo';  
end;



procedure TfrmPrincipal.ModificarBrilloSimulacionImagenes(aValue: Integer);
var i, j, value: integer;
    OrigRow, DestRow: pRGBArray;
begin
{
    // get brightness increment value
  //value := TTrackBar(Sender).Position;
  value := aValue;

  {
  if value <= 0 then ValueLbl.Caption := IntToStr(value)
  else ValueLbl.Caption := Format('+%d', [value]);
  }
{  
    // for each row of pixels
  for i := 0 to ATImageBoxSimulacionImagenes.Image.Picture.Height - 1 do
  begin
    OrigRow := ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.ScanLine[i];
    DestRow := ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.ScanLine[i];

      // for each pixel in row
    for j := 0 to ATImageBoxSimulacionImagenes.Image.Picture.Width - 1 do
    begin
        // add brightness value to pixel's RGB values
      if value > 0 then
      begin
          // RGB values must be less than 256
        DestRow[j].rgbtRed := Min(255, OrigRow[j].rgbtRed + value);
        DestRow[j].rgbtGreen := Min(255, OrigRow[j].rgbtGreen + value);
        DestRow[j].rgbtBlue := Min(255, OrigRow[j].rgbtBlue + value);
      end else begin
          // RGB values must be greater or equal than 0
        DestRow[j].rgbtRed := Max(0, OrigRow[j].rgbtRed + value);
        DestRow[j].rgbtGreen := Max(0, OrigRow[j].rgbtGreen + value);
        DestRow[j].rgbtBlue := Max(0, OrigRow[j].rgbtBlue + value);
      end;
    end;
  end;

  ATImageBoxSimulacionImagenes.Image.Repaint;
}







  // get brightness increment value
  value := aValue;

  {
  if value <= 0 then ValueLbl.Caption := IntToStr(value)
  else ValueLbl.Caption := Format('+%d', [value]);
  }
  
    // for each row of pixels
  for i := 0 to ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Height - 1 do
  begin
    OrigRow := ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap.ScanLine[i];
    DestRow := ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.ScanLine[i];

      // for each pixel in row
    for j := 0 to ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Width - 1 do
    begin
        // add brightness value to pixel's RGB values
      if value > 0 then
      begin
          // RGB values must be less than 256
        DestRow[j].rgbtRed := Min(255, OrigRow[j].rgbtRed + value);
        DestRow[j].rgbtGreen := Min(255, OrigRow[j].rgbtGreen + value);
        DestRow[j].rgbtBlue := Min(255, OrigRow[j].rgbtBlue + value);
      end else begin
          // RGB values must be greater or equal than 0
        DestRow[j].rgbtRed := Max(0, OrigRow[j].rgbtRed + value);
        DestRow[j].rgbtGreen := Max(0, OrigRow[j].rgbtGreen + value);
        DestRow[j].rgbtBlue := Max(0, OrigRow[j].rgbtBlue + value);
      end;
    end;
  end;

  //Refresco el ATImageBox de visualizacion
  ATImageBoxSimulacionImagenes.Image.Refresh;

  //Refresco el dsZoomNavigator
  ActualizarDSZoomNavigatorSimulacionImagenes;

  //Actualizo la variable de ultimo trabajo realizado
  UltimoTrabajoSimulacionImagenes:= 'ModificarBrillo';
end;



function Min(a, b: integer): integer;
begin
  if a < b then result := a
  else result := b;
end;



function Max(a, b: integer): integer;
begin
  if a > b then result := a
  else result := b;
end;



procedure TfrmPrincipal.lblbtnNegativoSimulacionImagenesClick(Sender: TObject);
begin
  InvertirBitmap(ATImageBoxSimulacionImagenes.Image.Picture.Bitmap);
  ATImageBoxSimulacionImagenes.Refresh;
end;



procedure TfrmPrincipal.TrackBarContrasteSimulacionImagenesChange(Sender: TObject);
begin
  //Mando a actualizar estado de la imagen (Brillo y Contraste con PixTwix)
  //ActualizarBrilloContraste;
  ActualizarBrilloContrasteDobleCapaSimulacionImagenes;

  //Actualizo la variable de ultimo trabajo realizado
  UltimoTrabajoSimulacionImagenes:= 'ModificarContraste';
end;



procedure TfrmPrincipal.InvertirBitmap(Bmp: TBitmap);
begin
  InvertRect(Bmp.Canvas.Handle, Bmp.Canvas.ClipRect);
end;



function TfrmPrincipal.EstaEncimaImagenCentral: Boolean;
var
  TopLeft, BottomRight: TPoint;
begin
  //Calculo las coordenadas de los bordes del ATImageBox (no daba exacto)
  //TopLeft.X:= frmPrincipal.Left + CollapsePanelImagenCentralSimulacionImagenes.Left + ATImageBoxSimulacionImagenes.Left + 5;
  //TopLeft.Y:= frmPrincipal.Top + CollapsePanelImagenCentralSimulacionImagenes.Top + ATImageBoxSimulacionImagenes.Top + 22;

  //BottomRight.X:= TopLeft.X + ATImageBoxSimulacionImagenes.Width - 19;    //710
  //BottomRight.Y:= TopLeft.Y + ATImageBoxSimulacionImagenes.Height + 3;    //569

  //Calculo las coordenadas de los bordes del ATImageBox
  TopLeft.X:= frmPrincipal.Left + CollapsePanelImagenCentralSimulacionImagenes.Left + ATImageBoxSimulacionImagenes.Left + 5;
  TopLeft.Y:= frmPrincipal.Top + CollapsePanelImagenCentralSimulacionImagenes.Top + ATImageBoxSimulacionImagenes.Top + 51;

  BottomRight.X:= TopLeft.X + ATImageBoxSimulacionImagenes.Width - 3;    //710
  BottomRight.Y:= TopLeft.Y + ATImageBoxSimulacionImagenes.Height - 3;    //569

  //Aqui verifico si el mouse del usuario esta encima de la Imagen del Modulo de Simulacion
//  if (   ( (148 <= HallarColumnaPosicionX) and (HallarColumnaPosicionX <= 710) ) and ( (122 <= HallarFilaPosicionY) and (HallarFilaPosicionY <= 569) )   )
  if (   ( (TopLeft.X <= HallarColumnaPosicionX) and (HallarColumnaPosicionX <= BottomRight.X) ) and ( (TopLeft.Y <= HallarFilaPosicionY) and (HallarFilaPosicionY <= BottomRight.Y) )   )
    then
      begin
        Result:= True;
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TfrmPrincipal.ActualizarBrilloContrasteSimulacionImagenes;
begin

  //Paso la imagen de la fuente original hacia la temporal de procesamiento
  ATImageBoxTemporalSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
  
  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Le paso la imagen ya cargada a la libreria
  FreeImageLibrary.Picture:= ATImageBoxTemporalSimulacionImagenes.Image.Picture;
  
  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');  

  //Ejecuto el procedimiento de variacion de contraste
  If (FreeImageLibrary.Contrast(TrackBarContrasteSimulacionImagenes.Position, False))
    Then
      begin
          //Ejecuto el procedimiento de variacion de brillo
          If (FreeImageLibrary.Brightness(TrackBarBrilloSimulacionImagenes.Position, False))
            Then
              begin
                //Envio la imagen ya procesada, de regreso al componente de visualizacion
                ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;

                //Otra forma de enviarlo, pero que no me funciona
                //Image1.Picture:= FreeImageLibrary.Picture;
              end;
      end;

  //Libero la variable
  FreeImageLibrary.Free;
      
  //Refresco el componente de visualizaci�n
  ATImageBoxSimulacionImagenes.Image.Refresh;

  //Refresco el dsZoomNavigator
  ActualizarDSZoomNavigatorSimulacionImagenes;
end;



procedure TfrmPrincipal.ActualizarBrilloContrasteDobleCapaSimulacionImagenes;
begin
  //En dependencia de si esta habilitado el negativo o no
  if (chkNegativoSimulacionImagenes.Checked = True)
    then
      begin //Vision en Negativo
        //En dependencia de si esta habilitada la Escala Gris o no
        if (rbtnTonosGrisesSimulacionImagenes.Checked = True)
          then
            begin //Negativo + Escala Gris
              //Paso la imagen de la fuente original (Negativo + Escala Gris) hacia la temporal de procesamiento
              ATImageBoxTemporalSimulacionImagenes.Image.Picture:= ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture;
            end
              else
                begin //Negativo
                  //Paso la imagen de la fuente original (Negativo) hacia la temporal de procesamiento
                  ATImageBoxTemporalSimulacionImagenes.Image.Picture:= ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture;
                end;
      end
        else
          begin  //Vision en Color Real
            //En dependencia de si esta habilitada la Escala Gris o no
            if (rbtnTonosGrisesSimulacionImagenes.Checked = True)
              then
                begin //Color Real + Escala Gris
                  //Paso la imagen de la fuente original (Color Real + Escala Gris) hacia la temporal de procesamiento
                  ATImageBoxTemporalSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture;
                end
                  else
                    begin //Color Real
                      //Paso la imagen de la fuente original (Color Real) hacia la temporal de procesamiento
                      ATImageBoxTemporalSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
                    end;
          end;

  //Redimensiono el ATImageBox temporal
  RedimensionarImagenTemporalSimulacionImagenes;

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Le paso la imagen ya cargada a la libreria
  FreeImageLibrary.Picture:= ATImageBoxTemporalSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de variacion de contraste
  If (FreeImageLibrary.Contrast(TrackBarContrasteSimulacionImagenes.Position, False))
    Then
      begin
          //Ejecuto el procedimiento de variacion de brillo
          If (FreeImageLibrary.Brightness(TrackBarBrilloSimulacionImagenes.Position, False))
            Then
              begin
                //** Comienza la segunda capa **
                  //Ejecuto el procedimiento de variacion de contraste (2da capa)
                  If (FreeImageLibrary.Contrast(TrackBarContrasteSimulacionImagenes.Position, False))
                    Then
                      begin
                        //Ejecuto el procedimiento de variacion de brillo
                        If (FreeImageLibrary.Brightness(TrackBarBrilloSimulacionImagenes.Position, False))
                          Then
                            begin
                              //Paso la imagen ya procesada en la libreria, de regreso a la temporal
                              ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
                              
                              //Recorto los bordes de la imagen temporal
                              RecortarImagenTemporalSimulacionImagenes;

                              //Envio la imagen temporal, ya recortada, de regreso al componente de visualizacion
                              ATImageBoxSimulacionImagenes.Image.Picture.Bitmap := ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap;

                              //Otra forma de enviarlo, pero que no me funciona
                              //Image1.Picture:= FreeImageLibrary.Picture;
                            end;
                      end;
              end;
      end;

  //Libero la variable
  FreeImageLibrary.Free;
      
  //Refresco el componente de visualizaci�n
  ATImageBoxSimulacionImagenes.Image.Refresh;

  //Refresco el dsZoomNavigator
  ActualizarDSZoomNavigatorSimulacionImagenes;

  //Mando a volver a pintar el dsZoomNavigator
  dsZoomNavigatorSimulacionImagenes.Repaint;  
end;



procedure TfrmPrincipal.HabilitarComponentesSimulacionImagenes;
begin
  //Habilito los submenus necesarios, en la opcion Archivo del Menu Principal
  SubMenuGuardar.Enabled:= True;
  SubMenuGuardarComo.Enabled:= True;
  SubMenuAgregarABiblioteca.Enabled:= True;
  SubMenuLimpiar.Enabled:= True;
  SubMenuImprimir.Enabled:= True;

  //Habilito los submenus necesarios, en la opci�n Edicion del Menu Principal
  SubMenuEdicionCalcularDistancia.Enabled:= True;
  SubMenuEdicionCapturaDeImagen.Enabled:= True;
  SubMenuEdicionAmpliarImagen.Enabled:= True;
  SubMenuEdicionAchicarImagen.Enabled:= True;
  SubMenuEdicionPrevisualizarReporte.Enabled:= True;
  SubMenuEdicionExportarHaciaPDF.Enabled:= True;

  
  //Habilito la opcion Ver, en el Menu Principal
  MenuVer.Enabled:= True;


  //********************
  //*** SpeedButtons ***
  //********************  

  //Habilito los SpeedButtons correspondientes en el Modulo de Simulacion (ToolBar)
  SpeedButtonSalvarArchivoSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ToolBar\FileSave_Enable.bmp');
  SpeedButtonSalvarArchivoSimulacionImagenes.Enabled:= True;

  //SpeedButton de Add to Library
  SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ToolBar\DB_add_Enable.bmp');
  SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Enabled:= True;

  SpeedButtonLimpiarSimulacionImagenes.Enabled:= True;

  //SpeedButton de imprimir
  SpeedButtonImprimirSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ToolBar\Printer_Enable.bmp');
  SpeedButtonImprimirSimulacionImagenes.Enabled:= True;



  //*************************
  //*** Otros Componentes ***
  //*************************

  //Barra de escalado
  TrackBarSimulacionImagenes.Enabled:= True;

  //Barra del brillo
  TrackBarBrilloSimulacionImagenes.Enabled:= True;

  //Barra del contraste
  TrackBarContrasteSimulacionImagenes.Enabled:= True;

  //Reseteo la barra de escalado
  TrackBarSimulacionImagenes.Position:= 100; 

  //Reseteo la barra de brillo
  TrackBarBrilloSimulacionImagenes.Position:= 0;

  //Reseteo la barra de contraste
  TrackBarContrasteSimulacionImagenes.Position:= 0;

  //RadioButtons de la izquierda
  rbtnTonosGrisesSimulacionImagenes.Enabled:= True;
  rbtnColorRealSimulacionImagenes.Enabled:= True;

  //CheckBox de la izquierda
  chkNegativoSimulacionImagenes.Enabled:= True;
  chkAumentosSimulacionImagenes.Enabled:= True;
  chkMedicionesSimulacionImagenes.Enabled:= True;
  chkMirillaSimulacionImagenes.Enabled:= True;

  //CheckBox de la derecha
  chkFitSimulacionImagenes.Enabled:= True;
  chkFitOnlyBigSimulacionImagenes.Enabled:= True;
  chkCenterSimulacionImagenes.Enabled:= True;
  chkBorderSimulacionImagenes.Enabled:= True;
  chkLabelSimulacionImagenes.Enabled:= True;
  chkDragSimulacionImagenes.Enabled:= True;
  chkKeepPosSimulacionImagenes.Enabled:= True;
  //chkResampleSimulacionImagenes.Enabled:= True; //Quitado

  //CheckBox de abajo
  chkRedondearMediciones.Enabled:= True;



  //********************
  //*** LabelButtons ***
  //********************
    
  //LabelButton de Medir Distancia
  lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Enabled:= True;

  //LabelButton de Previsualizar Reportes
  lblbtnPrevisualizarReporteSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\SubMenu_Edicion\Report_Enable.bmp');
  lblbtnPrevisualizarReporteSimulacionImagenes.Refresh;
  lblbtnPrevisualizarReporteSimulacionImagenes.Enabled:= True;

  //LabelButton de Exportar hacia PDF
  lblbtnExportarHaciaPDFSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\SubMenu_Edicion\PDF_Export_Enable.bmp');
  lblbtnExportarHaciaPDFSimulacionImagenes.Refresh;
  lblbtnExportarHaciaPDFSimulacionImagenes.Enabled:= True;

  //Cargo los bmp para los LabelButon (habilitados)
  lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');
  lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

  //Refresco los LabelButtons de Zoom
  lblbtnZoomInSimulacionImagenes.Refresh;
  lblbtnZoomOutSimulacionImagenes.Refresh;
  
  //LabelButton de ZoomIn
  lblbtnZoomInSimulacionImagenes.Enabled:= True;

  //LabelButton de ZoomOut
  lblbtnZoomOutSimulacionImagenes.Enabled:= True;

  //LabelButton de SnapShoot
  lblbtnHerramientaFotografiarSimulacionImagenes.Enabled:= True;

  //LabelButton de Limpiar
  lblbtnLimpiarSimulacionImagenes.Enabled:= True;
end;



procedure TfrmPrincipal.DeshabilitarComponentesSimulacionImagenes;
begin
  //Deshabilito los submenus necesarios, en la opcion Archivo del Menu Principal
  SubMenuGuardar.Enabled:= False;
  SubMenuGuardarComo.Enabled:= False;
  SubMenuAgregarABiblioteca.Enabled:= False;
  SubMenuLimpiar.Enabled:= False;
  SubMenuImprimir.Enabled:= False;

  //Deshabilito los submenus necesarios, en la opci�n Edicion del Menu Principal
  SubMenuEdicionCalcularDistancia.Enabled:= False;
  SubMenuEdicionCapturaDeImagen.Enabled:= False;
  SubMenuEdicionAmpliarImagen.Enabled:= False;
  SubMenuEdicionAchicarImagen.Enabled:= False;
  SubMenuEdicionPrevisualizarReporte.Enabled:= False;
  SubMenuEdicionExportarHaciaPDF.Enabled:= False;


  //Deshabilito la opcion Ver, en el Menu Principal
  MenuVer.Enabled:= False;

  //********************
  //*** SpeedButtons ***
  //********************
  
  //SpeedButton de Guardar
  SpeedButtonSalvarArchivoSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ToolBar\FileSave_Disable.bmp');
  SpeedButtonSalvarArchivoSimulacionImagenes.Enabled:= False;

  //SpeedButton de Add to library
  SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ToolBar\DB_add_Disable.bmp');
  SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Enabled:= False;

  //SpeedButton de Limpiar
  SpeedButtonLimpiarSimulacionImagenes.Enabled:= False;

  //SpeedButton de imprimir
  SpeedButtonImprimirSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ToolBar\Printer_Disable.bmp');
  SpeedButtonImprimirSimulacionImagenes.Enabled:= False;


  //*************************
  //*** Otros Componentes ***
  //*************************

  //Barra de escalado
  TrackBarSimulacionImagenes.Enabled:= False;

  //Barra del brillo
  TrackBarBrilloSimulacionImagenes.Enabled:= False;

  //Barra del contraste
  TrackBarContrasteSimulacionImagenes.Enabled:= False;

  //Reseteo la barra de escalado
  TrackBarSimulacionImagenes.Position:= 100;

  //Reseteo la barra de brillo
  TrackBarBrilloSimulacionImagenes.Position:= 0;

  //Reseteo la barra de contraste
  TrackBarContrasteSimulacionImagenes.Position:= 0;

  //RadioButtons de la izquierda
  rbtnTonosGrisesSimulacionImagenes.Enabled:= False;
  rbtnColorRealSimulacionImagenes.Enabled:= False;

  //CheckBox de la izquierda
  chkNegativoSimulacionImagenes.Enabled:= False;
  chkAumentosSimulacionImagenes.Enabled:= False;
  chkMedicionesSimulacionImagenes.Enabled:= False;
  chkMirillaSimulacionImagenes.Enabled:= False;

  //CheckBox de la derecha
  chkFitSimulacionImagenes.Enabled:= False;
  chkFitOnlyBigSimulacionImagenes.Enabled:= False;
  chkCenterSimulacionImagenes.Enabled:= False;
  chkBorderSimulacionImagenes.Enabled:= False;
  chkLabelSimulacionImagenes.Enabled:= False;
  chkDragSimulacionImagenes.Enabled:= False;
  chkKeepPosSimulacionImagenes.Enabled:= False;

  //CheckBox de abajo
  chkRedondearMediciones.Enabled:= False;



  //********************
  //*** LabelButtons ***
  //********************
    
  //LabelButton de Medir Distancia
  lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Enabled:= False;

  //LabelButton de Previsualizar Reportes
  lblbtnPrevisualizarReporteSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\SubMenu_Edicion\Report_Disable.bmp');
  lblbtnPrevisualizarReporteSimulacionImagenes.Refresh;
  lblbtnPrevisualizarReporteSimulacionImagenes.Enabled:= False;

  //LabelButton de Exportar hacia PDF
  lblbtnExportarHaciaPDFSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\SubMenu_Edicion\PDF_Export_Disable.bmp');
  lblbtnExportarHaciaPDFSimulacionImagenes.Refresh;
  lblbtnExportarHaciaPDFSimulacionImagenes.Enabled:= False;

  //Cargo los bmp para los LabelButon (deshabilitados)
  lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Gris.bmp');
  lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Gris.bmp');

  //Refresco los LabelButtons de Zoom
  lblbtnZoomInSimulacionImagenes.Refresh;
  lblbtnZoomOutSimulacionImagenes.Refresh;
  
  //LabelButton de ZoomIn
  lblbtnZoomInSimulacionImagenes.Enabled:= False;

  //LabelButton de ZoomOut
  lblbtnZoomOutSimulacionImagenes.Enabled:= False;

  //LabelButton de SnapShoot
  lblbtnHerramientaFotografiarSimulacionImagenes.Enabled:= False;

  //LabelButton de Limpiar
  lblbtnLimpiarSimulacionImagenes.Enabled:= False;
end;



procedure TfrmPrincipal.ActualizarVisionSimulacionImagenes;
begin
  //
  if (chkNegativoSimulacionImagenes.Checked = True)
    then
      begin  //Vison en Negativo
        //Debo verificar si se aplica la Escala Gris
        if (rbtnTonosGrisesSimulacionImagenes.Checked = True)
          then
            begin  //Negativo + Escala Gris
              //Paso la imagen de la fuente original (Negativo + Escala Gris) hacia la de visualizacion
              ATImageBoxSimulacionImagenes.Image.Picture:= ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture;

              //Refresco el ATImageBox de visualizacion
              ATImageBoxSimulacionImagenes.Image.Refresh;

              //Refresco el dsZoomNavigator
              //ActualizarDSZoomNavigatorSimulacionImagenes;

              //Tomo en cuanta las posibles variaciones de brillo y contraste
              ActualizarBrilloContrasteDobleCapaSimulacionImagenes;

              //Coloreo adecuadamente la mirilla, en dependencia de la modalidad seleccionada
              if (ColorAutomatizadoVisorSimulacionImagenes = True)
                then
                  begin
                    //Coloreo adecuadamente la mirilla
                    ColorearMirillaSimulacionImagenes(clRed);
                  end
                    else
                      begin
                        //Coloreo la mirilla a patir del color ya seleccionado
                        ColorearMirillaSimulacionImagenes(ColorPersonalizadoVisorSimulacionImagenes);
                      end;

              //Actualizo los SubMenus del Menu Ver
              SubMenuVerColorReal.Checked:= False;
              SubMenuVerTonosGrises.Checked:= True;
              SubMenuVerNegativo.Checked:= True;

              SubMenuVerColorReal.Default:= False;
              SubMenuVerTonosGrises.Default:= True;
              SubMenuVerNegativo.Default:= True;
            end
              else
                begin //Negativo de color real (no tonos grises)
                  //Paso la imagen de la fuente original (Negativo) hacia la de visualizacion
                  ATImageBoxSimulacionImagenes.Image.Picture:= ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture;

                  //Refresco el ATImageBox de visualizacion
                  ATImageBoxSimulacionImagenes.Image.Refresh;

                  //Refresco el dsZoomNavigator
                  //ActualizarDSZoomNavigatorSimulacionImagenes;

                  //Tomo en cuanta las posibles variaciones de brillo y contraste
                  ActualizarBrilloContrasteDobleCapaSimulacionImagenes;

                  //Coloreo adecuadamente la mirilla, en dependencia de la modalidad seleccionada
                  if (ColorAutomatizadoVisorSimulacionImagenes = True)
                    then
                      begin
                        //Coloreo adecuadamente la mirilla
                        ColorearMirillaSimulacionImagenes(clRed);
                      end
                        else
                          begin
                            //Coloreo la mirilla a patir del color ya seleccionado
                            ColorearMirillaSimulacionImagenes(ColorPersonalizadoVisorSimulacionImagenes);
                          end;

                  //Coloreo adecuadamente la mirilla
                  ColorearMirillaSimulacionImagenes(DeterminarColoresPredominantesSimulacionImagenes);

                  //Actualizo los SubMenus del Menu Ver
                  SubMenuVerColorReal.Checked:= True;
                  SubMenuVerTonosGrises.Checked:= False;
                  SubMenuVerNegativo.Checked:= True;

                  SubMenuVerColorReal.Default:= True;
                  SubMenuVerTonosGrises.Default:= False;
                  SubMenuVerNegativo.Default:= True;
                end;
      end
        else
          begin //Vision No Negativa
            //Debo verificar si se aplica la Escala Gris
            if (rbtnTonosGrisesSimulacionImagenes.Checked = True)
              then
                begin //No Negativa + Escala Gris
                  //Paso la imagen de la fuente original (Color Real + Escala Gris) hacia la de visualizacion
                  ATImageBoxSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture;

                  //Refresco el ATImageBox de visualizacion
                  ATImageBoxSimulacionImagenes.Image.Refresh;

                  //Refresco el dsZoomNavigator
                  //ActualizarDSZoomNavigatorSimulacionImagenes;

                  //Tomo en cuanta las posibles variaciones de brillo y contraste
                  ActualizarBrilloContrasteDobleCapaSimulacionImagenes;

                  //Coloreo adecuadamente la mirilla, en dependencia de la modalidad seleccionada
                  if (ColorAutomatizadoVisorSimulacionImagenes = True)
                    then
                      begin
                        //Coloreo adecuadamente la mirilla
                        ColorearMirillaSimulacionImagenes(clRed);
                      end
                        else
                          begin
                            //Coloreo la mirilla a patir del color ya seleccionado
                            ColorearMirillaSimulacionImagenes(ColorPersonalizadoVisorSimulacionImagenes);
                          end;

                  //Actualizo los SubMenus del Menu Ver
                  SubMenuVerColorReal.Checked:= False;
                  SubMenuVerTonosGrises.Checked:= True;
                  SubMenuVerNegativo.Checked:= False;

                  SubMenuVerColorReal.Default:= False;
                  SubMenuVerTonosGrises.Default:= True;
                  SubMenuVerNegativo.Default:= False;
                end
                  else
                    begin //No negativa + Color Real
                      //Paso la imagen de la fuente original (Color Real) hacia la de visualizacion
                      ATImageBoxSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

                      //Refresco el ATImageBox de visualizacion
                      ATImageBoxSimulacionImagenes.Image.Refresh;

                      //Refresco el dsZoomNavigator
                      //ActualizarDSZoomNavigatorSimulacionImagenes;

                      //Tomo en cuanta las posibles variaciones de brillo y contraste
                      ActualizarBrilloContrasteDobleCapaSimulacionImagenes;

                      //Coloreo adecuadamente la mirilla, en dependencia de la modalidad seleccionada
                      if (ColorAutomatizadoVisorSimulacionImagenes = True)
                        then
                          begin
                            //Coloreo adecuadamente la mirilla
                            ColorearMirillaSimulacionImagenes(DeterminarColoresPredominantesSimulacionImagenes);
                          end
                            else
                              begin
                                //Coloreo la mirilla a patir del color ya seleccionado
                                ColorearMirillaSimulacionImagenes(ColorPersonalizadoVisorSimulacionImagenes);
                              end;

                      //Actualizo los SubMenus del Menu Ver
                      SubMenuVerColorReal.Checked:= True;
                      SubMenuVerTonosGrises.Checked:= False;
                      SubMenuVerNegativo.Checked:= False;

                      SubMenuVerColorReal.Default:= True;
                      SubMenuVerTonosGrises.Default:= False;
                      SubMenuVerNegativo.Default:= False;
                    end;
          end;

  //dsZoomNavigatorSimulacionImagenes.Repaint;
end;



procedure TfrmPrincipal.chkNegativoSimulacionImagenesClick(
  Sender: TObject);
begin
  ActualizarVisionSimulacionImagenes;
end;



procedure TfrmPrincipal.ConvertirOriginalesEscalaGrisSimulacionImagenes;
begin
  //Paso el Original (Color Real) hacia el Original (Color Real + Escala Gris)
  ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

  //Paso el Original (Negativo) hacia el Original (Negativo + Escala Gris)
  ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture:= ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture;

  //** 1ra conversion **

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Le paso la imagen (Color Real + Escala Gris) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Escala Gris
  If (FreeImageLibrary.Grayscale(gsProportional, False))
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;
      
  //Libero la variable
  FreeImageLibrary.Free;
  
  //Refresco el componente de almacenamiento (Color Real + Escala Gris)
  ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Refresh;


  //** 2da conversion **

  //Creo nuevamente la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Le paso la imagen (Negativo + Escala Gris) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Escala Gris
  If (FreeImageLibrary.Grayscale(gsProportional, False))
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;

  //Libero la variable
  FreeImageLibrary.Free;
      
  //Refresco el componente de almacenamiento (Negativo + Escala Gris)
  ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Refresh;
end;



procedure TfrmPrincipal.rbtnColorRealSimulacionImagenesClick(
  Sender: TObject);
begin
  ActualizarVisionSimulacionImagenes;
end;



procedure TfrmPrincipal.rbtnTonosGrisesSimulacionImagenesClick(Sender: TObject);
begin
  ActualizarVisionSimulacionImagenes;
end;



procedure TfrmPrincipal.PersonalizarCaptionsMenuSistemaDeLaForma(AFormHandle:HWnd);
const 
  STR_CLOSE    = '&Cerrar';
  STR_MAXIMIZE = 'Ma&ximizar';
  STR_MINIMIZE = 'Mi&nimizar';
  STR_SIZE     = 'Redimen&sionar';
  STR_MOVE     = '&Mover';
  STR_RESTORE  = '&Restaurar';
var 
  SystemMenu     : HMenu;
  MyMenuItemInfo : TMenuItemInfo;
begin 
  SystemMenu := GetSystemMenu(AFormHandle, FALSE);
  FillChar(MyMenuItemInfo,SizeOf(TMenuItemInfo),#0);
  MyMenuItemInfo.cbSize := SizeOf(TMenuItemInfo);
  MyMenuItemInfo.fMask  := MIIM_TYPE or MIIM_ID or MIIM_STATE;
  MyMenuItemInfo.fType  := MFT_STRING;

  MyMenuItemInfo.wId        := SC_CLOSE;
  MyMenuItemInfo.dwTypeData := STR_CLOSE;
  MyMenuItemInfo.cch        := Length(STR_CLOSE);
  SetMenuItemInfo(SystemMenu,
                  SC_CLOSE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_MAXIMIZE;
  MyMenuItemInfo.dwTypeData := STR_MAXIMIZE;
  MyMenuItemInfo.cch        := Length(STR_MAXIMIZE);
  SetMenuItemInfo(SystemMenu,
                  SC_MAXIMIZE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_MINIMIZE;
  MyMenuItemInfo.dwTypeData := STR_MINIMIZE;
  MyMenuItemInfo.cch        := Length(STR_MINIMIZE);
  SetMenuItemInfo(SystemMenu,
                  SC_MINIMIZE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_SIZE;
  MyMenuItemInfo.dwTypeData := STR_SIZE;
  MyMenuItemInfo.cch        := Length(STR_SIZE);
  SetMenuItemInfo(SystemMenu,
                  SC_SIZE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_MOVE;
  MyMenuItemInfo.dwTypeData := STR_MOVE;
  MyMenuItemInfo.cch        := Length(STR_MOVE);
  SetMenuItemInfo(SystemMenu,
                  SC_MOVE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_RESTORE;
  MyMenuItemInfo.dwTypeData := STR_RESTORE;
  MyMenuItemInfo.cch        := Length(STR_RESTORE);
  SetMenuItemInfo(SystemMenu,
                  SC_RESTORE,
                  FALSE,
                  MyMenuItemInfo);

end;



procedure TfrmPrincipal.RedimensionarImagenTemporalSimulacionImagenes;
var
  SourceBMP: TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  //Ancho:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Width;
  //Altura:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Height;
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;
  //Luego creo el bitmap temporal
  SourceBMP := TBitmap.Create;

  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio la informacion del ATImageBox de procesamiento (queda un borde en blanco)
      Canvas.Draw(50, 50, ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap);

      //Lo llevo a 24 bits
      PixelFormat := pf24bit; 
      //SaveToFile(ExtractFilePath(Application.ExeName) + 'ImagenRedimensionada.BMP');
    end;

  //Envio el bitmap de regreso hacia la imagen temporal de procesamiento
  ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap:= SourceBMP;

  //Libero el bitmap
  SourceBMP.Free;
end;



procedure TfrmPrincipal.RecortarImagenTemporalSimulacionImagenes;
var
  SourceRect, DestRect: TRect;
  SourceBMP, DestBMP  : TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  Ancho:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo los bitmap temporales
  SourceBMP := TBitmap.Create;
  DestBMP := TBitmap.Create;

  //Altero las diensiones del bitmap origen
  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio toda la info de la imagen temporal (con borde incluido)
      Canvas.Draw(0, 0, ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap);
    end;

  //Conformo las dimensiones del TRect origen
  SourceRect.Left:= 50;
  SourceRect.Right:= 50;
  SourceRect.Top:= 50;
  SourceRect.Bottom:= 50;

  SourceRect.TopLeft.X:= 50;
  SourceRect.TopLeft.Y:= 50;

  SourceRect.BottomRight.X:= Ancho + 50;
  SourceRect.BottomRight.Y:= Altura + 50;

  //Conformo las dimensiones del TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.Y:= 0;

  DestRect.BottomRight.X:= Ancho;
  DestRect.BottomRight.Y:= Altura;

  //Defino las dimensiones del bitmap destino
  with DestBMP do
    begin
      Width := Ancho;
      Height := Altura;
    end;

  //Copio la informacion util (excluyo el borde en blanco)
  DestBMP.Canvas.CopyRect(DestRect, SourceBMP.Canvas, SourceRect);

  //Paso el bitmap destino de regreso hacia la imagen temporal de procesamiento
  ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap:= DestBMP;

  //libero los bitmaps
  SourceBMP.Free;
  DestBMP.Free
end;



procedure TfrmPrincipal.CapturarImagenSimulacionImagenes;
var 
  DeskTop : TCanvas ;
  SourceRect, DestRect: TRect;
  SavePictureDialog: TSavePictureDialog;
  Bitmap, BitmapCopyright : TBitmap;
begin
  DeskTop:= TCanvas.Create;
  DeskTop.Handle:= GetWindowDC(GetDesktopWindow) ;

  //Prueba de m�todo alternativo
  SourceRect.TopLeft.X:= frmPrincipal.Left + CollapsePanelImagenCentralSimulacionImagenes.Left + ATImageBoxSimulacionImagenes.Left + 5;
  SourceRect.TopLeft.Y:= frmPrincipal.Top + CollapsePanelImagenCentralSimulacionImagenes.Top + ATImageBoxSimulacionImagenes.Top + 30;

  //SourceRect.BottomRight.X:= frmPrincipal.Left + PageControlTodo.Left + TabSheetSimulacion.Left + PageControlSimulacion.Left + TabSheetImagenes.Left + CollapsePanelImagenCentralSimulacionImagenes.Left + ATImageBoxSimulacionImagenes.Left + ATImageBoxSimulacionImagenes.Width + 5 - 19;    //710
  //SourceRect.BottomRight.Y:= frmPrincipal.Top + PageControlTodo.Top + TabSheetSimulacion.Top + ToolBarSimulacion.Height + PageControlSimulacion.Top + TabSheetImagenes.Top + CollapsePanelImagenCentralSimulacionImagenes.Top + ATImageBoxSimulacionImagenes.Left + ATImageBoxSimulacionImagenes.Height + 22 - 5;    //569

  SourceRect.BottomRight.X:= SourceRect.TopLeft.X + ATImageBoxSimulacionImagenes.Width - 19;    //710
  SourceRect.BottomRight.Y:= SourceRect.TopLeft.Y + ATImageBoxSimulacionImagenes.Height + 2;    //569


  //Lleno el TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.y:= 0;

  //M�todo original
  //DestRect.BottomRight.X:= 550;
  //DestRect.BottomRight.y:= 440;
  //DestRect.BottomRight.X:= 563;
  //DestRect.BottomRight.y:= 440;

  //Prueba de m�todo alternativo
  DestRect.BottomRight.X:= SourceRect.BottomRight.X - SourceRect.TopLeft.X;
  DestRect.BottomRight.Y:= SourceRect.BottomRight.Y - SourceRect.TopLeft.Y;

  //Redimensiono el TImage temporal (nuevo)
  Image1.Width:= DestRect.BottomRight.X;
  Image1.Height:= DestRect.BottomRight.Y;

  //Copio la imagen en el TImage temporal
  Image1.Canvas.CopyRect(DestRect, DeskTop, SourceRect);

  //Creo un bitmap temporal para la muestra
  Bitmap := TBitmap.Create;

  //Creo un bitmap temporal para el Copyright
  BitmapCopyright := TBitmap.Create;

  //Salvo la imagen del TImage temporal
  Image1.Picture.Bitmap.SaveToFile( ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

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

  //Creo el SavePictureDialog
  //SavePictureDialogSimulacionImagenes.Create(self);
  SavePictureDialog:= TSavePictureDialog.Create(Application);

  //Epecifico las caracter�sticas del SavePictureDialog
  //SavePictureDialogSimulacionImagenes.FileName:= '';
  //SavePictureDialogSimulacionImagenes.Filter:= 'Mapa de bits|*.BMP';
  //SavePictureDialogSimulacionImagenes.DefaultExt:= 'BMP';

  SavePictureDialog.FileName:= '';
  SavePictureDialog.Filter:= 'Mapa de bits|*.BMP';
  SavePictureDialog.DefaultExt:= 'BMP';

  //if (SavePictureDialogSimulacionImagenes.Execute)
  if (SavePictureDialog.Execute)
    then
      begin
        //Salvo la imagen del bitmap temporal
        //Image1.Picture.Bitmap.SaveToFile(SavePictureDialogSimulacionImagenes.FileName);
        Bitmap.SaveToFile(SavePictureDialog.FileName);

        //Cierro el SavePictureDialog (daba tremendo bateo)
        //SavePictureDialogSimulacionImagenes.Destroy;
        //SavePictureDialog.Destroy;
        FreeAndNil(SavePictureDialog);
      end;


  //Libero memoria del bitmap temporal para la muestra
  Bitmap.Free;

  //Libero memoria del bitmap temporal para el Copyright
  BitmapCopyright.Free;

  //Borro la imagen temporal del reporte (no encriptada)
  DeleteFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

  //Libero memoria del Canvas del PrintScreen
  DeskTop.Free;
end;



procedure TfrmPrincipal.lblbtnHerramientaFotografiarSimulacionImagenesClick(
  Sender: TObject);
begin
  //Capturo la imagen mostrada en el ATImageBox del modulo de simulacion
  CapturarImagenSimulacionImagenes;
end;



procedure TfrmPrincipal.chkMirillaSimulacionImagenesClick(Sender: TObject);
begin
  ActualizarMostrarSimulacionImagenes;
end;



procedure TfrmPrincipal.MostrarMirillaSimulacionImagenes;
begin
  //Muestro los panelitos que conforman la mirilla
  PanelPilar1LenteMirillaSimulacionImagenes.Visible:= True;
  PanelPilar2LenteMirillaSimulacionImagenes.Visible:= True;
  PanelPilar3LenteMirillaSimulacionImagenes.Visible:= True;
  PanelPilar4LenteMirillaSimulacionImagenes.Visible:= True;

  PanelRayaHorizontalLenteMirillaSimulacionImagenes.Visible:= True;

  PanelRayitaBordeHorizontal1SimulacionImagenes.Visible:= True;
  PanelRayitaBordeHorizontal2SimulacionImagenes.Visible:= True;
  PanelRayitaBordeHorizontal3SimulacionImagenes.Visible:= True;
  PanelRayitaBordeHorizontal4SimulacionImagenes.Visible:= True;

  PanelRayitaBordeVertical1SimulacionImagenes.Visible:= True;
  PanelRayitaBordeVertical2SimulacionImagenes.Visible:= True;
  PanelRayitaBordeVertical3SimulacionImagenes.Visible:= True;
  PanelRayitaBordeVertical4SimulacionImagenes.Visible:= True;

  //En dependencia del tipo de visor
  if (TipoDeVisorSimulacionImagenes = 'Simple')
    then
      begin
        //Escondo los panelitos intermedios (gradiente)
        PanelGradiente01SimulacionImagenes.Visible:= False;
        PanelGradiente02SimulacionImagenes.Visible:= False;
        PanelGradiente03SimulacionImagenes.Visible:= False;
        PanelGradiente04SimulacionImagenes.Visible:= False;
        PanelGradiente05SimulacionImagenes.Visible:= False;
        PanelGradiente06SimulacionImagenes.Visible:= False;
        PanelGradiente07SimulacionImagenes.Visible:= False;
        PanelGradiente08SimulacionImagenes.Visible:= False;
        PanelGradiente09SimulacionImagenes.Visible:= False;

        PanelGradiente11SimulacionImagenes.Visible:= False;
        PanelGradiente12SimulacionImagenes.Visible:= False;
        PanelGradiente13SimulacionImagenes.Visible:= False;
        PanelGradiente14SimulacionImagenes.Visible:= False;
        PanelGradiente15SimulacionImagenes.Visible:= False;
        PanelGradiente16SimulacionImagenes.Visible:= False;
        PanelGradiente17SimulacionImagenes.Visible:= False;
        PanelGradiente18SimulacionImagenes.Visible:= False;
        PanelGradiente19SimulacionImagenes.Visible:= False;

        PanelGradiente21SimulacionImagenes.Visible:= False;
        PanelGradiente22SimulacionImagenes.Visible:= False;
        PanelGradiente23SimulacionImagenes.Visible:= False;
        PanelGradiente24SimulacionImagenes.Visible:= False;
        PanelGradiente25SimulacionImagenes.Visible:= False;
        PanelGradiente26SimulacionImagenes.Visible:= False;
        PanelGradiente27SimulacionImagenes.Visible:= False;
        PanelGradiente28SimulacionImagenes.Visible:= False;
        PanelGradiente29SimulacionImagenes.Visible:= False;
      end
        else
          begin
            if (TipoDeVisorSimulacionImagenes = 'Complejo')
              then
                begin
                   //Muestro los panelitos intermedios (gradiente)
                  PanelGradiente01SimulacionImagenes.Visible:= True;
                  PanelGradiente02SimulacionImagenes.Visible:= True;
                  PanelGradiente03SimulacionImagenes.Visible:= True;
                  PanelGradiente04SimulacionImagenes.Visible:= True;
                  PanelGradiente05SimulacionImagenes.Visible:= True;
                  PanelGradiente06SimulacionImagenes.Visible:= True;
                  PanelGradiente07SimulacionImagenes.Visible:= True;
                  PanelGradiente08SimulacionImagenes.Visible:= True;
                  PanelGradiente09SimulacionImagenes.Visible:= True;

                  PanelGradiente11SimulacionImagenes.Visible:= True;
                  PanelGradiente12SimulacionImagenes.Visible:= True;
                  PanelGradiente13SimulacionImagenes.Visible:= True;
                  PanelGradiente14SimulacionImagenes.Visible:= True;
                  PanelGradiente15SimulacionImagenes.Visible:= True;
                  PanelGradiente16SimulacionImagenes.Visible:= True;
                  PanelGradiente17SimulacionImagenes.Visible:= True;
                  PanelGradiente18SimulacionImagenes.Visible:= True;
                  PanelGradiente19SimulacionImagenes.Visible:= True;

                  PanelGradiente21SimulacionImagenes.Visible:= True;
                  PanelGradiente22SimulacionImagenes.Visible:= True;
                  PanelGradiente23SimulacionImagenes.Visible:= True;
                  PanelGradiente24SimulacionImagenes.Visible:= True;
                  PanelGradiente25SimulacionImagenes.Visible:= True;
                  PanelGradiente26SimulacionImagenes.Visible:= True;
                  PanelGradiente27SimulacionImagenes.Visible:= True;
                  PanelGradiente28SimulacionImagenes.Visible:= True;
                  PanelGradiente29SimulacionImagenes.Visible:= True;
                end
                  else
                    begin
                      if (TipoDeVisorSimulacionImagenes = 'Realista')
                        then
                          begin
                            //Muestro los panelitos intermedios (gradiente)
                            PanelGradiente01SimulacionImagenes.Visible:= True;
                            PanelGradiente02SimulacionImagenes.Visible:= True;
                            PanelGradiente03SimulacionImagenes.Visible:= True;
                            PanelGradiente04SimulacionImagenes.Visible:= True;
                            PanelGradiente05SimulacionImagenes.Visible:= True;
                            PanelGradiente06SimulacionImagenes.Visible:= True;
                            PanelGradiente07SimulacionImagenes.Visible:= True;
                            PanelGradiente08SimulacionImagenes.Visible:= True;
                            PanelGradiente09SimulacionImagenes.Visible:= True;

                            PanelGradiente11SimulacionImagenes.Visible:= True;
                            PanelGradiente12SimulacionImagenes.Visible:= True;
                            PanelGradiente13SimulacionImagenes.Visible:= True;
                            PanelGradiente14SimulacionImagenes.Visible:= True;
                            PanelGradiente15SimulacionImagenes.Visible:= True;
                            PanelGradiente16SimulacionImagenes.Visible:= True;
                            PanelGradiente17SimulacionImagenes.Visible:= True;
                            PanelGradiente18SimulacionImagenes.Visible:= True;
                            PanelGradiente19SimulacionImagenes.Visible:= True;

                            PanelGradiente21SimulacionImagenes.Visible:= True;
                            PanelGradiente22SimulacionImagenes.Visible:= True;
                            PanelGradiente23SimulacionImagenes.Visible:= True;
                            PanelGradiente24SimulacionImagenes.Visible:= True;
                            PanelGradiente25SimulacionImagenes.Visible:= True;
                            PanelGradiente26SimulacionImagenes.Visible:= True;
                            PanelGradiente27SimulacionImagenes.Visible:= True;
                            PanelGradiente28SimulacionImagenes.Visible:= True;
                            PanelGradiente29SimulacionImagenes.Visible:= True;
                          end;
                     end;
          end;  
{
                  //Muestro los panelitos intermedios (gradiente)
                  PanelGradiente01SimulacionImagenes.Visible:= True;
                  PanelGradiente02SimulacionImagenes.Visible:= True;
                  PanelGradiente03SimulacionImagenes.Visible:= True;
                  PanelGradiente04SimulacionImagenes.Visible:= True;
                  PanelGradiente05SimulacionImagenes.Visible:= True;
                  PanelGradiente06SimulacionImagenes.Visible:= True;
                  PanelGradiente07SimulacionImagenes.Visible:= True;
                  PanelGradiente08SimulacionImagenes.Visible:= True;
                  PanelGradiente09SimulacionImagenes.Visible:= True;

                  PanelGradiente11SimulacionImagenes.Visible:= True;
                  PanelGradiente12SimulacionImagenes.Visible:= True;
                  PanelGradiente13SimulacionImagenes.Visible:= True;
                  PanelGradiente14SimulacionImagenes.Visible:= True;
                  PanelGradiente15SimulacionImagenes.Visible:= True;
                  PanelGradiente16SimulacionImagenes.Visible:= True;
                  PanelGradiente17SimulacionImagenes.Visible:= True;
                  PanelGradiente18SimulacionImagenes.Visible:= True;
                  PanelGradiente19SimulacionImagenes.Visible:= True;

                  PanelGradiente21SimulacionImagenes.Visible:= True;
                  PanelGradiente22SimulacionImagenes.Visible:= True;
                  PanelGradiente23SimulacionImagenes.Visible:= True;
                  PanelGradiente24SimulacionImagenes.Visible:= True;
                  PanelGradiente25SimulacionImagenes.Visible:= True;
                  PanelGradiente26SimulacionImagenes.Visible:= True;
                  PanelGradiente27SimulacionImagenes.Visible:= True;
                  PanelGradiente28SimulacionImagenes.Visible:= True;
                  PanelGradiente29SimulacionImagenes.Visible:= True;
}                   
end;



procedure TfrmPrincipal.OcultarMirillaSimulacionImagenes;
begin
  //Oculto los panelitos que conforman la mirilla
  PanelPilar1LenteMirillaSimulacionImagenes.Visible:= False;
  PanelPilar2LenteMirillaSimulacionImagenes.Visible:= False;
  PanelPilar3LenteMirillaSimulacionImagenes.Visible:= False;
  PanelPilar4LenteMirillaSimulacionImagenes.Visible:= False;

  PanelRayaHorizontalLenteMirillaSimulacionImagenes.Visible:= False;

  PanelRayitaBordeHorizontal1SimulacionImagenes.Visible:= False;
  PanelRayitaBordeHorizontal2SimulacionImagenes.Visible:= False;
  PanelRayitaBordeHorizontal3SimulacionImagenes.Visible:= False;
  PanelRayitaBordeHorizontal4SimulacionImagenes.Visible:= False;

  PanelRayitaBordeVertical1SimulacionImagenes.Visible:= False;
  PanelRayitaBordeVertical2SimulacionImagenes.Visible:= False;
  PanelRayitaBordeVertical3SimulacionImagenes.Visible:= False;
  PanelRayitaBordeVertical4SimulacionImagenes.Visible:= False;

  //En dependencia del tipo de visor
  if (TipoDeVisorSimulacionImagenes = 'Simple')
    then
      begin
        //Escondo los panelitos intermedios (gradiente)
        PanelGradiente01SimulacionImagenes.Visible:= False;
        PanelGradiente02SimulacionImagenes.Visible:= False;
        PanelGradiente03SimulacionImagenes.Visible:= False;
        PanelGradiente04SimulacionImagenes.Visible:= False;
        PanelGradiente05SimulacionImagenes.Visible:= False;
        PanelGradiente06SimulacionImagenes.Visible:= False;
        PanelGradiente07SimulacionImagenes.Visible:= False;
        PanelGradiente08SimulacionImagenes.Visible:= False;
        PanelGradiente09SimulacionImagenes.Visible:= False;

        PanelGradiente11SimulacionImagenes.Visible:= False;
        PanelGradiente12SimulacionImagenes.Visible:= False;
        PanelGradiente13SimulacionImagenes.Visible:= False;
        PanelGradiente14SimulacionImagenes.Visible:= False;
        PanelGradiente15SimulacionImagenes.Visible:= False;
        PanelGradiente16SimulacionImagenes.Visible:= False;
        PanelGradiente17SimulacionImagenes.Visible:= False;
        PanelGradiente18SimulacionImagenes.Visible:= False;
        PanelGradiente19SimulacionImagenes.Visible:= False;

        PanelGradiente21SimulacionImagenes.Visible:= False;
        PanelGradiente22SimulacionImagenes.Visible:= False;
        PanelGradiente23SimulacionImagenes.Visible:= False;
        PanelGradiente24SimulacionImagenes.Visible:= False;
        PanelGradiente25SimulacionImagenes.Visible:= False;
        PanelGradiente26SimulacionImagenes.Visible:= False;
        PanelGradiente27SimulacionImagenes.Visible:= False;
        PanelGradiente28SimulacionImagenes.Visible:= False;
        PanelGradiente29SimulacionImagenes.Visible:= False;
      end
        else
          begin
            if (TipoDeVisorSimulacionImagenes = 'Complejo')
              then
                begin
                  //Escondo los panelitos intermedios (gradiente)
                  PanelGradiente01SimulacionImagenes.Visible:= False;
                  PanelGradiente02SimulacionImagenes.Visible:= False;
                  PanelGradiente03SimulacionImagenes.Visible:= False;
                  PanelGradiente04SimulacionImagenes.Visible:= False;
                  PanelGradiente05SimulacionImagenes.Visible:= False;
                  PanelGradiente06SimulacionImagenes.Visible:= False;
                  PanelGradiente07SimulacionImagenes.Visible:= False;
                  PanelGradiente08SimulacionImagenes.Visible:= False;
                  PanelGradiente09SimulacionImagenes.Visible:= False;

                  PanelGradiente11SimulacionImagenes.Visible:= False;
                  PanelGradiente12SimulacionImagenes.Visible:= False;
                  PanelGradiente13SimulacionImagenes.Visible:= False;
                  PanelGradiente14SimulacionImagenes.Visible:= False;
                  PanelGradiente15SimulacionImagenes.Visible:= False;
                  PanelGradiente16SimulacionImagenes.Visible:= False;
                  PanelGradiente17SimulacionImagenes.Visible:= False;
                  PanelGradiente18SimulacionImagenes.Visible:= False;
                  PanelGradiente19SimulacionImagenes.Visible:= False;

                  PanelGradiente21SimulacionImagenes.Visible:= False;
                  PanelGradiente22SimulacionImagenes.Visible:= False;
                  PanelGradiente23SimulacionImagenes.Visible:= False;
                  PanelGradiente24SimulacionImagenes.Visible:= False;
                  PanelGradiente25SimulacionImagenes.Visible:= False;
                  PanelGradiente26SimulacionImagenes.Visible:= False;
                  PanelGradiente27SimulacionImagenes.Visible:= False;
                  PanelGradiente28SimulacionImagenes.Visible:= False;
                  PanelGradiente29SimulacionImagenes.Visible:= False;
                end
                  else
                    begin
                      if (TipoDeVisorSimulacionImagenes = 'Realista')
                        then
                          begin
                            //Escondo los panelitos intermedios (gradiente)
                            PanelGradiente01SimulacionImagenes.Visible:= False;
                            PanelGradiente02SimulacionImagenes.Visible:= False;
                            PanelGradiente03SimulacionImagenes.Visible:= False;
                            PanelGradiente04SimulacionImagenes.Visible:= False;
                            PanelGradiente05SimulacionImagenes.Visible:= False;
                            PanelGradiente06SimulacionImagenes.Visible:= False;
                            PanelGradiente07SimulacionImagenes.Visible:= False;
                            PanelGradiente08SimulacionImagenes.Visible:= False;
                            PanelGradiente09SimulacionImagenes.Visible:= False;

                            PanelGradiente11SimulacionImagenes.Visible:= False;
                            PanelGradiente12SimulacionImagenes.Visible:= False;
                            PanelGradiente13SimulacionImagenes.Visible:= False;
                            PanelGradiente14SimulacionImagenes.Visible:= False;
                            PanelGradiente15SimulacionImagenes.Visible:= False;
                            PanelGradiente16SimulacionImagenes.Visible:= False;
                            PanelGradiente17SimulacionImagenes.Visible:= False;
                            PanelGradiente18SimulacionImagenes.Visible:= False;
                            PanelGradiente19SimulacionImagenes.Visible:= False;

                            PanelGradiente21SimulacionImagenes.Visible:= False;
                            PanelGradiente22SimulacionImagenes.Visible:= False;
                            PanelGradiente23SimulacionImagenes.Visible:= False;
                            PanelGradiente24SimulacionImagenes.Visible:= False;
                            PanelGradiente25SimulacionImagenes.Visible:= False;
                            PanelGradiente26SimulacionImagenes.Visible:= False;
                            PanelGradiente27SimulacionImagenes.Visible:= False;
                            PanelGradiente28SimulacionImagenes.Visible:= False;
                            PanelGradiente29SimulacionImagenes.Visible:= False;
                          end;
                     end;
          end;


end;



procedure TfrmPrincipal.ColorearMirillaSimulacionImagenes(aColor: TColor);
begin
  //Coloreo los panelitos que conforman la mirilla
  PanelPilar1LenteMirillaSimulacionImagenes.Color:= aColor;
  PanelPilar2LenteMirillaSimulacionImagenes.Color:= aColor;
  PanelPilar3LenteMirillaSimulacionImagenes.Color:= aColor;
  PanelPilar4LenteMirillaSimulacionImagenes.Color:= aColor;

  PanelRayaHorizontalLenteMirillaSimulacionImagenes.Color:= aColor;

  PanelRayitaBordeHorizontal1SimulacionImagenes.Color:= aColor;
  PanelRayitaBordeHorizontal2SimulacionImagenes.Color:= aColor;
  PanelRayitaBordeHorizontal3SimulacionImagenes.Color:= aColor;
  PanelRayitaBordeHorizontal4SimulacionImagenes.Color:= aColor;

  PanelRayitaBordeVertical1SimulacionImagenes.Color:= aColor;
  PanelRayitaBordeVertical2SimulacionImagenes.Color:= aColor;
  PanelRayitaBordeVertical3SimulacionImagenes.Color:= aColor;
  PanelRayitaBordeVertical4SimulacionImagenes.Color:= aColor;

  PanelGradiente01SimulacionImagenes.Color:= aColor;
  PanelGradiente02SimulacionImagenes.Color:= aColor;
  PanelGradiente03SimulacionImagenes.Color:= aColor;
  PanelGradiente04SimulacionImagenes.Color:= aColor;
  PanelGradiente05SimulacionImagenes.Color:= aColor;
  PanelGradiente06SimulacionImagenes.Color:= aColor;
  PanelGradiente07SimulacionImagenes.Color:= aColor;
  PanelGradiente08SimulacionImagenes.Color:= aColor;
  PanelGradiente09SimulacionImagenes.Color:= aColor;

  PanelGradiente11SimulacionImagenes.Color:= aColor;
  PanelGradiente12SimulacionImagenes.Color:= aColor;
  PanelGradiente13SimulacionImagenes.Color:= aColor;
  PanelGradiente14SimulacionImagenes.Color:= aColor;
  PanelGradiente15SimulacionImagenes.Color:= aColor;
  PanelGradiente16SimulacionImagenes.Color:= aColor;
  PanelGradiente17SimulacionImagenes.Color:= aColor;
  PanelGradiente18SimulacionImagenes.Color:= aColor;
  PanelGradiente19SimulacionImagenes.Color:= aColor;

  PanelGradiente21SimulacionImagenes.Color:= aColor;
  PanelGradiente22SimulacionImagenes.Color:= aColor;
  PanelGradiente23SimulacionImagenes.Color:= aColor;
  PanelGradiente24SimulacionImagenes.Color:= aColor;
  PanelGradiente25SimulacionImagenes.Color:= aColor;
  PanelGradiente26SimulacionImagenes.Color:= aColor;
  PanelGradiente27SimulacionImagenes.Color:= aColor;
  PanelGradiente28SimulacionImagenes.Color:= aColor;
  PanelGradiente29SimulacionImagenes.Color:= aColor;
end;



function TfrmPrincipal.DeterminarAumento(aCadena: String): Integer;
var
  LargoTotal: Integer;
  Inicio: Integer;
  Aumento: Integer;
begin
  //Primero determinamos el largo total de la cadena original
  LargoTotal:= length(aCadena);

  //Luego determinamos el indice a partir del cual empieza la subcadena: _X_
  Inicio:=  PosEx('_X_', aCadena, 1 );

  //Luego determino el aumento
  Aumento:= StrToInt(   AnsiMidStr(aCadena, Inicio + 3, (LargoTotal - Inicio - 6)   )   );

  //Guardo el aumento en la variable global
  Result:= Aumento;

  //De prueba
  //ShowMessage(IntToStr(Aumento));
end;



procedure TfrmPrincipal.chkMedicionesSimulacionImagenesClick(
  Sender: TObject);
begin
  ActualizarMostrarSimulacionImagenes;
end;



function TfrmPrincipal.CumpleConFormatoAdecuado(aCadena: String): Boolean;
var
  LargoTotal: Integer;
  Inicio: Integer;
  Aumento: String;
begin
  //Inicializo la respuesta en verdadero
  Result:= True;

  //Primero determinamos el largo total de la cadena original
  LargoTotal:= length(aCadena);

  //Luego determinamos el indice a partir del cual empieza la subcadena: _X_
  Inicio:=  PosEx('_X_', aCadena, 1 );

  //Si hubo error al hayar la cadena _X_ entonces es falso
  if (Inicio = 0)
    then
      begin
        Result:= False;
      end;

  //Ahora tomo en consideraci�n el formato en que se encuentra el archivo
  //*** Verificamos si la imagen cargada es de extension *.sim, *.bmp o *.jpg
  if (  LowerCase( AnsiRightStr(aCadena, 3) ) = 'jpg'   )
    then
      begin //Formato *.JPG
        //Luego determino el aumento
        Aumento:= AnsiMidStr(aCadena, Inicio + 3, (LargoTotal - Inicio - 3 - 3)   );
      end   //Fin de formato *.JPG
        else
          begin
            if (  LowerCase( AnsiRightStr(aCadena, 3) ) = 'bmp'   )
              then
                begin //Formato *.BMP
                  //Luego determino el aumento
                  Aumento:= AnsiMidStr(aCadena, Inicio + 3, (LargoTotal - Inicio - 3 - 3)   );
                end   //Fin de formato *.BMP
                  else
                    begin
                      if (  LowerCase( AnsiRightStr(aCadena, 4) ) = 'jpeg'   )
                        then
                          begin //Formato *.JPEG
                            //Luego determino el aumento
                            Aumento:= AnsiMidStr(aCadena, Inicio + 3, (LargoTotal - Inicio - 3 - 4)   );
                          end;  //Fin de formato *.JPEG
                    end;
          end;      

  //Si hubo error al hayar el aumento entonces es falso
  if (Aumento = '')
    then
      begin
        Result:= False;
      end;
end;



function TfrmPrincipal.ExtraerParteUtilDeNombreFichero(aCadena: String): String;
var
  //LargoTotal: Integer;
  Inicio: Integer;
begin
  //Primero determinamos el largo total de la cadena original
  //LargoTotal:= length(aCadena);

  //Luego determinamos el indice a partir del cual empieza la subcadena: _X_
  Inicio:=  PosEx('_X_', aCadena, 1 );

  //Luego determino la parte util del nombre
  Result:= AnsiMidStr(aCadena, 1, (Inicio - 1));
end;



function TfrmPrincipal.DeterminarColoresPredominantesSimulacionImagenes: TColor;
var i, j, value: integer;
    OrigRow: pRGBArray;

    PigmentoRojo: Integer;
    PigmentoVerde: Integer;
    PigmentoAzul: Integer;
begin
  //Inicializo las variables de conteo de pigmento
  PigmentoRojo:= 0;
  PigmentoVerde:= 0;
  PigmentoAzul:= 0;


  //Se ejecuta el procedimiento en base al tipo de color escogido
  if (rbtnColorRealSimulacionImagenes.Checked = True)
    then
      begin //Color Real
        //Ahora en base a si es negativo o no
        if (chkNegativoSimulacionImagenes.Checked = True)
          then
            begin  //Negativo de Color real
              //Por cada fila de pixels
              for i := 0 to ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Height - 1 do
                begin
                  OrigRow := ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap.ScanLine[i];

                  //Por cada pixel en fila
                  for j := 0 to ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Width - 1 do
                    begin
                      if (   OrigRow[j].rgbtRed = MaxDeTres(OrigRow[j].rgbtRed, OrigRow[j].rgbtGreen, OrigRow[j].rgbtBlue)   )
                        then
                          begin
                            PigmentoRojo:= PigmentoRojo + 1;
                          end;

                      if (   OrigRow[j].rgbtGreen = MaxDeTres(OrigRow[j].rgbtRed, OrigRow[j].rgbtGreen, OrigRow[j].rgbtBlue)   )
                        then
                          begin
                            PigmentoVerde:= PigmentoVerde + 1;
                          end;

                      if (   OrigRow[j].rgbtBlue = MaxDeTres(OrigRow[j].rgbtRed, OrigRow[j].rgbtGreen, OrigRow[j].rgbtBlue)   )
                        then
                          begin
                            PigmentoAzul:= PigmentoAzul + 1;
                          end;
                    end; //Fin de recorrer cada pixel en fila
                end; //Fin de recorrer fila de pixels

                //Comparo las tres variables de conteo al final
                if ( PigmentoRojo = MaxDeTres(PigmentoRojo, PigmentoVerde, PigmentoAzul) )
                  then
                    begin
                      Result:= clLime;
                    end
                      else
                        begin
                          if ( PigmentoVerde = MaxDeTres(PigmentoRojo, PigmentoVerde, PigmentoAzul) )
                            then
                              begin
                                Result:= clRed;
                              end
                                else
                                  begin
                                    if ( PigmentoAzul = MaxDeTres(PigmentoRojo, PigmentoVerde, PigmentoAzul) )
                                      then
                                        begin
                                          Result:= clYellow;
                                        end;
                                  end;
                        end;
              //Result:= 'Los colores son: Rojo ' + IntToStr(PigmentoRojo) + ' Verde: ' + IntToStr(PigmentoVerde) + ' Azul:' + IntToStr(PigmentoAzul) + '.';
            end    //FIN Negativo de Color real
              else
                begin //Color Real Simple
                  //Por cada fila de pixels
                  for i := 0 to ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Height - 1 do
                    begin
                      OrigRow := ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap.ScanLine[i];

                      //Por cada pixel en fila
                      for j := 0 to ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Width - 1 do
                        begin
                          if (   OrigRow[j].rgbtRed = MaxDeTres(OrigRow[j].rgbtRed, OrigRow[j].rgbtGreen, OrigRow[j].rgbtBlue)   )
                            then
                              begin
                                PigmentoRojo:= PigmentoRojo + 1;
                              end;

                          if (   OrigRow[j].rgbtGreen = MaxDeTres(OrigRow[j].rgbtRed, OrigRow[j].rgbtGreen, OrigRow[j].rgbtBlue)   )
                            then
                              begin
                                PigmentoVerde:= PigmentoVerde + 1;
                              end;

                          if (   OrigRow[j].rgbtBlue = MaxDeTres(OrigRow[j].rgbtRed, OrigRow[j].rgbtGreen, OrigRow[j].rgbtBlue)   )
                            then
                              begin
                                PigmentoAzul:= PigmentoAzul + 1;
                              end;
                        end; //Fin de recorrer cada pixel en fila
                    end; //Fin de recorrer fila de pixels

                    //Comparo las tres variables de conteo al final
                    if ( PigmentoRojo = MaxDeTres(PigmentoRojo, PigmentoVerde, PigmentoAzul) )
                      then
                        begin
                          Result:= clLime;
                        end
                          else
                            begin
                              if ( PigmentoVerde = MaxDeTres(PigmentoRojo, PigmentoVerde, PigmentoAzul) )
                                then
                                  begin
                                    Result:= clRed;
                                  end
                                    else
                                      begin
                                        if ( PigmentoAzul = MaxDeTres(PigmentoRojo, PigmentoVerde, PigmentoAzul) )
                                          then
                                            begin
                                              Result:= clYellow;
                                            end;
                                      end;
                            end;
                  //Result:= 'Los colores son: Rojo ' + IntToStr(PigmentoRojo) + ' Verde: ' + IntToStr(PigmentoVerde) + ' Azul:' + IntToStr(PigmentoAzul) + '.';
                end; //FIN Color Real Simple
      end
        else
          begin //Tonos Grises
            if (rbtnTonosGrisesSimulacionImagenes.Checked = True)
              then
                begin
                  //Ahora en base a si es negativo o no
                  if (chkNegativoSimulacionImagenes.Checked = True)
                    then
                      begin //Negativo de Tonos Grises
                        Result:= clRed;
                      end  //FIN Negativo de Tonos Grises
                        else
                          begin //Tonos Grises Simple
                            Result:= clRed;
                          end; //FIN Tonos Grises Simple
                end;
          end; //FIN Tonos Grises
end;



function TfrmPrincipal.MaxDeTres(a, b, c: integer): integer;
begin
  if (   (a >= b) and (a >= c)   )
    then
      begin
        Result := a
      end
        else
          begin
            if (   (b >= a) and (b >= c)   )
              then
                begin
                  Result := b
                end
                  else
                    begin
                      if (   (c >= a) and (c >= b)   )
                        then
                          begin
                            Result := c
                          end;
                    end;
          end;
end;



function TfrmPrincipal.MinDeTres(a, b, c: integer): integer;
begin
  if (   (a <= b) and (a <= c)   )
    then
      begin
        Result := a
      end
        else
          begin
            if (   (b <= a) and (b <= c)   )
              then
                begin
                  Result := b
                end
                  else
                    begin
                      if (   (c <= a) and (c <= b)   )
                        then
                          begin
                            Result := c
                          end
                            else;
                    end;
          end;
end;



procedure TfrmPrincipal.SubMenuAlineacionVerticalVisorArribaClick(Sender: TObject);
begin
  //Alineo el visor del Modulo de Simulacion hacia arriba
  SetAlineacionVerticalVisorSimulacionImagenes('Arriba');
end;



procedure TfrmPrincipal.SetAlineacionHorizontalVisorSimulacionImagenes(aAlign: String);
begin
  //
  if (aAlign = 'Centro')
    then
      begin
        //Valores que inicialmente tenian los panelitos que conforman la mirilla
        //PanelPilar1LenteMirillaSimulacionImagenes.Left:= 192;
        //PanelPilar2LenteMirillaSimulacionImagenes.Left:= 242;
        //PanelPilar3LenteMirillaSimulacionImagenes.Left:= 291;
        //PanelPilar4LenteMirillaSimulacionImagenes.Left:= 343;

        //PanelRayaHorizontalLenteMirillaSimulacionImagenes.Left:= 192;

        //PanelRayitaBordeHorizontal1SimulacionImagenes.Left:= 168;
        //PanelRayitaBordeHorizontal2SimulacionImagenes.Left:= 360;
        //PanelRayitaBordeHorizontal3SimulacionImagenes.Left:= 160;
        //PanelRayitaBordeHorizontal4SimulacionImagenes.Left:= 360;

        //PanelRayitaBordeVertical1SimulacionImagenes.Left:= 168;
        //PanelRayitaBordeVertical2SimulacionImagenes.Left:= 375;
        //PanelRayitaBordeVertical3SimulacionImagenes.Left:= 160;
        //PanelRayitaBordeVertical4SimulacionImagenes.Left:= 375;
        
        //Modifico los submenus del Menu Principal
        SubMenuAlineacionHorizontalVisorIzquierda.Checked:= False;
        SubMenuAlineacionHorizontalVisorCentro.Checked:= True;
        SubMenuAlineacionHorizontalVisorDerecha.Checked:= False;

        SubMenuAlineacionHorizontalVisorIzquierda.Default:= False;
        SubMenuAlineacionHorizontalVisorCentro.Default:= True;
        SubMenuAlineacionHorizontalVisorDerecha.Default:= False;

        //Centro horizontalmente los panelitos que conforman la mirilla
        PanelPilar1LenteMirillaSimulacionImagenes.Left:= 213;
        PanelPilar2LenteMirillaSimulacionImagenes.Left:= 263;
        PanelPilar3LenteMirillaSimulacionImagenes.Left:= 313;
        PanelPilar4LenteMirillaSimulacionImagenes.Left:= 363;

        PanelRayaHorizontalLenteMirillaSimulacionImagenes.Left:= 213;

        PanelRayitaBordeHorizontal1SimulacionImagenes.Left:= 178;
        PanelRayitaBordeHorizontal2SimulacionImagenes.Left:= 383;
        PanelRayitaBordeHorizontal3SimulacionImagenes.Left:= 178;
        PanelRayitaBordeHorizontal4SimulacionImagenes.Left:= 383;

        PanelRayitaBordeVertical1SimulacionImagenes.Left:= 178;
        PanelRayitaBordeVertical2SimulacionImagenes.Left:= 398;
        PanelRayitaBordeVertical3SimulacionImagenes.Left:= 178;
        PanelRayitaBordeVertical4SimulacionImagenes.Left:= 398;

        //Centro los panelitos intermedios (gradiente)
        PanelGradiente01SimulacionImagenes.Left:= 218;
        PanelGradiente02SimulacionImagenes.Left:= 223;
        PanelGradiente03SimulacionImagenes.Left:= 228;
        PanelGradiente04SimulacionImagenes.Left:= 233;
        PanelGradiente05SimulacionImagenes.Left:= 238;
        PanelGradiente06SimulacionImagenes.Left:= 243;
        PanelGradiente07SimulacionImagenes.Left:= 248;
        PanelGradiente08SimulacionImagenes.Left:= 253;
        PanelGradiente09SimulacionImagenes.Left:= 258;

        PanelGradiente11SimulacionImagenes.Left:= 268;
        PanelGradiente12SimulacionImagenes.Left:= 273;
        PanelGradiente13SimulacionImagenes.Left:= 278;
        PanelGradiente14SimulacionImagenes.Left:= 283;
        PanelGradiente15SimulacionImagenes.Left:= 288;
        PanelGradiente16SimulacionImagenes.Left:= 293;
        PanelGradiente17SimulacionImagenes.Left:= 298;
        PanelGradiente18SimulacionImagenes.Left:= 303;
        PanelGradiente19SimulacionImagenes.Left:= 308;

        PanelGradiente21SimulacionImagenes.Left:= 318;
        PanelGradiente22SimulacionImagenes.Left:= 323;
        PanelGradiente23SimulacionImagenes.Left:= 328;
        PanelGradiente24SimulacionImagenes.Left:= 333;
        PanelGradiente25SimulacionImagenes.Left:= 338;
        PanelGradiente26SimulacionImagenes.Left:= 343;
        PanelGradiente27SimulacionImagenes.Left:= 348;
        PanelGradiente28SimulacionImagenes.Left:= 353;
        PanelGradiente29SimulacionImagenes.Left:= 358;
      end
        else
          begin
            if (aAlign = 'Izquierda')
              then
                begin
                  //Modifico los submenus del Menu Principal
                  SubMenuAlineacionHorizontalVisorIzquierda.Checked:= True;
                  SubMenuAlineacionHorizontalVisorCentro.Checked:= False;
                  SubMenuAlineacionHorizontalVisorDerecha.Checked:= False;

                  SubMenuAlineacionHorizontalVisorIzquierda.Default:= True;
                  SubMenuAlineacionHorizontalVisorCentro.Default:= False;
                  SubMenuAlineacionHorizontalVisorDerecha.Default:= False;

                  //Alineo horizontalmente a la izquierda los panelitos que conforman la mirilla
                  PanelPilar1LenteMirillaSimulacionImagenes.Left:= 213 - 170;
                  PanelPilar2LenteMirillaSimulacionImagenes.Left:= 263 - 170;
                  PanelPilar3LenteMirillaSimulacionImagenes.Left:= 313 - 170;
                  PanelPilar4LenteMirillaSimulacionImagenes.Left:= 363 - 170;

                  PanelRayaHorizontalLenteMirillaSimulacionImagenes.Left:= 213 - 170;

                  PanelRayitaBordeHorizontal1SimulacionImagenes.Left:= 178 - 170;
                  PanelRayitaBordeHorizontal2SimulacionImagenes.Left:= 383 - 170;
                  PanelRayitaBordeHorizontal3SimulacionImagenes.Left:= 178 - 170;
                  PanelRayitaBordeHorizontal4SimulacionImagenes.Left:= 383 - 170;

                  PanelRayitaBordeVertical1SimulacionImagenes.Left:= 178 - 170;
                  PanelRayitaBordeVertical2SimulacionImagenes.Left:= 398 - 170;
                  PanelRayitaBordeVertical3SimulacionImagenes.Left:= 178 - 170;
                  PanelRayitaBordeVertical4SimulacionImagenes.Left:= 398 - 170;

                  //Alineo horizontalmente a la izquierda los panelitos intermedios (gradiente)
                  PanelGradiente01SimulacionImagenes.Left:= 218 - 170;
                  PanelGradiente02SimulacionImagenes.Left:= 223 - 170;
                  PanelGradiente03SimulacionImagenes.Left:= 228 - 170;
                  PanelGradiente04SimulacionImagenes.Left:= 233 - 170;
                  PanelGradiente05SimulacionImagenes.Left:= 238 - 170;
                  PanelGradiente06SimulacionImagenes.Left:= 243 - 170;
                  PanelGradiente07SimulacionImagenes.Left:= 248 - 170;
                  PanelGradiente08SimulacionImagenes.Left:= 253 - 170;
                  PanelGradiente09SimulacionImagenes.Left:= 258 - 170;

                  PanelGradiente11SimulacionImagenes.Left:= 268 - 170;
                  PanelGradiente12SimulacionImagenes.Left:= 273 - 170;
                  PanelGradiente13SimulacionImagenes.Left:= 278 - 170;
                  PanelGradiente14SimulacionImagenes.Left:= 283 - 170;
                  PanelGradiente15SimulacionImagenes.Left:= 288 - 170;
                  PanelGradiente16SimulacionImagenes.Left:= 293 - 170;
                  PanelGradiente17SimulacionImagenes.Left:= 298 - 170;
                  PanelGradiente18SimulacionImagenes.Left:= 303 - 170;
                  PanelGradiente19SimulacionImagenes.Left:= 308 - 170;

                  PanelGradiente21SimulacionImagenes.Left:= 318 - 170;
                  PanelGradiente22SimulacionImagenes.Left:= 323 - 170;
                  PanelGradiente23SimulacionImagenes.Left:= 328 - 170;
                  PanelGradiente24SimulacionImagenes.Left:= 333 - 170;
                  PanelGradiente25SimulacionImagenes.Left:= 338 - 170;
                  PanelGradiente26SimulacionImagenes.Left:= 343 - 170;
                  PanelGradiente27SimulacionImagenes.Left:= 348 - 170;
                  PanelGradiente28SimulacionImagenes.Left:= 353 - 170;
                  PanelGradiente29SimulacionImagenes.Left:= 358 - 170;
                end
                  else
                    begin
                      if (aAlign = 'Derecha')
                        then
                          begin
                            //Modifico los submenus del Menu Principal
                            SubMenuAlineacionHorizontalVisorIzquierda.Checked:= False;
                            SubMenuAlineacionHorizontalVisorCentro.Checked:= False;
                            SubMenuAlineacionHorizontalVisorDerecha.Checked:= True;

                            SubMenuAlineacionHorizontalVisorIzquierda.Default:= False;
                            SubMenuAlineacionHorizontalVisorCentro.Default:= False;
                            SubMenuAlineacionHorizontalVisorDerecha.Default:= True;

                            //Alineo horizontalmente a la derecha los panelitos que conforman la mirilla
                            PanelPilar1LenteMirillaSimulacionImagenes.Left:= 213 + 153;
                            PanelPilar2LenteMirillaSimulacionImagenes.Left:= 263 + 153;
                            PanelPilar3LenteMirillaSimulacionImagenes.Left:= 313 + 153;
                            PanelPilar4LenteMirillaSimulacionImagenes.Left:= 363 + 153;

                            PanelRayaHorizontalLenteMirillaSimulacionImagenes.Left:= 213 + 153;

                            PanelRayitaBordeHorizontal1SimulacionImagenes.Left:= 178 + 153;
                            PanelRayitaBordeHorizontal2SimulacionImagenes.Left:= 383 + 153;
                            PanelRayitaBordeHorizontal3SimulacionImagenes.Left:= 178 + 153;
                            PanelRayitaBordeHorizontal4SimulacionImagenes.Left:= 383 + 153;

                            PanelRayitaBordeVertical1SimulacionImagenes.Left:= 178 + 153;
                            PanelRayitaBordeVertical2SimulacionImagenes.Left:= 398 + 153;
                            PanelRayitaBordeVertical3SimulacionImagenes.Left:= 178 + 153;
                            PanelRayitaBordeVertical4SimulacionImagenes.Left:= 398 + 153;

                            //Alineo horizontalmente a la derecha los panelitos intermedios (gradiente)
                            PanelGradiente01SimulacionImagenes.Left:= 218 + 153;
                            PanelGradiente02SimulacionImagenes.Left:= 223 + 153;
                            PanelGradiente03SimulacionImagenes.Left:= 228 + 153;
                            PanelGradiente04SimulacionImagenes.Left:= 233 + 153;
                            PanelGradiente05SimulacionImagenes.Left:= 238 + 153;
                            PanelGradiente06SimulacionImagenes.Left:= 243 + 153;
                            PanelGradiente07SimulacionImagenes.Left:= 248 + 153;
                            PanelGradiente08SimulacionImagenes.Left:= 253 + 153;
                            PanelGradiente09SimulacionImagenes.Left:= 258 + 153;

                            PanelGradiente11SimulacionImagenes.Left:= 268 + 153;
                            PanelGradiente12SimulacionImagenes.Left:= 273 + 153;
                            PanelGradiente13SimulacionImagenes.Left:= 278 + 153;
                            PanelGradiente14SimulacionImagenes.Left:= 283 + 153;
                            PanelGradiente15SimulacionImagenes.Left:= 288 + 153;
                            PanelGradiente16SimulacionImagenes.Left:= 293 + 153;
                            PanelGradiente17SimulacionImagenes.Left:= 298 + 153;
                            PanelGradiente18SimulacionImagenes.Left:= 303 + 153;
                            PanelGradiente19SimulacionImagenes.Left:= 308 + 153;

                            PanelGradiente21SimulacionImagenes.Left:= 318 + 153;
                            PanelGradiente22SimulacionImagenes.Left:= 323 + 153;
                            PanelGradiente23SimulacionImagenes.Left:= 328 + 153;
                            PanelGradiente24SimulacionImagenes.Left:= 333 + 153;
                            PanelGradiente25SimulacionImagenes.Left:= 338 + 153;
                            PanelGradiente26SimulacionImagenes.Left:= 343 + 153;
                            PanelGradiente27SimulacionImagenes.Left:= 348 + 153;
                            PanelGradiente28SimulacionImagenes.Left:= 353 + 153;
                            PanelGradiente29SimulacionImagenes.Left:= 358 + 153;
                          end;
                    end;
          end;

  //*** Parte final de Administracion de alineacion de los visores de la aplicaci�n ***

  //Actualizo la variable indicadora de la alineacion horizontal imperante
  AlineacionHorizontalVisorSimulacionImagenes:= aAlign;

  //Actualizo la informacion del Label de la imagen central (a lo mejor debo incluir cambiarlo de lugar, si el visor de pega mucho)
  //UpdateImageLabelSimulacionImagenes;

  //Guardo la alineaciin horizontal imperante en el fichero de alineacion de los visores
  FicheroAlineacionVisores.SetAlineacionHorizontalSimulacionImagenes(aAlign);

  //Guardo la nueva alineacion en el fichero
  FicheroAlineacionVisores.SalvarAlineacionHorizontalSimulacionImagenes;
end;



procedure TfrmPrincipal.SetAlineacionVerticalVisorSimulacionImagenes(aAlign: String);
begin
  //
  if (aAlign = 'Centro')
    then
      begin
        //Modifico los submenus del Menu Principal
        SubMenuAlineacionVerticalVisorArriba.Checked:= False;
        SubMenuAlineacionVerticalVisorCentro.Checked:= True;
        SubMenuAlineacionVerticalVisorAbajo.Checked:= False;

        SubMenuAlineacionVerticalVisorArriba.Default:= False;
        SubMenuAlineacionVerticalVisorCentro.Default:= True;
        SubMenuAlineacionVerticalVisorAbajo.Default:= False;

        //Centro verticalmente los panelitos que conforman la mirilla
        PanelPilar1LenteMirillaSimulacionImagenes.Top:= 221;
        PanelPilar2LenteMirillaSimulacionImagenes.Top:= 221;
        PanelPilar3LenteMirillaSimulacionImagenes.Top:= 221;
        PanelPilar4LenteMirillaSimulacionImagenes.Top:= 221;

        PanelRayaHorizontalLenteMirillaSimulacionImagenes.Top:= 245;

        PanelRayitaBordeHorizontal1SimulacionImagenes.Top:= 184;
        PanelRayitaBordeHorizontal2SimulacionImagenes.Top:= 184;
        PanelRayitaBordeHorizontal3SimulacionImagenes.Top:= 327;
        PanelRayitaBordeHorizontal4SimulacionImagenes.Top:= 327;

        PanelRayitaBordeVertical1SimulacionImagenes.Top:= 184;
        PanelRayitaBordeVertical2SimulacionImagenes.Top:= 184;
        PanelRayitaBordeVertical3SimulacionImagenes.Top:= 312;
        PanelRayitaBordeVertical4SimulacionImagenes.Top:= 312;

        //Centro verticalmente los panelitos intermedios (gradiente)
        PanelGradiente01SimulacionImagenes.Top:= 236;
        PanelGradiente02SimulacionImagenes.Top:= 236;
        PanelGradiente03SimulacionImagenes.Top:= 236;
        PanelGradiente04SimulacionImagenes.Top:= 236;
        PanelGradiente05SimulacionImagenes.Top:= 236;
        PanelGradiente06SimulacionImagenes.Top:= 236;
        PanelGradiente07SimulacionImagenes.Top:= 236;
        PanelGradiente08SimulacionImagenes.Top:= 236;
        PanelGradiente09SimulacionImagenes.Top:= 236;

        PanelGradiente11SimulacionImagenes.Top:= 236;
        PanelGradiente12SimulacionImagenes.Top:= 236;
        PanelGradiente13SimulacionImagenes.Top:= 236;
        PanelGradiente14SimulacionImagenes.Top:= 236;
        PanelGradiente15SimulacionImagenes.Top:= 236;
        PanelGradiente16SimulacionImagenes.Top:= 236;
        PanelGradiente17SimulacionImagenes.Top:= 236;
        PanelGradiente18SimulacionImagenes.Top:= 236;
        PanelGradiente19SimulacionImagenes.Top:= 236;

        PanelGradiente21SimulacionImagenes.Top:= 236;
        PanelGradiente22SimulacionImagenes.Top:= 236;
        PanelGradiente23SimulacionImagenes.Top:= 236;
        PanelGradiente24SimulacionImagenes.Top:= 236;
        PanelGradiente25SimulacionImagenes.Top:= 236;
        PanelGradiente26SimulacionImagenes.Top:= 236;
        PanelGradiente27SimulacionImagenes.Top:= 236;
        PanelGradiente28SimulacionImagenes.Top:= 236;
        PanelGradiente29SimulacionImagenes.Top:= 236;
      end
        else
          begin
            if (aAlign = 'Arriba')
              then
                begin
                  //Modifico los submenus del Menu Principal
                  SubMenuAlineacionVerticalVisorArriba.Checked:= True;
                  SubMenuAlineacionVerticalVisorCentro.Checked:= False;
                  SubMenuAlineacionVerticalVisorAbajo.Checked:= False;

                  SubMenuAlineacionVerticalVisorArriba.Default:= True;
                  SubMenuAlineacionVerticalVisorCentro.Default:= False;
                  SubMenuAlineacionVerticalVisorAbajo.Default:= False;

                  //Alineo verticalmente hacia arriba los panelitos que conforman la mirilla
                  PanelPilar1LenteMirillaSimulacionImagenes.Top:= 221 - 162;
                  PanelPilar2LenteMirillaSimulacionImagenes.Top:= 221 - 162;
                  PanelPilar3LenteMirillaSimulacionImagenes.Top:= 221 - 162;
                  PanelPilar4LenteMirillaSimulacionImagenes.Top:= 221 - 162;

                  PanelRayaHorizontalLenteMirillaSimulacionImagenes.Top:= 245 - 162;

                  PanelRayitaBordeHorizontal1SimulacionImagenes.Top:= 184 - 162;
                  PanelRayitaBordeHorizontal2SimulacionImagenes.Top:= 184 - 162;
                  PanelRayitaBordeHorizontal3SimulacionImagenes.Top:= 327 - 162;
                  PanelRayitaBordeHorizontal4SimulacionImagenes.Top:= 327 - 162;

                  PanelRayitaBordeVertical1SimulacionImagenes.Top:= 184 - 162;
                  PanelRayitaBordeVertical2SimulacionImagenes.Top:= 184 - 162;
                  PanelRayitaBordeVertical3SimulacionImagenes.Top:= 312 - 162;
                  PanelRayitaBordeVertical4SimulacionImagenes.Top:= 312 - 162;

                  //Alineo verticalmente hacia arriba los panelitos intermedios (gradiente)
                  PanelGradiente01SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente02SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente03SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente04SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente05SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente06SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente07SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente08SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente09SimulacionImagenes.Top:= 236 - 162;

                  PanelGradiente11SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente12SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente13SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente14SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente15SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente16SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente17SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente18SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente19SimulacionImagenes.Top:= 236 - 162;

                  PanelGradiente21SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente22SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente23SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente24SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente25SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente26SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente27SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente28SimulacionImagenes.Top:= 236 - 162;
                  PanelGradiente29SimulacionImagenes.Top:= 236 - 162;
                end
                  else
                    begin
                      if (aAlign = 'Abajo')
                        then
                          begin
                            //Modifico los submenus del Menu Principal
                            SubMenuAlineacionVerticalVisorArriba.Checked:= False;
                            SubMenuAlineacionVerticalVisorCentro.Checked:= False;
                            SubMenuAlineacionVerticalVisorAbajo.Checked:= True;

                            SubMenuAlineacionVerticalVisorArriba.Default:= False;
                            SubMenuAlineacionVerticalVisorCentro.Default:= False;
                            SubMenuAlineacionVerticalVisorAbajo.Default:= True;

                            //Alineo verticalmente hacia bajo los panelitos que conforman la mirilla
                            PanelPilar1LenteMirillaSimulacionImagenes.Top:= 221 + 123;
                            PanelPilar2LenteMirillaSimulacionImagenes.Top:= 221 + 123;
                            PanelPilar3LenteMirillaSimulacionImagenes.Top:= 221 + 123;
                            PanelPilar4LenteMirillaSimulacionImagenes.Top:= 221 + 123;

                            PanelRayaHorizontalLenteMirillaSimulacionImagenes.Top:= 245 + 123;

                            PanelRayitaBordeHorizontal1SimulacionImagenes.Top:= 184 + 123;
                            PanelRayitaBordeHorizontal2SimulacionImagenes.Top:= 184 + 123;
                            PanelRayitaBordeHorizontal3SimulacionImagenes.Top:= 327 + 123;
                            PanelRayitaBordeHorizontal4SimulacionImagenes.Top:= 327 + 123;

                            PanelRayitaBordeVertical1SimulacionImagenes.Top:= 184 + 123;
                            PanelRayitaBordeVertical2SimulacionImagenes.Top:= 184 + 123;
                            PanelRayitaBordeVertical3SimulacionImagenes.Top:= 312 + 123;
                            PanelRayitaBordeVertical4SimulacionImagenes.Top:= 312 + 123;

                            //Alineo verticalmente hacia bajo los panelitos intermedios (gradiente)
                            PanelGradiente01SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente02SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente03SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente04SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente05SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente06SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente07SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente08SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente09SimulacionImagenes.Top:= 236 + 123;

                            PanelGradiente11SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente12SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente13SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente14SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente15SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente16SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente17SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente18SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente19SimulacionImagenes.Top:= 236 + 123;

                            PanelGradiente21SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente22SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente23SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente24SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente25SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente26SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente27SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente28SimulacionImagenes.Top:= 236 + 123;
                            PanelGradiente29SimulacionImagenes.Top:= 236 + 123;
                          end;
                    end;
          end;

  //*** Parte final de Administracion de alineacion de los visores de la aplicaci�n ***

  //Actualizo la variable indicadora de la alineacion vertical imperante
  AlineacionVerticalVisorSimulacionImagenes:= aAlign;

  //Actualizo la informacion del Label de la imagen central (a lo mejor debo incluir cambiarlo de lugar, si el visor de pega mucho hacia arriba)
  //UpdateImageLabelSimulacionImagenes;

  //Guardo la alineaciin vertical imperante en el fichero de alineacion de los visores
  FicheroAlineacionVisores.SetAlineacionVerticalSimulacionImagenes(aAlign);

  //Guardo la nueva alineacion en el fichero
  FicheroAlineacionVisores.SalvarAlineacionVerticalSimulacionImagenes;
end;



procedure TfrmPrincipal.SubMenuAlineacionHorizontalVisorIzquierdaClick(
  Sender: TObject);
begin
  //Alineo el visor del Modulo de Simulacion a la izquierda
  SetAlineacionHorizontalVisorSimulacionImagenes('Izquierda');
end;



procedure TfrmPrincipal.SubMenuAlineacionHorizontalVisorCentroClick(
  Sender: TObject);
begin
  //Alineo horizontalmente el visor del Modulo de Simulacion en el centro
  SetAlineacionHorizontalVisorSimulacionImagenes('Centro');
end;



procedure TfrmPrincipal.SubMenuAlineacionHorizontalVisorDerechaClick(
  Sender: TObject);
begin
  //Alineo el visor del Modulo de Simulacion a la derecha
  SetAlineacionHorizontalVisorSimulacionImagenes('Derecha');
end;



procedure TfrmPrincipal.SubMenuAlineacionVerticalVisorCentroClick(
  Sender: TObject);
begin
  //Alineo verticalmente el visor del Modulo de Simulacion en el centro
  SetAlineacionVerticalVisorSimulacionImagenes('Centro');
end;



procedure TfrmPrincipal.SubMenuAlineacionVerticalVisorAbajoClick(
  Sender: TObject);
begin
  //Alineo verticalmente el visor del Modulo de Simulacion hacia abajo
  SetAlineacionVerticalVisorSimulacionImagenes('Abajo');
end;



procedure TfrmPrincipal.SetTipoVisorSimulacionImagenes(aKind: String);
begin
  //
  if (aKind = 'Simple')
    then
      begin
        //Actualizo los submenus de tipo de visor
        SubMenuVisorTipoSimple.Checked:= True;
        SubMenuVisorTipoComplejo.Checked:= False;

        SubMenuVisorTipoSimple.Default:= True;
        SubMenuVisorTipoComplejo.Default:= False;

        //Escondo los panelitos intermedios (gradiente)
        PanelGradiente01SimulacionImagenes.Visible:= False;
        PanelGradiente02SimulacionImagenes.Visible:= False;
        PanelGradiente03SimulacionImagenes.Visible:= False;
        PanelGradiente04SimulacionImagenes.Visible:= False;
        PanelGradiente05SimulacionImagenes.Visible:= False;
        PanelGradiente06SimulacionImagenes.Visible:= False;
        PanelGradiente07SimulacionImagenes.Visible:= False;
        PanelGradiente08SimulacionImagenes.Visible:= False;
        PanelGradiente09SimulacionImagenes.Visible:= False;

        PanelGradiente11SimulacionImagenes.Visible:= False;
        PanelGradiente12SimulacionImagenes.Visible:= False;
        PanelGradiente13SimulacionImagenes.Visible:= False;
        PanelGradiente14SimulacionImagenes.Visible:= False;
        PanelGradiente15SimulacionImagenes.Visible:= False;
        PanelGradiente16SimulacionImagenes.Visible:= False;
        PanelGradiente17SimulacionImagenes.Visible:= False;
        PanelGradiente18SimulacionImagenes.Visible:= False;
        PanelGradiente19SimulacionImagenes.Visible:= False;

        PanelGradiente21SimulacionImagenes.Visible:= False;
        PanelGradiente22SimulacionImagenes.Visible:= False;
        PanelGradiente23SimulacionImagenes.Visible:= False;
        PanelGradiente24SimulacionImagenes.Visible:= False;
        PanelGradiente25SimulacionImagenes.Visible:= False;
        PanelGradiente26SimulacionImagenes.Visible:= False;
        PanelGradiente27SimulacionImagenes.Visible:= False;
        PanelGradiente28SimulacionImagenes.Visible:= False;
        PanelGradiente29SimulacionImagenes.Visible:= False;
      end
        else
          begin
            if (aKind = 'Complejo')
              then
                begin
                  //Actualizo los submenus de tipo de visor
                  SubMenuVisorTipoSimple.Checked:= False;
                  SubMenuVisorTipoComplejo.Checked:= True;

                  SubMenuVisorTipoSimple.Default:= False;
                  SubMenuVisorTipoComplejo.Default:= True;

                  //Muestro los panelitos intermedios (gradiente)
                  PanelGradiente01SimulacionImagenes.Visible:= True;
                  PanelGradiente02SimulacionImagenes.Visible:= True;
                  PanelGradiente03SimulacionImagenes.Visible:= True;
                  PanelGradiente04SimulacionImagenes.Visible:= True;
                  PanelGradiente05SimulacionImagenes.Visible:= True;
                  PanelGradiente06SimulacionImagenes.Visible:= True;
                  PanelGradiente07SimulacionImagenes.Visible:= True;
                  PanelGradiente08SimulacionImagenes.Visible:= True;
                  PanelGradiente09SimulacionImagenes.Visible:= True;

                  PanelGradiente11SimulacionImagenes.Visible:= True;
                  PanelGradiente12SimulacionImagenes.Visible:= True;
                  PanelGradiente13SimulacionImagenes.Visible:= True;
                  PanelGradiente14SimulacionImagenes.Visible:= True;
                  PanelGradiente15SimulacionImagenes.Visible:= True;
                  PanelGradiente16SimulacionImagenes.Visible:= True;
                  PanelGradiente17SimulacionImagenes.Visible:= True;
                  PanelGradiente18SimulacionImagenes.Visible:= True;
                  PanelGradiente19SimulacionImagenes.Visible:= True;

                  PanelGradiente21SimulacionImagenes.Visible:= True;
                  PanelGradiente22SimulacionImagenes.Visible:= True;
                  PanelGradiente23SimulacionImagenes.Visible:= True;
                  PanelGradiente24SimulacionImagenes.Visible:= True;
                  PanelGradiente25SimulacionImagenes.Visible:= True;
                  PanelGradiente26SimulacionImagenes.Visible:= True;
                  PanelGradiente27SimulacionImagenes.Visible:= True;
                  PanelGradiente28SimulacionImagenes.Visible:= True;
                  PanelGradiente29SimulacionImagenes.Visible:= True;
                end;
          end;

//*** Parte final de Administracion de tipos de visores de la aplicaci�n ***

  //Actualizo la variable de tipo de visor
  TipoDeVisorSimulacionImagenes:= aKind;

  //Actualizo la informacion del Label de la imagen central (a lo mejor debo incluir cambiarlo de lugar, si el visor de pega mucho hacia arriba)
  //UpdateImageLabelSimulacionImagenes;

  //Guardo el tipo de visor imperante en el fichero de tipos de visores
  FicheroTipoVisores.SetTipoVisorSimulacionImagenes(aKind);

  //Guardo el nuevo tipo de visor en el fichero
  FicheroTipoVisores.SalvarTipoVisorSimulacionImagenes;
end;



procedure TfrmPrincipal.SubMenuVisorTipoSimpleClick(Sender: TObject);
begin
  //Instauro el Visor en modalidad simple
  SetTipoVisorSimulacionImagenes('Simple');
end;



procedure TfrmPrincipal.SubMenuVisorTipoComplejoClick(Sender: TObject);
begin
  //Instauro el Visor en modalidad compleja
  SetTipoVisorSimulacionImagenes('Complejo');
end;



procedure TfrmPrincipal.chkAumentosSimulacionImagenesClick(
  Sender: TObject);
begin
  ActualizarMostrarSimulacionImagenes;
end;



procedure TfrmPrincipal.SubMenuVerColorRealClick(Sender: TObject);
begin
  //Actuo directamente sobre el componente de la interfaz de simulacion
  rbtnColorRealSimulacionImagenes.Checked:= SubMenuVerColorReal.Checked;

  //Garantizo que se marque la opuesto en el otro, al este variar
  if (SubMenuVerColorReal.Checked = True)
    then
      begin
        rbtnTonosGrisesSimulacionImagenes.Checked:= False;
      end
        else
          begin
            rbtnTonosGrisesSimulacionImagenes.Checked:= True;
          end;
end;



procedure TfrmPrincipal.SubMenuVerTonosGrisesClick(Sender: TObject);
begin
  //Actuo directamente sobre el componente de la interfaz de simulacion
  rbtnTonosGrisesSimulacionImagenes.Checked:= SubMenuVerTonosGrises.Checked;

  //Garantizo que se marque la opuesto en el otro, al este variar
  if (SubMenuVerTonosGrises.Checked = True)
    then
      begin
        rbtnColorRealSimulacionImagenes.Checked:= False;
      end
        else
          begin
            rbtnColorRealSimulacionImagenes.Checked:= True;
          end;
end;



procedure TfrmPrincipal.SubMenuVerNegativoClick(Sender: TObject);
begin
  //Actuo directamente sobre el componente de la interfaz de simulacion
  chkNegativoSimulacionImagenes.Checked:= SubMenuVerNegativo.Checked;
end;



procedure TfrmPrincipal.SubMenuVerAumentosClick(Sender: TObject);
begin
  //Actuo directamente sobre el componente de la interfaz de simulacion
  chkAumentosSimulacionImagenes.Checked:= SubMenuVerAumentos.Checked;
end;



procedure TfrmPrincipal.SubMenuVerMedicionesClick(Sender: TObject);
begin
  //Actuo directamente sobre el componente de la interfaz de simulacion
  chkMedicionesSimulacionImagenes.Checked:= SubMenuVerMediciones.Checked;
end;



procedure TfrmPrincipal.SubMenuVerVisorClick(Sender: TObject);
begin
  //Actuo directamente sobre el componente de la interfaz de simulacion
  chkMirillaSimulacionImagenes.Checked:= SubMenuVerVisor.Checked;
end;



procedure TfrmPrincipal.SubMenuColorEtiquetaEstandardClick(Sender: TObject);
begin
  //Pongo la variable de modalidad de config. de color en automatico
  ColorEstandardEtiquetaSimulacionImagenes:= True;

  SubMenuColorEtiquetaEstandard.Checked:= True;
  SubMenuColorEtiquetaPersonalizado.Checked:= False;

  SubMenuColorEtiquetaEstandard.Default:= True;
  SubMenuColorEtiquetaPersonalizado.Default:= False;

  //Actualizo la etiqueta del modulo de simulacion
  UpdateImageLabelSimulacionImagenes
end;



procedure TfrmPrincipal.SubMenuColorEtiquetaPersonalizadoClick(
  Sender: TObject);
begin
  //Pongo la variable de modalidad de config. de color en personalizado
  ColorEstandardEtiquetaSimulacionImagenes:= False;

  SubMenuColorEtiquetaEstandard.Checked:= False;
  SubMenuColorEtiquetaPersonalizado.Checked:= True;

  SubMenuColorEtiquetaEstandard.Default:= False;
  SubMenuColorEtiquetaPersonalizado.Default:= True;

  //Defino el color de las letras de la etiqueta (ImageLabel)
  if (ColorDialogSimulacionImagenes.Execute)
    then
      begin
        ATImageBoxSimulacionImagenes.ImageLabel.Font.Color:= ColorDialogSimulacionImagenes.Color;
      end;  
  
end;



procedure TfrmPrincipal.SubMenuVisorColorAutomaticoClick(Sender: TObject);
begin
  //Pongo la variable de modalidad de config. de color en personalizado
  ColorAutomatizadoVisorSimulacionImagenes:= True;

  SubMenuVisorColorAutomatico.Checked:= True;
  SubMenuVisorColorPersonalizado.Checked:= False;

  SubMenuVisorColorAutomatico.Default:= True;
  SubMenuVisorColorPersonalizado.Default:= False;

  //Actualizo la imagen y componentes relacionados
  ActualizarVisionSimulacionImagenes;
end;



procedure TfrmPrincipal.SubMenuVisorColorPersonalizadoClick(Sender: TObject);
begin
  //Pongo la variable de modalidad de config. de color en personalizado
  ColorAutomatizadoVisorSimulacionImagenes:= False;

  SubMenuVisorColorAutomatico.Checked:= False;
  SubMenuVisorColorPersonalizado.Checked:= True;

  SubMenuVisorColorAutomatico.Default:= False;
  SubMenuVisorColorPersonalizado.Default:= True;


  //Defino el color del visor
  if (ColorDialogSimulacionImagenes.Execute)
    then
      begin
        //Guardo el color seleccionado en la variable global
        ColorPersonalizadoVisorSimulacionImagenes:= ColorDialogSimulacionImagenes.Color;

        //Coloreo el visor a partir de la variable global
        ColorearMirillaSimulacionImagenes(ColorPersonalizadoVisorSimulacionImagenes);
      end;
end;



procedure TfrmPrincipal.SubMenuEdicionAmpliarImagenXXXClick(Sender: TObject);
begin
  if (lblbtnZoomInSimulacionImagenes.Enabled = True)
    then
      begin
        //Ejecuto el SpeedButton de ZoomIn
        lblbtnZoomInSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.SubMenuEdicionAchicarImagenXXXClick(Sender: TObject);
begin
  if (lblbtnZoomOutSimulacionImagenes.Enabled = True)
    then
      begin
        //Ejecuto el SpeedButton de ZoomOut
        lblbtnZoomOutSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.SubMenuEdicionCapturaDeImagenXXXClick(
  Sender: TObject);
begin
  if (lblbtnHerramientaFotografiarSimulacionImagenes.Enabled = True)
    then
      begin
        //Ejecuto el SpeedButton de Captura de imagen
        lblbtnHerramientaFotografiarSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.SpeedButtonLimpiarSimulacionImagenesClick(
  Sender: TObject);
begin
  //Ejecuto el LabelButton de Limpiar Modulo de Simulacion
  lblbtnLimpiarSimulacionImagenes.Click;
end;



procedure TfrmPrincipal.SubMenuGuardarClick(Sender: TObject);
begin
  //Ejecuto el SpeedButton de salvar
  if (SpeedButtonSalvarArchivoSimulacionImagenes.Enabled = True)
    then
      begin
        SpeedButtonSalvarArchivoSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.SubMenuGuardarComoClick(Sender: TObject);
var
   //Sistema Aravil CAB Component
   aCabWr: TSTCabWriter;
begin
  //Le cambio el filter al SaveDialog de Simulacion
  SaveDialogSimulacionImagenes.FileName:= NombreUtilDelArchivoAbiertoSimulacionImagenes;
  SaveDialogSimulacionImagenes.Filter:= 'Archivos de Simulaci�n (*.SIM)';
  SaveDialogSimulacionImagenes.DefaultExt := 'SIM';

  //Cambio el cursor (trabajando)
  Cursor := crHourGlass;

  //*** Utilizando el sistema Aravil CAB Component ***
  //Creo el componente de compresi�n
  aCabWr := TSTCabWriter.Create(nil);

  //Especifico el tipo de compresi�n
  aCabWr.CompressionType := cctMsZip;
  
  

   //Ejecuto el dialogo de salva
   if (SaveDialogSimulacionImagenes.Execute)
     then
       begin //Dialogo de salva
         //Le especifico el lugar y nombre del fichero *.sim a salvar (Sistema ZipTV)
         //MakeCabSimulacionImagenes.ArchiveFile := SaveDialogSimulacionImagenes.FileName;

         //Le especifico el lugar y nombre del fichero *.sim a salvar (Sistema Aravil CAB Component)
         aCabWr.Open(SaveDialogSimulacionImagenes.FileName);
         

{
         //Dispongo los atributos necesarios (Sistema ZipTV)
         MakeCabSimulacionImagenes.DateAttribute := daFileDate; // default value
         MakeCabSimulacionImagenes.StoredDirNames := sdRelative; // default value
         MakeCabSimulacionImagenes.CompressMethod := cmDeflate; // default value
         MakeCabSimulacionImagenes.RecurseDirs := False; // default = False
         MakeCabSimulacionImagenes.Switch := swAdd;            // default value
         //MakeCab1.StoreEmptySubDirs := False;     // default value
         //MakeCab1.EncryptHeaders := CheckBox1.Checked; // default = False


         //Limpio (Sistema ZipTV)
         MakeCabSimulacionImagenes.ExcludeSpec.Clear();
         MakeCabSimulacionImagenes.FileSpec.Clear();
}


         //En dependencia del tipo de archivo abierto
         if (ExtensionDelArchivoAbiertoSimulacionImagenes = 'sim')
           then
             begin //Archivo sim abierto
               //Le agrego la imagen bmp guardada en archivos temporales de la libreria, al archivo SIM (Sistema ZipTV)
               //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\YourBmpHere.BMP');

               //Le agrego la imagen bmp guardada en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
               aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\YourBmpHere.BMP', 'YourBmpHere.BMP');




               //Creo un archivo para el zoom
               FicheroZoomImagen:= TFicheroZoomImagen.New;

               //Cargo un fichero desde los temporales de la libreria, para que no siga dando error (out of bounds)
               FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

               //Relleno el fichero con el zoom de la imagen
               FicheroZoomImagen.SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes( IntToStr(AumentoSimulacionImagenes) );

               //Salvo el fichero en archivos temporales de la libreria
               FicheroZoomImagen.SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

               //Libero el archivo
               FicheroZoomImagen.Free;

               //Le agrego el archivo de zoom guardado en archivos temporales de la libreria, al archivo SIM (Sistema ZipTV)
               //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

               //Le agrego el archivo de zoom guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
               aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt', 'Zoom.txt');




                //Creo un fichero de comentarios
                FicheroComentarios:= TFicheroComentarios.New;

                //Cargo un fichero de comentarios desde los temporales de la libreria, para que no siga dando error (out of bounds)
                FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Commentaries.txt');

                //Relleno el fichero con los comentarios de la imagen
                FicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(ComentariosSimulacionImagenes);

                //Salvo el fichero en archivos temporales de la libreria
                FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt');

                //Libero el archivo de comentarios
                FicheroComentarios.Free;

                //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema ZipTV)
                //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt');

                //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
                aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt', 'Commentaries.txt');
             end   //Fin de archivo sim abierto
               else
                 begin //Archivos bmp o jpg abiertos
                   //Le agrego la imagen bmp guardada en archivos temporales al archivo SIM (Sistema ZipTV)
                   //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

                   //Le agrego la imagen bmp guardada en archivos temporales al archivo SIM (Sistema Aravil CAB Component)
                   aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP', 'YourBmpHere.BMP');




                   //Creo un archivo para el zoom
                   FicheroZoomImagen:= TFicheroZoomImagen.New;

                   //Cargo un fichero desde los temporales, para que no siga dando error (out of bounds)
                   FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

                   //Relleno el fichero con el zoom de la imagen
                   FicheroZoomImagen.SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes( IntToStr(AumentoSimulacionImagenes) );

                   //Salvo el fichero en archivos temporales
                   FicheroZoomImagen.SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

                   //Libero el archivo
                   FicheroZoomImagen.Free;

                   //Le agrego el archivo de zoom guardado en archivos temporales al archivo SIM (Sistema ZipTV)
                   //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

                   //Le agrego el archivo de zoom guardado en archivos temporales al archivo SIM (Sistema Aravil CAB Component)
                   aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt', 'Zoom.txt');




                    //Creo un fichero de comentarios
                    FicheroComentarios:= TFicheroComentarios.New;

                    //Cargo un fichero de comentarios desde los temporales, para que no siga dando error (out of bounds)
                    //FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'TempFiles\Commentaries.txt');

                    //Relleno el fichero con los comentarios de la imagen (vacios, por supuesto)
                    FicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(TStringList(MemoComentariosSimulacionImagenes.Lines));

                    //Salvo el fichero en archivos temporales
                    FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt');

                    //Libero el archivo de comentarios
                    FicheroComentarios.Free;

                    //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema ZipTV)
                    //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt');

                    //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
                    aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt', 'Commentaries.txt');
                 end;  //Fin de archivos bmp o jpg abiertos

{
         //ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt

         // ****************************************************************
         // NOTE: for a better understanding of how the Attributes property
         // works with file attributes see demo demos\filescan\fs_demo.dpr.
         // ****************************************************************

         // See the Attributes property in the object inspector
         // Set MakeCab1 Attributes property by calling the SetAttribute method
         MakeCabSimulacionImagenes.SetAttribute(fsZeroAttr, True); // default
         MakeCabSimulacionImagenes.SetAttribute(fsArchive, True); // default
         MakeCabSimulacionImagenes.SetAttribute(fsDirectory, True); // default = False
         MakeCabSimulacionImagenes.SetAttribute(fsHidden, True); // default = False
         MakeCabSimulacionImagenes.SetAttribute(fsReadOnly, True); // default
         MakeCabSimulacionImagenes.SetAttribute(fsSysFile, True); // default = False

         // See the AttributesEx property in teh object inspector
         // Set the AttributesEx property by calling the SetAttributeEx method.
         // Exclude none
         MakeCabSimulacionImagenes.SetAttributeEx(fsZeroAttr, False); // default
         MakeCabSimulacionImagenes.SetAttributeEx(fsArchive, False); // default
         MakeCabSimulacionImagenes.SetAttributeEx(fsDirectory, False); // default
         MakeCabSimulacionImagenes.SetAttributeEx(fsHidden, False); // default
         MakeCabSimulacionImagenes.SetAttributeEx(fsReadOnly, False); // default
         MakeCabSimulacionImagenes.SetAttributeEx(fsSysFile, False); // default

         // ***********************************
         // Call the Compress method
         // ***********************************
   
         MakeCabSimulacionImagenes.Compress();
         //FilesCompressed := MakeCabSimulacionImagenes.Compress();
         //ShowMessage('Files Compressed: ' + IntToStr(FilesCompressed));
}


  //Cierro el fichero comprimido (Sistema Aravil CAB Component)
  aCabWr.Close;

  //Libero el componente de compresi�n (Sistema Aravil CAB Component)
  aCabWr.Free;

          //Si salv� hacia la Biblioteca Interna
          if (   ExtractFilePath(SaveDialogSimulacionImagenes.FileName) = (ExtractFilePath(Application.ExeName) + 'Library\')   )
            then
              begin
                //Actualizo el FileListBox
                FileListBoxSimulacionImagenes.Update;
              end;
                  


          //Verifico si hay al menos un archivo en el FileListBox (Biblioteca Interna)
          if (FileListBoxSimulacionImagenes.Count <> 0)
            then
              begin
                //Habilito el LabelButton
                lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= True;
              end
                else
                  begin
                    //Deshabilito el LabelButton
                    lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= False;
                  end;
                   


         Cursor := crDefault;
         //If frmErrorMsgs._ListView1.Items.Count > 0 Then     frmErrorMsgs.ShowModal();
       end;  //Fin de dialogo de salva
end;



procedure TfrmPrincipal.SpeedButtonSalvarArchivoSimulacionImagenesClick(Sender: TObject);
var
   //Sistema Aravil CAB Component
   aCabWr: TSTCabWriter;
begin
  //Cambio el cursor (trabajando)
  Cursor := crHourGlass;

  //*** Utilizando el sistema Aravil CAB Component ***
  //Creo el componente de compresi�n
  aCabWr := TSTCabWriter.Create(nil);

  //Especifico el tipo de compresi�n
  aCabWr.CompressionType := cctMsZip;

  //Debo salvar hacia la misma direccion desde donde abr� el archivo, rescribi�ndolo sin preguntar
  //Le especifico el lugar y nombre del fichero *.sim a salvar (Sistema Aravil CAB Component)
  aCabWr.Open(NombreEnteroDelArchivoAbiertoSimulacionImagenes);
         

  //En dependencia del tipo de archivo abierto
  if (ExtensionDelArchivoAbiertoSimulacionImagenes = 'sim')
    then
      begin //Archivo sim abierto
        //Le agrego la imagen bmp guardada en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
        aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\YourBmpHere.BMP', 'YourBmpHere.BMP');

        

        //Creo un archivo para el zoom
        FicheroZoomImagen:= TFicheroZoomImagen.New;

        //Cargo un fichero desde los temporales de la libreria, para que no siga dando error (out of bounds)
        FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

        //Relleno el fichero con el zoom de la imagen
        FicheroZoomImagen.SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes( IntToStr(AumentoSimulacionImagenes) );

        //Salvo el fichero en archivos temporales de la libreria
        FicheroZoomImagen.SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

        //Libero el archivo
        FicheroZoomImagen.Free;

        //Le agrego el archivo de zoom guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
        aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt', 'Zoom.txt');




        //Creo un fichero de comentarios
        FicheroComentarios:= TFicheroComentarios.New;

        //Cargo un fichero de comentarios desde los temporales de la libreria, para que no siga dando error (out of bounds)
        FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Commentaries.txt');

        //Relleno el fichero con los comentarios de la imagen
        FicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(ComentariosSimulacionImagenes);

        //Salvo el fichero en archivos temporales de la libreria
        FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt');

        //Libero el archivo de comentarios
        FicheroComentarios.Free;

        //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
        aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt', 'Commentaries.txt');
      end;   //Fin de archivo sim abierto

{
        else
          begin //Archivos bmp o jpg abiertos
            //Le agrego la imagen bmp guardada en archivos temporales al archivo SIM (Sistema Aravil CAB Component)
            aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP', 'YourBmpHere.BMP');




            //Creo un archivo para el zoom
            FicheroZoomImagen:= TFicheroZoomImagen.New;

            //Cargo un fichero desde los temporales, para que no siga dando error (out of bounds)
            FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

            //Relleno el fichero con el zoom de la imagen
            FicheroZoomImagen.SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes( IntToStr(AumentoSimulacionImagenes) );

            //Salvo el fichero en archivos temporales
            FicheroZoomImagen.SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

            //Libero el archivo
            FicheroZoomImagen.Free;

            //Le agrego el archivo de zoom guardado en archivos temporales al archivo SIM (Sistema Aravil CAB Component)
            aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt', 'Zoom.txt');



            
            //Creo un fichero de comentarios
            FicheroComentarios:= TFicheroComentarios.New;

            //Relleno el fichero con los comentarios de la imagen (vacios, por supuesto)
            FicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(TStringList(MemoComentariosSimulacionImagenes.Lines));

            //Salvo el fichero en archivos temporales
            FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt');

            //Libero el archivo de comentarios
            FicheroComentarios.Free;

            //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
            aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt', 'Commentaries.txt');
          end;  //Fin de archivos bmp o jpg abiertos

}
  //Cierro el fichero comprimido (Sistema Aravil CAB Component)
  aCabWr.Close;

  //Libero el componente de compresi�n (Sistema Aravil CAB Component)
  aCabWr.Free;


  
  //Si salv� hacia la Biblioteca Interna
  if (   ExtractFilePath(SaveDialogSimulacionImagenes.FileName) = (ExtractFilePath(Application.ExeName) + 'Library\')   )
    then
      begin
        //Actualizo el FileListBox
        FileListBoxSimulacionImagenes.Update;
      end;



  //Verifico si hay al menos un archivo en el FileListBox (Biblioteca Interna)
  if (FileListBoxSimulacionImagenes.Count <> 0)
    then
      begin
        //Habilito el LabelButton
        lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= True;
      end
        else
          begin
            //Deshabilito el LabelButton
            lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= False;
          end;



   //Pongo el cursor normal
   Cursor := crDefault;
end;



procedure TfrmPrincipal.CargarImagenDesdeLibreria;
begin
  //
end;



procedure TfrmPrincipal.ExtraerFicheroSIM(aPath: AnsiString);
var
   aCabRd: TSTCabReader;
   //FilesExtracted: Integer;
begin
  //*** Utilizando el sistema Aravil CAB Component ***
  //Creo el componente de descompresi�n
  aCabRd := TSTCabReader.Create(nil);

  //Le paso el nombre del archivo a descompactar  (Sistema ZipTV)
  //UnCabSimulacionImagenes.ArchiveFile := aPath;




{
  //Estipulo las propiedades (Sistema ZipTV)
	UnCabSimulacionImagenes.OverwriteMode := omOverwrite;
  UnCabSimulacionImagenes.ConfirmOverwrites := False; // default = False
  UnCabSimulacionImagenes.RecurseDirs := False; // default = False
  UnCabSimulacionImagenes.UseStoredDirs := True;

  UnCabSimulacionImagenes.FileSpec.Clear();

  //Especifico que extraiga todo el contenido en el compactado (Sistema ZipTV)
  UnCabSimulacionImagenes.FileSpec.Add('*');     // *.* = extract all

  //Espedifico el directorio de extraccion (archivos temporales de la biblioteca) (Sistema ZipTV)
  //UnCabSimulacionImagenes.ExtractDir := ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + NombreArchivoAbiertoSimulacionImagenes + '\';
  UnCabSimulacionImagenes.ExtractDir := ExtractFilePath(Application.ExeName) + 'Library\TempFiles\';
}


  //Extraigo si existe el directorio de extraccion
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\')   // if the directory exists then extract
    Then
      begin
        //FilesExtracted := UnCabSimulacionImagenes.Extract();
        //ShowMessage('Archivos extraidos: ' + IntToStr(FilesExtracted));

        //Borro el archivo de comentarios que ya estaba all� (daba bateos con info mostrada en Memo)
        DeleteFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt');

        //Le paso el nombre del archivo a descompactar y extraigo (Sistema Aravil CAB Component)
        aCabRd.ExtractFiles(aPath, ExtractFilePath(Application.ExeName) + 'Library\TempFiles\');
      end
        else
          begin
            ShowMessage('Directorio de extracci�n no definido.');
            Exit;
          end;
end;



procedure TfrmPrincipal.SpeedButtonAcercaDeSimOpticSimulacionImagenesClick(
  Sender: TObject);
begin
  frmAcercaDe.Position:= poDesktopCenter;
  PlaySound(pChar('SYSTEMEXCLAMATION'), 0, SND_ASYNC);
  frmAcercaDe.ShowModal;
end;



procedure TfrmPrincipal.CargarArchivoSimDesdeLibreriaSimulacionImagenes(Sender: TObject);
Var
  i: Integer;

  ArchivoEnteroAbierto: AnsiString;
  CaminoDelArchivoAbierto: AnsiString;
  NombreEnteroDelArchivoAbierto: AnsiString;
  NombreDelArchivoAbierto: AnsiString;

  ExtensionDelArchivoAbierto: AnsiString;
  NombreUtilDelArchivoAbierto: AnsiString;

  MyBMP  : TBitmap;
  BitmapEncriptado : TBitmap;

  Label Salida;
  
begin
  //Recorro desde el primero hasta el �ltimo archivo, por si hay alguno selecionado
  for i:= 0 to FileListBoxSimulacionImagenes.Count - 1 do
    begin
      //Compruebo si est� seleccionado
      if (FileListBoxSimulacionImagenes.Selected[i] = True)
        then
          begin //Est� seleccionado
            //Copio la direccion entera al archivo abierto
            ArchivoEnteroAbierto:= FileListBoxSimulacionImagenes.FileName;

            //Le extraigo el camino de acceso al archivo abierto
            CaminoDelArchivoAbierto:= ExtractFilePath(FileListBoxSimulacionImagenes.FileName);

            //Obtengo el nombre entero del archivo abierto (junto con la extension)
            NombreEnteroDelArchivoAbierto:= QuitaEn(ArchivoEnteroAbierto, CaminoDelArchivoAbierto);

            //Obtengo el nombre del archivo abierto (sin la extension)
            NombreDelArchivoAbierto:=  QuitaEn(NombreEnteroDelArchivoAbierto, AnsiRightStr(NombreEnteroDelArchivoAbierto, 3 + 1));


            //*** Verificamos si el archivo abierto es de extension *.sim, *.bmp o *.jpg
            if (  LowerCase( AnsiRightStr(NombreEnteroDelArchivoAbierto, 3) ) = 'sim'   )
              then
                begin //Formato *.SIM
                  //Obtengo la extension del archivo abierto
                  ExtensionDelArchivoAbierto:= 'sim';

                  //En este caso la parte util coincide con el nombre
                  NombreUtilDelArchivoAbierto:= NombreDelArchivoAbierto;
                    
                  //Procedemos a extraer la informacion hacia los archivos temporales de la biblioteca
                  ExtraerFicheroSIM(ArchivoEnteroAbierto);

                  //Verifico el formato del archivo interior (si est�)
                  if (   FileExists(   LowerCase(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp')   ) = True   )
                    then
                      begin  //Formato bmp de la imagen interior
                        //Creo un fichero de zoom
                        FicheroZoomImagen:= TFicheroZoomImagen.New;

                        //Cargo el fichero de zoom
                        FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Zoom.txt');

                        //Verifico que no haya lios con el aumento a partir del fichero interior de aumento
                        if (FicheroZoomImagen.DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes <> 'Error')
                          then
                            begin //Todo ok con el aumento a partir del fichero interior de aumento
                              //Determino el aumento a partir del fichero interior de aumento y lo guardo en la variable global
                              AumentoSimulacionImagenes:= StrToInt(FicheroZoomImagen.DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes);

                              //Muestro el aumento al usuario en el Label correspondiente
                              lblValorAumentoOpticoSimulacionImagenes.Caption:= IntToStr(AumentoSimulacionImagenes);
                                                            
                              //Creo un fichero de comentarios
                              FicheroComentarios:= TFicheroComentarios.New;

                              //Cargo el fichero de comentarios
                              FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Commentaries.txt');

                              //Determino los comentarios a partir del fichero interior de comentarios y lo guardo en la variable global
                              ComentariosSimulacionImagenes:= FicheroComentarios.DeterminarComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes;

                              //Limpio el Memo de comentarios
                              MemoComentariosSimulacionImagenes.lines.Clear;

                              //Refresco el Memo de comentarios
                              MemoComentariosSimulacionImagenes.Refresh;


                              //Muestro los comentarios en su Memo correspondiente
                              MemoComentariosSimulacionImagenes.Lines:= ComentariosSimulacionImagenes;

                              //Libero memoria del fichero de comentarios
                              FicheroComentarios.Free;



                              //Guardo la direccion entera al archivo abierto en la variable global
                              ArchivoEnteroAbiertoSimulacionImagenes:= ArchivoEnteroAbierto;

                              //Guardo el camino de acceso al archivo abierto en la variable global
                              CaminoDelArchivoAbiertoSimulacionImagenes:= CaminoDelArchivoAbierto;

                              //Guardo el nombre entero del archivo abierto en la variable global
                              NombreEnteroDelArchivoAbiertoSimulacionImagenes:= NombreEnteroDelArchivoAbierto;

                              //Guardo el nombre del archivo abierto (sin la extension) en la variable global
                              NombreDelArchivoAbiertoSimulacionImagenes:= NombreDelArchivoAbierto;

                              //Guardamos la extension del archivo abierto en la variable global
                              ExtensionDelArchivoAbiertoSimulacionImagenes:= 'sim';

                              //Guardo el nombre util del archivo abierto en la variable global
                              NombreUtilDelArchivoAbiertoSimulacionImagenes:= NombreUtilDelArchivoAbierto;

                              //Cargo el bitmap encriptado en un ATImageBox especial
                              ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                              //Desencripto los bitmaps
                              DesencriptarBitmaps;

{
                              //** Cargamos directamente las imagenes **
                              //ATImageBox de visualizacion
                              ATImageBoxSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                              //ATImageBox temporal de procesamiento
                              ATImageBoxTemporalSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                              //ATImageBox original (Color Real)
                              ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                              //ATImageBox original (Negativo)
                              ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                              //ATImageBox original (Color Real + Escala Gris)
                              ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                              //ATImageBox original (Negativo + Escala Gris)
                              ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

}

                              //Verifico el caption del LabelButton de comentarios
                              ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

                              //Verifico el Enable del LabelButton de comentarios
                              ValidarEnableLabelButtonsComentariosSimulacionImagenes;

                              //Cancelo el calculo, por si acaso se estaba haciendo
                              Calculando:= False;

                              //Levanto el LabelSpeedButton de medicion de distancia entre puntos
                              lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Down:= False;

                              //Le cambio el HeaderCaption al CollapsePanel central de Simulacion de Imagenes
                              if (IdiomaImperante = 'Espannol')
                                then
                                  begin
                                    CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                  end
                                    else
                                      begin
                                        if (IdiomaImperante = 'Ingles')
                                          then
                                            begin
                                              CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                            end;
                                      end;
                                                            
                              //Especificaciones para los componentes visuales que muestran la imagen
                              dsZoomNavigatorSimulacionImagenes.ScrollBox:= ATImageBoxSimulacionImagenes;
                              dsZoomNavigatorSimulacionImagenes.Control:= ATImageBoxSimulacionImagenes.Image;
                              dsZoomNavigatorSimulacionImagenes.OnDrawPage:= DrawPageSimulacionImagenes;
                              dsZoomNavigatorSimulacionImagenes.Width:= 180;

                              ATImageBoxSimulacionImagenes.OnScroll:= ScrollBoxScrollSimulacionImagenes;

                              TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= True;

                              //Habilito los componentes del modulo de simulacion
                              HabilitarComponentesSimulacionImagenes;

                              //Refresco el ZoomNavigator de Simulacion de Imagenes
                              dsZoomNavigatorSimulacionImagenes.Refresh;

                              //Habilito los botones de Zoom
                              lblbtnZoomInSimulacionImagenes.Enabled:= True;
                              lblbtnZoomOutSimulacionImagenes.Enabled:= True;

                              //Cargo los bmp para los LabelButon (habilitados)
                              lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');
                              lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

                              //Refrescamos los LabelButon para que se muestren los cambios
                              lblbtnZoomInSimulacionImagenes.Refresh;
                              lblbtnZoomOutSimulacionImagenes.Refresh;

                              //Llevamos la imagen del modulo de simulacion directamente a 24 bits
                              ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.PixelFormat := pf24bit;

                              //Habilitamos los TrackBar de variacion de brillo y contraste
                              TrackBarBrilloSimulacionImagenes.Enabled:= True;
                              TrackBarContrasteSimulacionImagenes.Enabled:= True;

                              //Ponemos los TrackBar de brillo y contraste en el centro
                              TrackBarBrilloSimulacionImagenes.Position := 0;
                              TrackBarContrasteSimulacionImagenes.Position := 0;

                              //Actualizo la vision de la imagen
                              ActualizarVisionSimulacionImagenes;

                              //Ejecuto la conversion a Negativo del Original (negativo)
                              InvertirBitmap(ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap);
                              ATImageBoxOriginalNegativoSimulacionImagenes.Refresh;

                              //Ejecuto la conversion a Escala Gris de los Originales
                              ConvertirOriginalesEscalaGrisSimulacionImagenes;
                                  
                              //Habilitamos los TrackBar de variacion de brillo y contraste
                              TrackBarBrilloSimulacionImagenes.Enabled:= True;
                              TrackBarContrasteSimulacionImagenes.Enabled:= True;

                              //Ponemos los TrackBar de brillo y contraste en el centro
                              TrackBarBrilloSimulacionImagenes.Position := 0;
                              TrackBarContrasteSimulacionImagenes.Position := 0;

                              //Actualizo nuevamente la vision de la imagen
                              ActualizarVisionSimulacionImagenes;

                              ATImageBoxSimulacionImagenes.UpdateImageInfo;
                              UpdateSelfScaleOptionsSimulacionImagenes;

                              //Valido los aumentos
                              ValidarAumentosSimulacionImagenes;

                              //Le cambio el cursor al TImage
                              ATImageBoxSimulacionImagenes.Cursor:= crHandPoint;

                              //Especifo la procedencia del fichero abierto
                              if (CaminoDelArchivoAbierto <> (ExtractFilePath(Application.ExeName) + 'Library\'))
                                then
                                  begin
                                    ProcedenciaDelFicheroSimulacionImagenes:= 'Externo';
                                  end
                                    else
                                      begin
                                        ProcedenciaDelFicheroSimulacionImagenes:= 'Interno';
                                      end;
                            end   //Fin de todo ok con el aumento a partir del fichero interior de aumento
                              else
                                begin //Lios con el aumento a partir del fichero interior de aumento
                                  //El archivo interjno de zoom esta da�ado o no es valido
                                  MessageDlg('El archivo abierto ' + NombreDelArchivoAbierto + '.sim' + ' tiene datos internos de aumento NO ADECUADOS, o est�n da�ados.', mtError, [mbOK], 0);

                                  //Salgo del procedimiento
                                  Goto Salida;
                                end;  //Fin de lios con el aumento a partir del fichero interior de aumento
                      end  //Fin de formato bmp de la imagen interior
                        else
                          begin
                            //No existe ningun achivo de formato admitido
                            MessageDlg('El archivo abierto ' + NombreEnteroDelArchivoAbierto + ' no posee el formato interno adecuado, o est� da�ado.', mtError, [mbOK], 0);

                            //Salgo del procedimiento
                            Goto Salida;
                          end;
                end;   //Fin de formato *.SIM de fichero abierto

            //Desmarco la que estaba seleccionada
            //FileListBoxSimulacionImagenes.Selected[i]:= False;

            //Actualizo el FileListBox
            //FileListBoxSimulacionImagenes.Update;
          end;  //Fin de est� seleccionado
    end; //Fin de recorrido general

  Salida:    
end;



procedure TfrmPrincipal.BorrarArchivoSIM;
var
  i: Integer;
  ArchivoEnteroAbierto: AnsiString;
  CaminoDelArchivoAbierto: AnsiString;
  NombreEnteroDelArchivoAbierto: AnsiString;
  AlgunoSeleccionado: Boolean;

  label Salida;

begin
  //Inicialmente pongo el seleccionado en falso
  AlgunoSeleccionado:= False;
  
  //Procedo a borrar de la libreria interna el archivo sim seleccionado en el FileListBox
  //Recorro desde el primero hasta el �ltimo archivo, por si hay alguno selecionado
  for i:= 0 to FileListBoxSimulacionImagenes.Count - 1 do
    begin
      //Compruebo si est� seleccionado
      if (FileListBoxSimulacionImagenes.Selected[i] = True)
        then
          begin //Est� seleccionado
            //Pongo el seleccionado en verdadero
            AlgunoSeleccionado:= True;

            //Copio la direccion entera al archivo abierto
            ArchivoEnteroAbierto:= FileListBoxSimulacionImagenes.FileName;

            //Le extraigo el camino de acceso al archivo abierto
            CaminoDelArchivoAbierto:= ExtractFilePath(ArchivoEnteroAbierto);

            //Obtengo el nombre entero del archivo abierto (junto con la extension)
            NombreEnteroDelArchivoAbierto:= QuitaEn(ArchivoEnteroAbierto, CaminoDelArchivoAbierto);

            //En dependencia del idioma imperante
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  //Muestro un mensaje de confirmacion
                  if MessageDlg('�Desea borrar el archivo ' + NombreEnteroDelArchivoAbierto + ' de la Biblioteca Interna?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                    then
                      begin
                        //Compruebo que no sea un archivo interno que se este mostrando
                        if (   (NombreEnteroDelArchivoAbierto = NombreEnteroDelArchivoAbiertoSimulacionImagenes) and (ProcedenciaDelFicheroSimulacionImagenes = 'Interno')   )
                          then
                            begin //Archivo interno que se esta mostrando
                              //Muestro un mensaje de confirmacion
                              if MessageDlg('El archivo ' + NombreEnteroDelArchivoAbierto + ', de la Biblioteca Interna, se est� mostrando actualmente. Esto imlicara perder la informaci�n que se est� mostrando. �Desea borrarlo de todos modos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                                then
                                  begin
                                    //Borro fisicamente el archivo de la librer�a
                                    DeleteFile(FileListBoxSimulacionImagenes.FileName);

                                    //Borro el archivo del FileListBox
                                    FileListBoxSimulacionImagenes.DeleteSelected;

                                    //Borro la informacion mostrada
                                    //Mando a ejecutar el SpeedButton correspondiente
                                    if (lblbtnLimpiarSimulacionImagenes.Enabled = True)
                                      then
                                        begin //Esta habilitado
                                          //Mando a limpiar entonces
                                          lblbtnLimpiarSimulacionImagenes.Click;
                                        end;

                                    //Salgo de la funci�n
                                    goto Salida;
                                  end;

                            end   //Fin de 'Archivo interno que se esta mostrando'
                              else
                                begin //Externo y/o No mostrado
                                  //Borro fisicamente el archivo de la librer�a
                                  DeleteFile(FileListBoxSimulacionImagenes.FileName);

                                  //Borro el archivo del FileListBox
                                  FileListBoxSimulacionImagenes.DeleteSelected;

                                  //Salgo de la funci�n
                                  goto Salida;
                                end;  //Fin de 'Externo y/o No mostrado'
                      end;
                end
                  else
                    begin
                      if (IdiomaImperante = 'Ingles')
                        then
                          begin
                            //Muestro un mensaje de confirmacion
                            if MessageDlg('�Do you want to delete the file ' + NombreEnteroDelArchivoAbierto + ' from the Internal Library?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                              then
                                begin
                                  //Compruebo que no sea un archivo interno que se este mostrando
                                  if (   (NombreEnteroDelArchivoAbierto = NombreEnteroDelArchivoAbiertoSimulacionImagenes) and (ProcedenciaDelFicheroSimulacionImagenes = 'Interno')   )
                                    then
                                      begin //Archivo interno que se esta mostrando
                                        //Muestro un mensaje de confirmacion
                                        if MessageDlg('The file ' + NombreEnteroDelArchivoAbierto + ', from the Internal Library, is been showed actually. This means the lost of showed information. Do you wish to delete it any way?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                                          then
                                            begin
                                              //Borro fisicamente el archivo de la librer�a
                                              DeleteFile(FileListBoxSimulacionImagenes.FileName);

                                              //Borro el archivo del FileListBox
                                              FileListBoxSimulacionImagenes.DeleteSelected;

                                              //Borro la informacion mostrada
                                              //Mando a ejecutar el SpeedButton correspondiente
                                              if (lblbtnLimpiarSimulacionImagenes.Enabled = True)
                                                then
                                                  begin //Esta habilitado
                                                    //Mando a limpiar entonces
                                                    lblbtnLimpiarSimulacionImagenes.Click;
                                                  end;

                                              //Salgo de la funci�n
                                              goto Salida;
                                            end;

                                      end   //Fin de 'Archivo interno que se esta mostrando'
                                        else
                                          begin //Externo y/o No mostrado
                                            //Borro fisicamente el archivo de la librer�a
                                            DeleteFile(FileListBoxSimulacionImagenes.FileName);

                                            //Borro el archivo del FileListBox
                                            FileListBoxSimulacionImagenes.DeleteSelected;

                                            //Salgo de la funci�n
                                            goto Salida;
                                          end;  //Fin de 'Externo y/o No mostrado'
                                  goto Salida;
                                end;
                          end;
                    end;
          end;  //Fin de est� seleccionado
    end; //Fin de recorrido general

  //Etiqueta de salida
  Salida:

  //Verifico si se hall� alguno seleccionado por el usuario
  if (AlgunoSeleccionado = False)
    then
      begin
        //Notifico que no se hall� nada, en dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              ShowMessage('Para borrar un fichero debe seleccionarlo previamente.');
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        ShowMessage('To delete a file, it must be selected before.');
                      end;
                end;
      end
        else
          begin
            //Actualizo el FileListBox
            FileListBoxSimulacionImagenes.Update;
          end;
end;



procedure TfrmPrincipal.lblbtnBorrarArchivoSIMSimulacionImagenesClick(
  Sender: TObject);
begin
  //Ejecuto el procedimiento para borrar archivo de la libreria
  BorrarArchivoSIM;

  //Verifico si queda al menos un archivo
  if (FileListBoxSimulacionImagenes.Count <> 0)
    then
      begin
        //Habilito el LabelButton
        lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= True;
      end
        else
          begin
            //Deshabilito el LabelButton
            lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= False;
          end;
end;



procedure TfrmPrincipal.BcCustomDrawModuleSimulacionImagenesDrawMenuItem(Sender: TObject;
  AMenuItem: TMenuItem; ACanvas: TCanvas; ARect: TRect;
  State: TOwnerDrawState; ABarVisible: Boolean; var DefaultDraw: Boolean);
var
  R: TRect;
  ImageList: TCustomImageList;

  procedure DrawCheckedPattern(Inflate: Boolean);
  begin
    if odChecked in State then
    begin
      if Inflate then InflateRect(R, -2, -2);
//      ACanvas.Brush.Bitmap := AllocPatternBitmap(clBtnFace, clWhite);
//      ACanvas.FillRect(R);

      //Especifico el color de chekeado
      ACanvas.Brush.Color := clBlack; //Original
      //ACanvas.Brush.Color := clBackground;
      
      ACanvas.FrameRect(R);
      if Inflate then InflateRect(R, 2, 2);
    end;
  end;

begin
  DefaultDraw := False;
  { menuitem drawing }
  if (AMenuItem.Caption = cLineCaption) then
  begin
    { background }
    //Color del fondo del menu (debajo de letras, etc)
    //DrawGradient(ACanvas, ARect, clWhite, clBtnFace, gsHorizontal); //Original
    DrawGradient(ACanvas, ARect, $00F4E2C1, clBtnFace, gsHorizontal);

    { align the text and draw it }
    R := ARect;
    R.Left := R.Right - ACanvas.TextWidth(AMenuItem.Hint) - 15;
    ACanvas.Brush.Style := bsClear;
    DrawText(ACanvas.Handle,
      PChar(AMenuItem.Hint), Length(AMenuItem.Hint),
      R, 0);

    { draw the line so that it won't draw over text }
    R := ARect;
    Inc(R.Top, (R.Bottom - R.Top) div 2);
    R.Bottom := R.Top + 1;
    Dec(R.Right, ACanvas.TextWidth(AMenuItem.Hint) + 10 + 10);

    //especifico el color de los separadores
    ACanvas.Brush.Color := clGray;
    //ACanvas.Brush.Color := clRed;
    
    ACanvas.FillRect(R);
  end else
  begin
    { use default drawing for mainmenu top items }
    if IsInTopMainMenu(AMenuItem) then
    begin
      DefaultDraw := True;
      Exit;
    end;
    with ACanvas do
    begin
      R := ARect;
      if odSelected in State then
      begin
        { draw frame and selection gradient }
        //Color del cajoncito de seleccion
        Brush.Color := clGray;
        //Brush.Color := clRed;

        FrameRect(R);
        InflateRect(R, -2, -2);

        //Valores del Gradiente de seleccion (dentro del cajoncito)
        //DrawGradient(ACanvas, R, clWhite, AMenuItem.Tag, gsDiagonalLeftRight);  //Original
        DrawGradient(ACanvas, R, $00ACEDA3, AMenuItem.Tag, gsDiagonalLeftRight);

        DrawCheckedPattern(False);
        { adjust rect so that text will be aligned to right }
        R.Left := R.Right - TextWidth(AMenuItem.Caption) - 5;

        //Color del texto al seleccionarlo
        Font.Color := clWhite; // caption color, color blanco
        //Font.Color := clRed;
      end else
      begin
        { draw background gradient }
        //Color del gradiente (Canvas, TRect , Inicio, Fin, modo de gradiente) encima del fonde (no el de seleccion)
        //DrawGradient(ACanvas, R, clWhite, clBtnFace, gsHorizontal);  //Original
        DrawGradient(ACanvas, R, $00F4E2C1, clBtnFace, gsHorizontal);  //Lo pongo en azul claro el color de inicio del gradiente de fondo


        DrawCheckedPattern(True);
        { leave space for menuitem image }
        Inc(R.Left, 38);
        Font.Color := clBlack; // caption color
      end;
      if (odDisabled in State) or (odGrayed in State) then
        Font.Color := clGrayText;

      { draw caption }
      InflateRect(R, 0, -(
        (R.Bottom - R.Top - TextHeight(AMenuItem.Caption) - 1)
         div 2));
      Brush.Style := bsClear;
      DrawText(Handle,
        PChar(AMenuItem.Caption), Length(AMenuItem.Caption),
        R, 0);

      { draw menuitem image }
      with AMenuItem do
      begin
        ImageList := GetImageList;
        if (ImageIndex <> -1) and Assigned(ImageList) then
          ImageList.Draw(ACanvas, ARect.Left + 11,
            ARect.Top + (ARect.Bottom - ARect.Top - ImageList.Height) div 2, ImageIndex);
      end;
    end;
  end;
end;



procedure TfrmPrincipal.DrawGradient(Canvas: TCanvas; ARect: TRect;
  StartingColor, EndingColor: TColor; Style: TGradientStyle);
begin
  DrawBuffer.Height := RectHeight(ARect);
  DrawBuffer.Width := RectWidth(ARect);
  BarMenus.DrawGradient(DrawBuffer, nil, BitmapRect(DrawBuffer), startingColor, EndingColor, Style);
  Canvas.Draw(ARect.Left, ARect.Top, DrawBuffer); // copy the buffer
  DrawBuffer.Height := 0;
  DrawBuffer.Width := 0;
end;



function TfrmPrincipal.GetDrawBuffer: TBitmap;
begin
  if not Assigned(FDrawBuffer) then
    FDrawBuffer := TBitmap.Create;
  Result := FDrawBuffer;
end;



function TfrmPrincipal.NombreValidoParaFichero(aNombre: AnsiString): Boolean;
var
  i: Integer;
begin
  //Inicialmente la respuesta es True
  Result:= True;
  
  //Debo comprobar primero que no sea un nombre nulo (vacio)
  if (aNombre = '')
    then
      begin
        Result:= False;
      end
        else
          begin
            //Verifico ahora que el 1er caracter no sea invalido
            if (AnsiLeftStr(aNombre, 1) = '.')
              then
                begin
                  Result:= False;
                end
                  else
                    begin
                      //Recorro desde el 1er caracter de la cadena, hasta el ultimo
                      for i:= 0 to Length(aNombre) do
                        begin //Inicio del ciclo
                          //Debo validar que no presente caracteres no permitidos (/, \, :, ?, �, *,", <, >, 1 missing)
                          if (   (aNombre[i] = '/') or (aNombre[i] = '\')  or (aNombre[i] = ':') or (aNombre[i] = '?') or (aNombre[i] = '�') or (aNombre[i] = '*') or (aNombre[i] = '"') or (aNombre[i] = '<') or (aNombre[i] = '>')  )
                            then
                              begin
                                Result:= False;
                              end;
                        end;
                    end;
          end;
end;



function TfrmPrincipal.QuitarEspaciosVaciosAlInicio(aNombre: AnsiString): AnsiString;
var
 i: Integer;
 Ancho: Integer;
 
 NombreInicial, NombreEditado: AnsiString;
label Inicio, Salida;
begin
  //Recibo el nombre a editar
  NombreInicial:= aNombre;

  //Inicialmente el nombre editado es el mismo que el pasado por datos
  NombreEditado:= aNombre;
  
  //Etiqueta de inicio de la funcion
  Inicio:

  //Recorro desde el 1er caracter de la cadena, hasta el ultimo
  for i:= 1 to Length(NombreInicial) do
    begin //Inicio del ciclo
      //Si encuentro uno vacio entonces
      if (NombreInicial[i] = ' ')
        then
          begin
            //Tomo el ancho de la cadena a extraer
            Ancho:= Length(NombreInicial) - 1;
            
            //Elimino ese caracter nulo a la izquierda
            NombreEditado:= AnsiRightStr(NombreInicial, Ancho);
            NombreInicial:= NombreEditado;
            //Vuelvo a empezar el ciclo, desde el primcipio del mismo
            goto Inicio;
          end
            else
              begin
                //Salgo del ciclo
                break;
              end;

    end;  //Fin del ciclo

  //Etiqueta de salida de la funcion
  Salida:

  //Sale el nombre ya editado
  Result:= NombreEditado;
end;



procedure TfrmPrincipal.FormActivate(Sender: TObject);
var
  ArchivoEnteroAbierto: AnsiString;
  CaminoDelArchivoAbierto: AnsiString;
  NombreEnteroDelArchivoAbierto: AnsiString;
  NombreDelArchivoAbierto: AnsiString;

  ExtensionDelArchivoAbierto: AnsiString;
  NombreUtilDelArchivoAbierto: AnsiString;

  MyJPEG : TJPEGImage;
  MyBMP  : TBitmap;

  Label Salida;
begin
  //Verifico si se hizo una llamada
  if (ParamCount <> 0)
    then
      begin
        //Copio la direccion entera al archivo abierto
        ArchivoEnteroAbierto:= ParamStr(1);

        //Le extraigo el camino de acceso al archivo abierto
        CaminoDelArchivoAbierto:= ExtractFilePath(ArchivoEnteroAbierto);

        //Obtengo el nombre entero del archivo abierto (junto con la extension)
        NombreEnteroDelArchivoAbierto:= QuitaEn(ArchivoEnteroAbierto, CaminoDelArchivoAbierto);

        //Obtengo el nombre del archivo abierto (sin la extension)
        NombreDelArchivoAbierto:=  QuitaEn(NombreEnteroDelArchivoAbierto, AnsiRightStr(NombreEnteroDelArchivoAbierto, 3 + 1));

        //*** Verificamos si el archivo abierto es de extension *.sim, *.bmp o *.jpg
        if (  LowerCase( AnsiRightStr(NombreEnteroDelArchivoAbierto, 3) ) = 'sim'   )
          then
            begin //Formato *.SIM
              //Obtengo la extension del archivo abierto
              ExtensionDelArchivoAbierto:= 'sim';

              //En este caso la parte util coincide con el nombre
              NombreUtilDelArchivoAbierto:= NombreDelArchivoAbierto;
                    
              //Procedemos a extraer la informacion hacia los archivos temporales de la biblioteca
              ExtraerFicheroSIM(ArchivoEnteroAbierto);

              //Verifico el formato del archivo interior (si est�)
              if (   FileExists(   LowerCase(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp')   ) = True   )
                then
                  begin  //Formato bmp de la imagen interior
                    //Creo un fichero de zoom
                    FicheroZoomImagen:= TFicheroZoomImagen.New;

                    //Cargo el fichero de zoom
                    FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Zoom.txt');

                    //Verifico que no haya lios con el aumento a partir del fichero interior de aumento
                    if (FicheroZoomImagen.DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes <> 'Error')
                      then
                        begin //Todo ok con el aumento a partir del fichero interior de aumento
                          //Determino el aumento a partir del fichero interior de aumento y lo guardo en la variable global
                          AumentoSimulacionImagenes:= StrToInt(FicheroZoomImagen.DeterminarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes);

                          //Guardo la direccion entera al archivo abierto en la variable global
                          ArchivoEnteroAbiertoSimulacionImagenes:= ArchivoEnteroAbierto;

                          //Guardo el camino de acceso al archivo abierto en la variable global
                          CaminoDelArchivoAbiertoSimulacionImagenes:= CaminoDelArchivoAbierto;

                          //Guardo el nombre entero del archivo abierto en la variable global
                          NombreEnteroDelArchivoAbiertoSimulacionImagenes:= NombreEnteroDelArchivoAbierto;

                          //Guardo el nombre del archivo abierto (sin la extension) en la variable global
                          NombreDelArchivoAbiertoSimulacionImagenes:= NombreDelArchivoAbierto;

                          //Guardamos la extension del archivo abierto en la variable global
                          ExtensionDelArchivoAbiertoSimulacionImagenes:= 'sim';

                          //Guardo el nombre util del archivo abierto en la variable global
                          NombreUtilDelArchivoAbiertoSimulacionImagenes:= NombreUtilDelArchivoAbierto;

                          //** Cargamos directamente las imagenes **
                          //ATImageBox de visualizacion
                          ATImageBoxSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox temporal de procesamiento
                          ATImageBoxTemporalSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Color Real)
                          ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Negativo)
                          ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Color Real + Escala Gris)
                          ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //ATImageBox original (Negativo + Escala Gris)
                          ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.LoadFromFile( ExtractFilePath(Application.ExeName) +  'Library\TempFiles\YourBmpHere.bmp' );

                          //Cancelo el calculo, por si acaso se estaba haciendo
                          Calculando:= False;

                          //Levanto el LabelSpeedButton de medicion de distancia entre puntos
                          lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Down:= False;
                                                    
                          //Le cambio el HeaderCaption al CollapsePanel central de Simulacion de Imagenes
                          if (IdiomaImperante = 'Espannol')
                            then
                              begin
                                CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Imagen - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                              end
                                else
                                  begin
                                    if (IdiomaImperante = 'Ingles')
                                      then
                                        begin
                                          CollapsePanelImagenCentralSimulacionImagenes.HeaderCaption:= 'Image - (' + NombreUtilDelArchivoAbiertoSimulacionImagenes + ')';
                                        end;
                                  end;
                                                            
                          //Especificaciones para los componentes visuales que muestran la imagen
                          dsZoomNavigatorSimulacionImagenes.ScrollBox:= ATImageBoxSimulacionImagenes;
                          dsZoomNavigatorSimulacionImagenes.Control:= ATImageBoxSimulacionImagenes.Image;
                          dsZoomNavigatorSimulacionImagenes.OnDrawPage:= DrawPageSimulacionImagenes;
                          dsZoomNavigatorSimulacionImagenes.Width:= 180;

                          ATImageBoxSimulacionImagenes.OnScroll:= ScrollBoxScrollSimulacionImagenes;

                          TimerRefrescarZoomNavigatorSimulacionImagenes.Enabled:= True;

                          //Habilito los componentes del modulo de simulacion
                          HabilitarComponentesSimulacionImagenes;

                          //Refresco el ZoomNavigator de Simulacion de Imagenes
                          dsZoomNavigatorSimulacionImagenes.Refresh;

                          //Habilito los botones de Zoom
                          lblbtnZoomInSimulacionImagenes.Enabled:= True;
                          lblbtnZoomOutSimulacionImagenes.Enabled:= True;

                          //Cargo los bmp para los LabelButon (habilitados)
                          lblbtnZoomInSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomInTool_Pink.bmp');
                          lblbtnZoomOutSimulacionImagenes.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName) + 'glyphers\ZoomTools\ZoomOutTool_Pink.bmp');

                          //Refrescamos los LabelButon para que se muestren los cambios
                          lblbtnZoomInSimulacionImagenes.Refresh;
                          lblbtnZoomOutSimulacionImagenes.Refresh;

                          //Llevamos la imagen del modulo de simulacion directamente a 24 bits
                          ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.PixelFormat := pf24bit;

                          //Habilitamos los TrackBar de variacion de brillo y contraste
                          TrackBarBrilloSimulacionImagenes.Enabled:= True;
                          TrackBarContrasteSimulacionImagenes.Enabled:= True;

                          //Ponemos los TrackBar de brillo y contraste en el centro
                          TrackBarBrilloSimulacionImagenes.Position := 0;
                          TrackBarContrasteSimulacionImagenes.Position := 0;

                          //Actualizo la vision de la imagen
                          ActualizarVisionSimulacionImagenes;

                          //Ejecuto la conversion a Negativo del Original (negativo)
                          InvertirBitmap(ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap);
                          ATImageBoxOriginalNegativoSimulacionImagenes.Refresh;

                          //Ejecuto la conversion a Escala Gris de los Originales
                          ConvertirOriginalesEscalaGrisSimulacionImagenes;
                                  
                          //Habilitamos los TrackBar de variacion de brillo y contraste
                          TrackBarBrilloSimulacionImagenes.Enabled:= True;
                          TrackBarContrasteSimulacionImagenes.Enabled:= True;

                          //Ponemos los TrackBar de brillo y contraste en el centro
                          TrackBarBrilloSimulacionImagenes.Position := 0;
                          TrackBarContrasteSimulacionImagenes.Position := 0;

                          //Actualizo nuevamente la vision de la imagen
                          ActualizarVisionSimulacionImagenes;

                          ATImageBoxSimulacionImagenes.UpdateImageInfo;
                          UpdateSelfScaleOptionsSimulacionImagenes;

                          //Le cambio el cursor al TImage
                          ATImageBoxSimulacionImagenes.Cursor:= crHandPoint;
                        end   //Fin de todo ok con el aumento a partir del fichero interior de aumento
                          else
                            begin //Lios con el aumento a partir del fichero interior de aumento
                              //El archivo interjno de zoom esta da�ado o no es valido
                              MessageDlg('El archivo abierto ' + NombreDelArchivoAbierto + '.sim' + ' tiene datos internos de aumento NO ADECUADOS, o est�n da�ados.', mtError, [mbOK], 0);

                              //Salgo del procedimiento
                              Goto Salida;
                            end;  //Fin de lios con el aumento a partir del fichero interior de aumento
                  end  //Fin de formato bmp de la imagen interior
                    else
                      begin
                        //No existe ningun achivo de formato admitido
                        MessageDlg('El archivo abierto ' + NombreEnteroDelArchivoAbierto + ' no posee el formato interno adecuado, o est� da�ado.', mtError, [mbOK], 0);

                        //Salgo del procedimiento
                        Goto Salida;
                      end;
            end   //Fin de formato *.SIM de fichero abierto
      end;

  //Etiqueta que marca un punto de salida del procedimiento
  Salida:

end;



procedure TfrmPrincipal.lblbtnHerramientaAgregarElipseSimulacionImagenesClick(Sender: TObject);
var
  ShapeElipse: TShape;
begin

  //Crear el shape Elipse
  ShapeElipse := CrearFormaVectorial('Elipse', '', ATImageBoxSimulacionImagenes, 10, 10);

  // Activar
  SelectOnRunTime.Active := True;
  // Seleccionar
  //SelectOnRunTime.SelectControl := img;
  SelectOnRunTime.SelectControl := ShapeElipse;
end;



function TfrmPrincipal.CrearImagenVectorial(aTipo, aName: String; aParent: TWinControl; aLeft, aTop: Integer): TImage;
var
  img:TImage;
  comp:TComponent;
  NewName:String;
begin
  //Dependiendo del tipo de imagen vectorial a crear
  if (aTipo = 'Mesa')
    then
      begin
        // Crear el nuevo elemento
        img := TImage.Create(Self);
        Result := img;

        // Modificar
        with img do
          begin
            // crear la nueva mesa
            Picture := imgMesaDemo.Picture;

            // Props
            // Se ha pasado nombre?
            if (aName <> '')
              then
                begin //Tiene nombre
                  NewName := aName;
                end   //Fin de 'Tiene nombre'
                  else
                    begin  //No tiene nombre
                      //Proteccion simple por si el nombre existe... (por si se han borrado)
                      NewName := 'Mesa_' + IntToStr(_nmesas);
                      comp := Self.FindComponent(NewName);

                      // ir buscando nombre no existente
                      while Assigned(comp) do
                        begin
                          _nmesas := _nmesas + 1;
                          NewName := 'Mesa_' + IntToStr(_nmesas);
                          comp := Self.FindComponent(NewName);
                        end;
                    end;   //Fin de 'No tiene nombre'

            _nmesas := _nmesas + 1;
            Parent := aParent{ATImageBoxSimulacionImagenes};
            img.Name := NewName;
            img.ShowHint := True;
            img.Hint := 'Mesa: ' + img.Name;

            // Posicion
            //Left := aLeft * strt(ATImageBoxSimulacionImagenes.ImageScale / 100);
            //Top := aTop * (ATImageBoxSimulacionImagenes.ImageScale / 100);
            Left := aLeft;
            Top := aTop;

            // Tama�o
            height := imgMesaDemo.Height;
            width := imgMesaDemo.Width;
            
            // Otras prop�edades
            Transparent := True;
            Stretch := True;
            Visible:= True;

            // eventos
            OnClick := OnMesaClick;
            OnMouseDown:= OnMesaMouseDown;

            // A�adirla al combo de mesas
            cbMesa.Items.Add(NewName);
            cbMesa.ItemIndex := 0;
            //cbMesa2.Items.Add(NewName);
            //cbMesa2.ItemIndex := 0;
        end;
      end
        else
          begin
            if (aTipo= 'Cuadrado')
              then
                begin

                end;
          end;
end;



procedure TfrmPrincipal.OnMesaClick(Sender: TObject);
begin
  SelectOnRunTime.Selected := False;

  // En un TControl?
  if (Sender is TControl)
    then
      begin
        SelectOnRunTime.SelectControl := TControl(Sender);
        SelectOnRunTime.Selected := True;
        TControl(Sender).Refresh;
      end;

end;



procedure TfrmPrincipal.OnMesaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SelectOnRunTime.Selected := False;
  
  // En un TControl?
  if (Sender is TControl)
    then
      begin
        SelectOnRunTime.Selected := False;
        SelectOnRunTime.SelectControl := TControl(Sender);
        SelectOnRunTime.Selected := True;
        TControl(Sender).Refresh;
      end;
  Refresh;
end;



procedure TfrmPrincipal.SelectOnRunTimeBeforeSelect(Sender: TObject;
  Selected: TControl; var Select: Boolean);
var
  Index:Integer;
begin
  // Buscar
  Index := cbMesa.Items.IndexOf(Selected.Name);
  // encontrado?
  if (Index <> -1) then begin
    cbMesa.ItemIndex := Index;
  end;
end;



procedure TfrmPrincipal.AjustarCoordenadas;
var
  ctrl:TControl;
  comp:TComponent;
  i: Integer;
begin
{
  //Debo recorrer el listado de anotaciones
  for i:= 1 to SelectOnRunTime.ComponentCount do
    begin
      SelectOnRunTime.
      TControl(comp)
    end;
  

  // Hay alguna Seleccionada?
  if (SelectOnRunTime.Selected) then begin
    // Hay algo seleccionado?
    if Assigned(SelectOnRunTime.SelectControl) then begin

      ctrl := SelectOnRunTime.SelectControl;
      SelectOnRunTime.Selected := False;
      
      FreeAndNil(ctrl);
      SelectOnRunTime.SelectControl := nil;

      Exit;
    end;
  end;
}
end;



function TfrmPrincipal.CrearFormaVectorial(aTipo, aName: String; AParent: TWinControl; ALeft, ATop: Integer): TShape;
var
  shape: TShape;
  comp:TComponent;
  NewName: AnsiString;
begin
  // Crear el nuevo elemento
  shape := TShape.Create(Self);
  Result := shape;

  // Modificar
  with shape do
    begin
      //Dependiendo del tipo de imagen vectorial a crear
      if (aTipo = 'Cuadrado')
        then
          begin
            // crear el nuevo cuadrado
            Shape := ShapeCuadradoSimulacionImagenes.Shape;
          end
            else
              begin
                if (aTipo = 'Elipse')
                  then
                    begin
                      // crear el nuevo cuadrado
                      Shape := ShapeElipseSimulacionImagenes.Shape;
                    end
              end;

      // Props
      // Se ha pasado nombre?
      if (aName <> '')
        then
          begin //Tiene nombre
            NewName := aName;
          end   //Fin de 'Tiene nombre'
            else
              begin  //No tiene nombre
                //Proteccion simple por si el nombre existe... (por si se han borrado)
                NewName := 'Cuadrado_' + IntToStr(_nmesas);
                comp := Self.FindComponent(NewName);

                // ir buscando nombre no existente
                while Assigned(comp) do
                  begin
                    _nmesas := _nmesas + 1;
                    NewName := 'Mesa_' + IntToStr(_nmesas);
                    comp := Self.FindComponent(NewName);
                  end;
              end;   //Fin de 'No tiene nombre'

      _nmesas := _nmesas + 1;
      Parent := aParent{ATImageBoxSimulacionImagenes};
      Name := NewName;
      ShowHint := True;
      Hint := 'Cuadrado: ' + Name;

      // Posicion
      //Left := aLeft * strt(ATImageBoxSimulacionImagenes.ImageScale / 100);
      //Top := aTop * (ATImageBoxSimulacionImagenes.ImageScale / 100);
      Left := aLeft;
      Top := aTop;

      // Tama�o
      height := ShapeCuadradoSimulacionImagenes.Height;
      width := ShapeCuadradoSimulacionImagenes.Width;

      // Otras prop�edades
      //Transparent:= True; No existe la propiedad transparente en los TShape
      Pen.Mode:= pmMask;
      //Stretch := True;
      Visible:= True;

      // eventos
      OnClick := OnMesaClick;
      OnMouseDown:= OnMesaMouseDown;
      OnMouseUp:= OnFormaMouseUp;
      OnMouseMove:= OnFormaMouseMove;

      // A�adirla al combo de mesas
      cbMesa.Items.Add(NewName);
      cbMesa.ItemIndex := 0;
      //cbMesa2.Items.Add(NewName);
      //cbMesa2.ItemIndex := 0;
  end;

end;



procedure TfrmPrincipal.ATImageBoxSimulacionImagenesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  //lblEjeXImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.ImageMousePosX);
  //lblEjeYImagenSimulacionImagenes.Caption:= IntToStr(ATImageBoxSimulacionImagenes.ImageMousePosY);
  //ATImageBoxSimulacionImagenes.Image.ClientOrigin.X

end;



procedure TfrmPrincipal.ATImageBoxImageSimulacionImagenesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  lblEjeXImagenSimulacionImagenes.Caption:= IntToStr(X);
  lblEjeYImagenSimulacionImagenes.Caption:= IntToStr(Y);
  ATImageBoxSimulacionImagenes.OnScroll:= ScrollBoxScrollSimulacionImagenes;
end;



procedure TfrmPrincipal.lblbtnGuardarComentariosSimulacionImagenesClick(Sender: TObject);
begin
  //Deshabilito el Memo de comentarios (no m�s edici�n sobre �l) (se ve feo)
  //MemoComentariosSimulacionImagenes.Enabled:= False;

  //Pongo en modo Solo Lectura el Memo de comentarios para que no se pueda escribir en �l
  MemoComentariosSimulacionImagenes.ReadOnly:= True;

  //Guardo los nuevos comentarios del Memo, en la variable global
  ComentariosSimulacionImagenes:= TStringList(MemoComentariosSimulacionImagenes.Lines);

  //Creo un fichero de comentarios
  FicheroComentarios:= TFicheroComentarios.New;

  //En dependencia del tipo de archivo abierto
  if (ExtensionDelArchivoAbiertoSimulacionImagenes = 'sim')
    then
      begin //Archivo sim abierto
        //Cargo un fichero de comentarios desde los temporales de la libreria, para que no siga dando error (out of bounds)
        FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Commentaries.txt');
      end   //Fin de 'Archivo sim abierto'
        else
          begin //Archivos bmp o jpg abiertos
            //Cargo un fichero de comentarios desde los temporales, para que no siga dando error (out of bounds)
            FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'TempFiles\Commentaries.txt');
          end;  //Fin de 'Archivos bmp o jpg abiertos'

  //Relleno el fichero con los comentarios de la imagen
  FicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(ComentariosSimulacionImagenes);

  //En dependencia del tipo de archivo abierto
  if (ExtensionDelArchivoAbiertoSimulacionImagenes = 'sim')
    then
      begin //Archivo sim abierto
        //Salvo el fichero en archivos temporales de la libreria
        FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt');
      end   //Fin de 'Archivo sim abierto'
        else
          begin //Archivos bmp o jpg abiertos
            //Salvo el fichero en archivos temporales
            FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt');
          end;  //Fin de 'Archivos bmp o jpg abiertos'

  //Libero el archivo de comentarios
  FicheroComentarios.Free;

  //Libero memoria del fichero temporal de comentarios
  //FicheroTemporalComentarios.Free;   

  //*** Ajusto los componentes de comentarios ***
  //Deshabilito el LabelButton de Guardar Comentarios
  lblbtnGuardarComentariosSimulacionImagenes.Enabled:= False;

  //Deshabilito el LabelButton de Cancelar Comentarios
  lblbtnCancelarComentariosSimulacionImagenes.Enabled:= False;

  //Habilito el LabelButton de Modificar Comentarios
  lblbtnModificarComentariosSimulacionImagenes.Enabled:= True;

  //Valido el caption del LabelButton de Modificar comentarios
  ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

  //Salvo directamente, en dependencia del tipo de archivo abierto
  if (ExtensionDelArchivoAbiertoSimulacionImagenes = 'sim')
    then
      begin
        //Salvo el fichero SIM (probando)
        if (SpeedButtonSalvarArchivoSimulacionImagenes.Enabled = True)
          then
            begin
              SpeedButtonSalvarArchivoSimulacionImagenes.Click;
            end;
      end;
end;



procedure TfrmPrincipal.lblbtnModificarComentariosSimulacionImagenesClick(Sender: TObject);
begin
{
  //Creo el fichero temporal de comentarios
  FicheroTemporalComentarios:= TFicheroComentarios.New;

  //Guardo el contenido original del Memo de comentarios en el fichero temporal
  FicheroTemporalComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(   TSTringList(MemoComentariosSimulacionImagenes.Lines)   );
}


  //Habilito el Memo de comentarios para que se pueda escribir en �l (se ve feo)
  //MemoComentariosSimulacionImagenes.Enabled:= True;

  //Pongo en modo Escritura el Memo de comentarios para que se pueda escribir en �l
  MemoComentariosSimulacionImagenes.ReadOnly:= False;

  //Guardo el contenido inicial en el memo temporal
  MemoTemporalSimulacionImagenes.Lines:= MemoComentariosSimulacionImagenes.Lines;
  
  //Habilito el LabelButton de Guardar Comentarios
  lblbtnGuardarComentariosSimulacionImagenes.Enabled:= True;

  //Habilito el LabelButton de Cancelar Comentarios
  lblbtnCancelarComentariosSimulacionImagenes.Enabled:= True;

  //Deshabilito el LabelButton de Modificar Comentarios
  lblbtnModificarComentariosSimulacionImagenes.Enabled:= False;

  //Pongo el focus en el Memo de comentarios
  MemoComentariosSimulacionImagenes.SetFocus;
end;



procedure TfrmPrincipal.lblbtnCancelarComentariosSimulacionImagenesClick(Sender: TObject);
var
  ComentariosTemporales: TStringList;
begin
{
  //Recogo los comentarios originales
  ComentariosTemporales:= FicheroTemporalComentarios.DeterminarComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes;
  
  //Relleno el Memo de comentarios con su info original
  MemoComentariosSimulacionImagenes.Lines:= ComentariosTemporales;
  
  //Refresco el Memo de comentarios
  MemoComentariosSimulacionImagenes.Refresh;
}
  //Recojo los comentarios iniciales
  MemoComentariosSimulacionImagenes.Lines:= MemoTemporalSimulacionImagenes.Lines;

  //Deshabilito nuevamente el Memo de comentarios
  //MemoComentariosSimulacionImagenes.Enabled:= False;

  //Pongo en modo Solo Lectura el Memo de comentarios para que no se pueda escribir en �l
  MemoComentariosSimulacionImagenes.ReadOnly:= True;

  //Deshabilito el LabelButton de Guardar Comentarios
  lblbtnGuardarComentariosSimulacionImagenes.Enabled:= False;

  //Deshabilito el LabelButton de Cancelar (�l mismo)
  lblbtnCancelarComentariosSimulacionImagenes.Enabled:= False;

  //Habilito el LabelButton de Modificar Comentarios
  lblbtnModificarComentariosSimulacionImagenes.Enabled:= True;

  //Valido el caption del LabelButton de Modificar comentarios
  ValidarCaptionLabelButtonsComentariosSimulacionImagenes;

  //Libero memoria del fichero temporal de comentarios
  //FicheroTemporalComentarios.Free;
end;



procedure TfrmPrincipal.lblbtnBorrarArchivoSIMSimulacionImagenesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
begin
  //Recorro desde el primero hasta el �ltimo archivo, por si hay alguno selecionado
  for i:= 0 to FileListBoxSimulacionImagenes.Count - 1 do
    begin
      //Compruebo si est� seleccionado
      if (FileListBoxSimulacionImagenes.Selected[i] = True)
        then
          begin //Est� seleccionado

          end;
    end;
end;



procedure TfrmPrincipal.ValidarCaptionLabelButtonsComentariosSimulacionImagenes;
begin
  //Verifico el estado del memo, para el Caption
  if (   (MemoComentariosSimulacionImagenes.Text = '') or (Trim(MemoComentariosSimulacionImagenes.Text) = EmptyStr)   )
    then
      begin  //Est� vacio el Memo
        //En dependencia del idioma predominante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              //Pongo el caption en 'comentar'
              lblbtnModificarComentariosSimulacionImagenes.Caption:= 'Comentar';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        //Pongo el caption en 'comentar'
                        lblbtnModificarComentariosSimulacionImagenes.Caption:= 'To comment';
                      end;
                end;
      end    //Fin de 'Est� vacio el Memo'
        else
          begin  //Hay algo en el Memo
            //En dependencia del idioma predominante
            if (IdiomaImperante = 'Espannol')
              then
                begin
                  //Pongo el caption en 'comentar'
                  lblbtnModificarComentariosSimulacionImagenes.Caption:= 'Modificar';
                end
                  else
                    begin
                      if (IdiomaImperante = 'Ingles')
                        then
                          begin
                            //Pongo el caption en 'comentar'
                            lblbtnModificarComentariosSimulacionImagenes.Caption:= 'Update';
                          end;
                    end;
          end;   //Fin de 'Hay algo en el Memo'
end;



procedure TfrmPrincipal.ValidarEnableLabelButtonsComentariosSimulacionImagenes;
begin
  //Verifico el estado del memo, para el Enable
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        //Habilito el labelButton de Modificar comentarios
        lblbtnModificarComentariosSimulacionImagenes.Enabled:= True;
      end
        else
          begin
            //Deshabilito el labelButton de Modificar comentarios
            lblbtnModificarComentariosSimulacionImagenes.Enabled:= False;
          end;
end;



procedure TfrmPrincipal.ValidarAumentosSimulacionImagenes;
var
  AumentoDigital: Double;
begin
  //Verifico el estado del memo, para el Enable
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        //Calculo y muestro los aumentos
        AumentoDigital:= ((TrackBarSimulacionImagenes.Position) / 100);
        lblValorAumentoDigitalSimulacionImagenes.Caption:= FloatToStr(AumentoDigital);
        lblValorAumentoFinalSimulacionImagenes.Caption:= FloatToStr(AumentoSimulacionImagenes * AumentoDigital);
      end
        else
          begin
            //En dependencia del idioma imperante
            if (IdiomaImperante= 'Espannol')
              then
                begin
                  //No hay aumento
                  lblValorAumentoOpticoSimulacionImagenes.Caption:= 'NO';
                  lblValorAumentoDigitalSimulacionImagenes.Caption:= 'NO';
                  lblValorAumentoFinalSimulacionImagenes.Caption:= 'NO';
                end
                  else
                    begin
                      if (IdiomaImperante= 'Ingles')
                        then
                          begin
                            //No hay aumento
                            lblValorAumentoOpticoSimulacionImagenes.Caption:= 'NO';
                            lblValorAumentoDigitalSimulacionImagenes.Caption:= 'NO';
                            lblValorAumentoFinalSimulacionImagenes.Caption:= 'NO';
                          end;
                    end;
          end;
end;



procedure TfrmPrincipal.lblbtnHerramientaAgregarRectanguloSimulacionImagenesClick(Sender: TObject);
var
  ShapeRectangulo: TShape;
begin

  //Creo ekl shape rectangulo
  ShapeRectangulo := CrearFormaVectorial('Cuadrado', '', ATImageBoxSimulacionImagenes, 10, 10);

  //Activar
  SelectOnRunTime.Active := True;
  // Seleccionar
  //SelectOnRunTime.SelectControl := img;
  SelectOnRunTime.SelectControl := ShapeRectangulo;
end;



procedure TfrmPrincipal.lblbtnHerramientaDimensionarSimulacionImagenesClick(
  Sender: TObject);
var
  img:TImage;
begin

  //Creo el TImage con la mesa
  img := CrearImagenVectorial('Mesa', '', ATImageBoxSimulacionImagenes, 10, 10);

  // Activar
  SelectOnRunTime.Active := True;
  // Seleccionar
  SelectOnRunTime.SelectControl := img;
end;



procedure TfrmPrincipal.SubMenuAgregarABibliotecaClick(Sender: TObject);
begin
  //Ejecuto el SpeedButton de salvar a la biblioteca
  if (SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Enabled = True)
    then
      begin
        SpeedButtonAgregarArchivoABibliotecaSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.SpeedButtonAgregarArchivoABibliotecaSimulacionImagenesClick(
  Sender: TObject);
begin
  //Agrego el archivo a la biblioteca
  AgregarArchivoABiblioteca;
end;



procedure TfrmPrincipal.AgregarArchivoABiblioteca;
var
   //Sistema Aravil CAB Component
   aCabWr: TSTCabWriter;

  RespDialog: Integer;
  i: Integer;
  
  NuevoNombre: AnsiString;
  Encomio: AnsiString;
  Reganno: AnsiString;
  Temporal: AnsiString;
  
Label Comprobacion, PedirNombre, Salida;
begin
  //*** Utilizando el sistema Aravil CAB Component ***
  //Creo el componente de compresi�n
  aCabWr := TSTCabWriter.Create(nil);

  //Especifico el tipo de compresi�n
  aCabWr.CompressionType := cctMsZip;

  
  //Pongo un tipo de cursos adecuado
  Cursor := crHourGlass;

  //Inicialmente el nombre es el que viene por defecto
  NuevoNombre:= NombreUtilDelArchivoAbiertoSimulacionImagenes;

  //Etiqueta de comprobacion  (Lazo)
  Comprobacion:
  
  //Primero verifico si en la libreria existe un archivo con el nombre util abierto
  if (FileExists(ExtractFilePath(Application.ExeName) + 'Library\' + NuevoNombre + '.Sim') = True)
    then
      begin  //Existe el archivo
        //Pregunto qu� hacer, en dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              //Muestro un mensaje de confirmacion
              //if MessageDialog('Un archivo con el nombre ' + NombreUtilDelArchivoAbiertoSimulacionImagenes + '.sim' + ' ya existe en la Biblioteca Interna.' + #13 + '�Desea sobrescribir el archivo?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes
              //if (   MessageDlg('Un archivo con el nombre ' + NombreUtilDelArchivoAbiertoSimulacionImagenes + '.sim' + ' ya existe en la Biblioteca Interna. �Desea sobrescribir el archivo?',  mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes   )

              //Notifico al usuario
              RespDialog:= MessageDlg('Un archivo con el nombre ' + NuevoNombre + '.sim' + ' ya existe en la Biblioteca Interna. �Desea sobrescribir el archivo?',  mtConfirmation, [mbYes, mbNo, mbCancel], 0);

              //Edito el encomio al usuario
              Encomio:= 'Introduzca un nuevo nombre.';

              //Edito el rega�o al usuario
              Reganno:= 'Nombre de fichero no v�lido';
            end //Fin de 'idioma espa�ol'
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        //Notifico al usuario
                        RespDialog:= MessageDlg('A file with the name ' + NuevoNombre + '.sim' + ' already exist in the Internal Library. Do you want to overwrite the file?',  mtConfirmation, [mbYes, mbNo, mbCancel], 0);

                        //Edito el encomio al usuario
                        Encomio:= 'Enter a new name.';

                        //Edito el rega�o al usuario
                        Reganno:= 'Invalid file name';
                      end;
                end;

        //Compruebo la respuesta ya dada por el usuario
        if (  RespDialog  = mrCancel   )
          then
            begin //Cancelar
              //Salgo de la funci�n sin hacer nada
              goto Salida;
            end  //Fin de 'Cancelar'
              else
                begin     
                  if (  RespDialog  = mrYes   )
                    then
                      begin //Sobrescribir
                        //Especifico el archivo a crear (*.sim con el mismo nombre, para reescribir) (Sistema ZipTV)
                        //MakeCabSimulacionImagenes.ArchiveFile := ExtractFilePath(Application.ExeName) + 'Library\' + NuevoNombre + '.Sim';  // archive filename

                        //Especifico el archivo a crear (*.sim con el mismo nombre, para reescribir) (Sistema Aravil CAB Component)
                        aCabWr.Open(ExtractFilePath(Application.ExeName) + 'Library\' + NuevoNombre + '.Sim');

                      end  //Fin de 'Sobrescribir'
                        else
                          begin
                            if (  RespDialog  =  mrNo  )
                              then
                                begin //No sobrescribir
                                  //Debo pedirle otro nombre
                                  PedirNombre:

                                  //NuevoNombre:= InputBox('Caption', Encomio, '');
                                  if (  InputQuery('', Encomio, NuevoNombre) = True  )
                                    then
                                      begin
                                        //Debo eliminar los espacios vacios al inicio del nombre tecleado
                                        Temporal:= QuitarEspaciosVaciosAlInicio(NuevoNombre);

                                        //Reescribo el temporal hacia el nombre nuevo
                                        NuevoNombre:= Temporal;

                                        //Compruebo si introdujo algun valor
                                        if (NombreValidoParaFichero(NuevoNombre) = True)
                                          then
                                            begin //Nombre valido
                                              //Paso al lazo, para volver a comprobar si existe
                                              goto Comprobacion;
                                            end  //Fin de 'Nombre valido'
                                              else
                                                begin  //Nombre no valido
                                                  //Le digo al usuario que no sirve lo tecleado
                                                  ShowMessage(Reganno);

                                                  //Vuelvo a pedir el 2do nombre
                                                  goto PedirNombre;
                                                end;   //Fin de 'Nombre no valido'
                                      end
                                        else
                                          begin //Cancelaron la entrada
                                            //Salgo de la funci�n sin hacer nada
                                            goto Salida;
                                          end;
                                end  //Fin de 'No sobrescribir'
                          end;
                end;
      end    //Fin de 'Existe el archivo'
        else
          begin  //No existe el archivo
            //Especifico el archivo a crear (*.sim) (Sistema ZipTV)
            //MakeCabSimulacionImagenes.ArchiveFile := ExtractFilePath(Application.ExeName) + 'Library\' + NuevoNombre + '.Sim';  // archive filename

            //Especifico el archivo a crear (*.sim) (Sistema Aravil CAB Component)
            aCabWr.Open(ExtractFilePath(Application.ExeName) + 'Library\' + NuevoNombre + '.Sim');
            
          end;   //Fin de 'No existe el archivo'

{
  //Dispongo los atributos necesarios (Sistema ZipTV)
  MakeCabSimulacionImagenes.DateAttribute := daFileDate; // default value
  MakeCabSimulacionImagenes.StoredDirNames := sdRelative; // default value
  MakeCabSimulacionImagenes.CompressMethod := cmDeflate; // default value
  MakeCabSimulacionImagenes.RecurseDirs := False; // default = False
  MakeCabSimulacionImagenes.Switch := swAdd;            // default value
  //MakeCab1.StoreEmptySubDirs := False;     // default value
  //MakeCab1.EncryptHeaders := CheckBox1.Checked; // default = False

  //Limpio (Sistema ZipTV)
  MakeCabSimulacionImagenes.ExcludeSpec.Clear();
  MakeCabSimulacionImagenes.FileSpec.Clear();
}







   //En dependencia del tipo de archivo abierto
   if (ExtensionDelArchivoAbiertoSimulacionImagenes = 'sim')
     then
       begin //Archivo sim abierto
         //Le agrego la imagen bmp guardada en archivos temporales de la libreria, al archivo SIM (Sistema ZipTV)
         //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\YourBmpHere.BMP');

         //Le agrego la imagen bmp guardada en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
         aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\YourBmpHere.BMP', 'YourBmpHere.BMP');



         //Creo un archivo para el zoom
         FicheroZoomImagen:= TFicheroZoomImagen.New;

         //Cargo un fichero desde los temporales de la libreria, para que no siga dando error (out of bounds)
         FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

         //Relleno el fichero con el zoom de la imagen
         FicheroZoomImagen.SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes( IntToStr(AumentoSimulacionImagenes) );

         //Salvo el fichero en archivos temporales de la libreria
         FicheroZoomImagen.SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

         //Libero el archivo de zoom
         FicheroZoomImagen.Free;

         //Le agrego el archivo de zoom guardado en archivos temporales de la libreria, al archivo SIM (Sistema ZipTV)
         //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt');

         //Le agrego el archivo de zoom guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
         aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Zoom.txt', 'Zoom.txt');



        //Creo un fichero de comentarios
        FicheroComentarios:= TFicheroComentarios.New;

        //Cargo un fichero de comentarios desde los temporales de la libreria, para que no siga dando error (out of bounds)
        FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'Library\TempFiles\Commentaries.txt');

        //Relleno el fichero con los comentarios de la imagen
        FicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(ComentariosSimulacionImagenes);

        //Salvo el fichero en archivos temporales de la libreria
        FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt');

        //Libero el archivo de comentarios
        FicheroComentarios.Free;

        //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema ZipTV)
        //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt');

         //Le agrego el archivo de comentarios guardado en archivos temporales de la libreria, al archivo SIM (Sistema Aravil CAB Component)
         aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'Library\TempFiles\Commentaries.txt', 'Commentaries.txt');

       end   //Fin de archivo sim abierto
         else
           begin //Archivos bmp o jpg abiertos
             //Le agrego la imagen bmp guardada en archivos temporales al archivo SIM (Sistema ZipTV)
             //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP');

             //Le agrego la imagen bmp guardada en archivos temporales, al archivo SIM (Sistema Aravil CAB Component)
             aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\YourBmpHere.BMP', 'YourBmpHere.BMP');




             //Creo un archivo para el zoom
             FicheroZoomImagen:= TFicheroZoomImagen.New;

             //Cargo un fichero desde los temporales, para que no siga dando error (out of bounds)
             FicheroZoomImagen.CargarZoomDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

             //Relleno el fichero con el zoom de la imagen
             FicheroZoomImagen.SetZoomDeImagenExtraidaDesdeSIMSimulacionImagenes( IntToStr(AumentoSimulacionImagenes) );

             //Salvo el fichero en archivos temporales
             FicheroZoomImagen.SalvarZoomDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

             //Libero el archivo
             FicheroZoomImagen.Free;

             //Le agrego el archivo de zoom guardado en archivos temporales al archivo SIM (Sistema ZipTV)
             //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt');

             //Le agrego el archivo de zoom guardado en archivos temporales, al archivo SIM (Sistema Aravil CAB Component)
             aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\Zoom.txt', 'Zoom.txt');




            //Creo un fichero de comentarios
            FicheroComentarios:= TFicheroComentarios.New;

            //Cargo un fichero de comentarios desde los temporales, para que no siga dando error (out of bounds)
            //FicheroComentarios.CargarComentariosDeImagenExtraidaDesdeSIM(ExtractFilePath(Application.ExeName) +  'TempFiles\Commentaries.txt');

            //Relleno el fichero con los comentarios de la imagen (vacios, por supuesto)
            FicheroComentarios.SetComentariosNuevosDeImagenExtraidaDesdeSIMSimulacionImagenes(TStringList(MemoComentariosSimulacionImagenes.Lines));

            //Salvo el fichero en archivos temporales
            FicheroComentarios.SalvarComentariosDeImagenExtraidaDesdeSIMSimulacionImagenes(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt');

            //Libero el archivo de comentarios
            FicheroComentarios.Free;

            //Le agrego el archivo de comentarios guardado en archivos temporales, al archivo SIM (Sistema ZipTV)
            //MakeCabSimulacionImagenes.FileSpec.Add(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt');

           //Le agrego el archivo de comentarios guardado en archivos temporales, al archivo SIM (Sistema Aravil CAB Component)
           aCabWr.AddFile(ExtractFilePath(Application.ExeName) + 'TempFiles\Commentaries.txt', 'Commentaries.txt');
           end;  //Fin de archivos bmp o jpg abiertos

  //ExtractFilePath(Application.ExeName) + 'Library\TempFiles\' + aFolderName + '\Zoom\Zoom.txt

{
  // ****************************************************************
  // NOTE: for a better understanding of how the Attributes property
  // works with file attributes see demo demos\filescan\fs_demo.dpr.
  // ****************************************************************

  // See the Attributes property in the object inspector (Sistema ZipTV)
  // Set MakeCab1 Attributes property by calling the SetAttribute method
  MakeCabSimulacionImagenes.SetAttribute(fsZeroAttr, True); // default
  MakeCabSimulacionImagenes.SetAttribute(fsArchive, True); // default
  MakeCabSimulacionImagenes.SetAttribute(fsDirectory, True); // default = False
  MakeCabSimulacionImagenes.SetAttribute(fsHidden, True); // default = False
  MakeCabSimulacionImagenes.SetAttribute(fsReadOnly, True); // default
  MakeCabSimulacionImagenes.SetAttribute(fsSysFile, True); // default = False

  // See the AttributesEx property in teh object inspector
  // Set the AttributesEx property by calling the SetAttributeEx method. (Sistema ZipTV)
  // Exclude none
  MakeCabSimulacionImagenes.SetAttributeEx(fsZeroAttr, False); // default
  MakeCabSimulacionImagenes.SetAttributeEx(fsArchive, False); // default
  MakeCabSimulacionImagenes.SetAttributeEx(fsDirectory, False); // default
  MakeCabSimulacionImagenes.SetAttributeEx(fsHidden, False); // default
  MakeCabSimulacionImagenes.SetAttributeEx(fsReadOnly, False); // default
  MakeCabSimulacionImagenes.SetAttributeEx(fsSysFile, False); // default

  // *****************************************
  // Call the Compress method (Sistema ZipTV)
  // *****************************************

  MakeCabSimulacionImagenes.Compress();
  //FilesCompressed := MakeCabSimulacionImagenes.Compress();
  //ShowMessage('Files Compressed: ' + IntToStr(FilesCompressed));
}



  //Cierro el fichero comprimido (Sistema Aravil CAB Component)
  aCabWr.Close;

  //Libero el componente de compresi�n (Sistema Aravil CAB Component)
  aCabWr.Free;



  //Actualizo el FileListBox
  FileListBoxSimulacionImagenes.Update;

  //Label de salida del procedimiento
  Salida:

  //Verifico si hay al menos un archivo en el FileListBox (Biblioteca Interna)
  if (FileListBoxSimulacionImagenes.Count <> 0)
    then
      begin
        //Habilito el LabelButton
        lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= True;
      end
        else
          begin
            //Deshabilito el LabelButton
            lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled:= False;
          end;



  Cursor := crDefault;
  //If frmErrorMsgs._ListView1.Items.Count > 0 Then     frmErrorMsgs.ShowModal();
end;



function TfrmPrincipal.DesencriptarBitmap(aBitmap: TBitmap): TBitmap;
var
  BitmapTemporal: TBitmap;
begin
  BitmapTemporal:= aBitmap;
  //Paso el bitmap que recibo y engordo el ATImageBox temporal
  ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap:= BitmapTemporal;

  RedimensionarImagenTemporalSimulacionImagenes;

  //Creo la libreria
  //FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);
  FreeImageLibrary:= TPixTwix.Create(nil);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Paso la imagen, ya engordada, a la libreria
  FreeImageLibrary.Picture:= ATImageBoxTemporalSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Desencriptaci�n
  If (FreeImageLibrary.Decrypt('desfasatorpasswordofsimopticforever') = True)
    Then
      begin
        //Envio la imagen ya desencriptada al ATImageBox temporal
        ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;

          //Libero la variable
  FreeImageLibrary.Free;
  
        RecortarImagenTemporalSimulacionImagenes;
        Result:=  ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap;
        //Recorto el ATImageBox temporal y lo saco como resultado de la funcion
        //Result:= RecortarImagen(ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap);

      end;
      

end;



function TfrmPrincipal.EncriptarBitmap(aBitmap: TBitmap): TBitmap;
var
  BitmapTemporal: TBitmap;
begin
  BitmapTemporal:= aBitmap;
  
  //Paso el bitmap que recibo y engordo el ATImageBox temporal
  //ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap:= RedimensionarImagen(BitmapTemporal);

  ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap:= BitmapTemporal;

  RedimensionarImagenTemporalSimulacionImagenes;

  //Creo la libreria
  //FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);
  FreeImageLibrary:= TPixTwix.Create(nil);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Paso la imagen, ya engordada, a la libreria
  FreeImageLibrary.Picture:= ATImageBoxTemporalSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Encriptaci�n
  If (FreeImageLibrary.Encrypt('desfasatorpasswordofsimopticforever') = True)
    Then
      begin
        //Envio la imagen ya procesada al ATImageBox temporal
        ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;

        //Libero la variable
        FreeImageLibrary.Free;

        RecortarImagenTemporalSimulacionImagenes;
        Result:=  ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap;
        //Recorto el ATImageBox temporal y lo saco como resultado de la funcion
        //Result:= RecortarImagen(ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap);
        
      end;
end;



function TfrmPrincipal.RecortarImagen(aBitmap: TBitmap): TBitmap;
var
  SourceRect, DestRect: TRect;
  SourceBMP, DestBMP  : TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas del bitmap recibido
  Ancho:= aBitmap.Width;
  Altura:= aBitmap.Height;

  //Luego creo los bitmap temporales
  SourceBMP := TBitmap.Create;
  DestBMP := TBitmap.Create;

  //Altero las diensiones del bitmap origen
  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio toda la info de la imagen temporal (con borde incluido)
      Canvas.Draw(0, 0, aBitmap);
    end;

  //Conformo las dimensiones del TRect origen
  SourceRect.Left:= 50;
  SourceRect.Right:= 50;
  SourceRect.Top:= 50;
  SourceRect.Bottom:= 50;

  SourceRect.TopLeft.X:= 50;
  SourceRect.TopLeft.Y:= 50;

  SourceRect.BottomRight.X:= Ancho + 50;
  SourceRect.BottomRight.Y:= Altura + 50;

  //Conformo las dimensiones del TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.Y:= 0;

  DestRect.BottomRight.X:= Ancho;
  DestRect.BottomRight.Y:= Altura;

  //Defino las dimensiones del bitmap destino
  with DestBMP do
    begin
      Width := Ancho;
      Height := Altura;
    end;

  //Copio la informacion util (excluyo el borde en blanco)
  DestBMP.Canvas.CopyRect(DestRect, SourceBMP.Canvas, SourceRect);

  //Paso el bitmap destino de regreso, como resultado de la funcion
  Result:= DestBMP;

  //libero los bitmaps
  SourceBMP.Free;
  DestBMP.Free
end;



function TfrmPrincipal.RedimensionarImagen(aBitmap: TBitmap): TBitmap;
var
  SourceBMP: TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  Ancho:= aBitmap.Width;
  Altura:= aBitmap.Height;

  //Luego creo el bitmap temporal
  SourceBMP := TBitmap.Create;

  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio la informacion del bitmap recibido (queda un borde en blanco)
      Canvas.Draw(50, 50, aBitmap);

      //Lo llevo a 24 bits
      PixelFormat := pf24bit; 
      //SaveToFile(ExtractFilePath(Application.ExeName) + 'ImagenRedimensionada.BMP');
    end;

  //Envio el bitmap de regreso, como resultado de la funcion
  Result:= SourceBMP;

  //Libero el bitmap
  SourceBMP.Free;
end;



procedure TfrmPrincipal.DesencriptarBitmaps;
var pic: TPicture;
begin
  //Paso el original encriptado hacia el Original (Color Real)
  ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture;
{
  //Paso el original encriptado hacia el Original (Negativo)
  ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture;

  //Paso el original encriptado hacia el Original (Color Real + Escala Gris)
  ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture;
  
  //Paso el original encriptado hacia el Original (Negativo + Escala Gris)
  ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture;

  //Paso el original encriptado hacia el temporal
  ATImageBoxTemporalSimulacionImagenes.Image.Picture:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture;

  //*** (Solo faltar�a el de visualizaci�n, que ser� al final) ***
}

  

  //** 1ra conversion (de 5) **

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Redimensiono la imagen original (Color Real)
  RedimensionarImagenOriginalColorRealSimulacionImagenes;

  //Le paso la imagen (Color Real) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Desencriptacion
  If (FreeImageLibrary.Decrypt('desfasatorpasswordofsimopticforever') =  True)
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;
      
  //Libero la variable
  FreeImageLibrary.Free;

  //Recorto la imagen original (Color Real)
  RecortarImagenOriginalColorRealSimulacionImagenes;
  
  //Refresco el componente de almacenamiento (Color Real)
  ATImageBoxOriginalColorRealSimulacionImagenes.Image.Refresh;


{
  //** 2da conversion (de 5) **

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Redimensiono la imagen original (Negativo)
  RedimensionarImagenOriginalNegativoSimulacionImagenes;

  //Le paso la imagen (Negativo) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Desencriptacion
  If (FreeImageLibrary.Decrypt('desfasatorpasswordofsimopticforever') =  True)
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;
      
  //Libero la variable
  FreeImageLibrary.Free;

  //Recorto la imagen original (Negativo)
  RecortarImagenOriginalNegativoSimulacionImagenes;

  //Refresco el componente de almacenamiento (Negativo)
  ATImageBoxOriginalNegativoSimulacionImagenes.Image.Refresh;



  //** 3ra conversion (de 5) **

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Redimensiono la imagen original (Color Real + Escala Gris)
  RedimensionarImagenOriginalColorRealTonosGrisesSimulacionImagenes;

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Le paso la imagen (Color Real + Escala Gris) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Desencriptacion
  If (FreeImageLibrary.Decrypt('desfasatorpasswordofsimopticforever') =  True)
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;
      
  //Libero la variable
  FreeImageLibrary.Free;

  //Recorto la imagen original (Color Real + Escala Gris)
  RecortarImagenOriginalColorRealTonosGrisesSimulacionImagenes;

  //Refresco el componente de almacenamiento (Color Real + Escala Gris)
  ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Refresh;



  //** 4ta conversion (de 5) **

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Redimensiono la imagen original (Negativo + Escala Gris)
  RedimensionarImagenOriginalNegativoTonosGrisesSimulacionImagenes;

  //Le paso la imagen (Negativo + Escala Gris) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Desencriptacion
  If (FreeImageLibrary.Decrypt('desfasatorpasswordofsimopticforever') =  True)
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;
      
  //Libero la variable
  FreeImageLibrary.Free;

  //Recorto la imagen original (Negativo + Escala Gris)
  RecortarImagenOriginalNegativoTonosGrisesSimulacionImagenes;

  //Refresco el componente de almacenamiento (Negativo + Escala Gris)
  ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Refresh;



  //** 5ta conversion (de 5) **

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Redimensiono la imagen (temporal)
  RedimensionarImagenTemporalSimulacionImagenes;

  //Le paso la imagen (temporal) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxTemporalSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Desencriptacion
  If (FreeImageLibrary.Decrypt('desfasatorpasswordofsimopticforever') =  True)
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxTemporalSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;
      
  //Libero la variable
  FreeImageLibrary.Free;

  //Recorto la imagen (temporal)
  RecortarImagenTemporalSimulacionImagenes;

  //Refresco el componente de almacenamiento (temporal)
  ATImageBoxTemporalSimulacionImagenes.Image.Refresh;

}
  //Paso el original (Color Real, ya desencriptado) hacia el ATImageBox de visualizacion
  ATImageBoxSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

  //Guardo una copia en la variable global
  BitmapOriginalColorRealSimulacionImagenes:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap;

  //Paso el original (Color Real, ya desencriptado) hacia el Original (Negativo)
  ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

  //Paso el original (Color Real, ya desencriptado) hacia el Original (Color Real + Escala Gris)
  ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
  
  //Paso el original (Color Real, ya desencriptado) hacia el Original (Negativo + Escala Gris)
  ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

  //Paso el original (Color Real, ya desencriptado) hacia el temporal
  ATImageBoxTemporalSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

  //Paso el original (Color Real, ya desencriptado) hacia el de visualizaci�n
  //ATImageBoxSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
end;



procedure TfrmPrincipal.EncriptarBitmapEspecial;
var
  BitmapTemporal: TBitmap;
begin
  //** 1ra conversion  **

  //Creo la libreria
  FreeImageLibrary:= TPixTwix.Create(ATImageBoxTemporalSimulacionImagenes.Image);

  //Desbloqueo el componente como registrado
  FreeImageLibrary.Unlock('');

  //Redimensiono la imagen original (Color Real)
  RedimensionarImagenOriginalEncriptadaSimulacionImagenes;

  //Le paso la imagen (Encriptada) a la libreria
  FreeImageLibrary.Picture:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture;

  //Ejecuto el procedimiento de Desencriptacion
  If (FreeImageLibrary.Decrypt('desfasatorpasswordofsimopticforever') =  True)
    Then
      begin
        //Envio la imagen ya procesada, de regreso al componente de almacenamiento
        ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Handle := FreeImageLibrary.GetPictureHandle;
      end;
      
  //Libero la variable
  FreeImageLibrary.Free;

  //Recorto la imagen original (Color Real)
  RecortarImagenOriginalEncriptadaSimulacionImagenes;
  
  //Refresco el componente de almacenamiento (Encriptada)
  ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Refresh;
end;



procedure TfrmPrincipal.RecortarImagenOriginalColorRealSimulacionImagenes;
var
  SourceRect, DestRect: TRect;
  SourceBMP, DestBMP  : TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  //Ancho:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Width;
  //Altura:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Height;
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo los bitmap temporales
  SourceBMP := TBitmap.Create;
  DestBMP := TBitmap.Create;

  //Altero las diensiones del bitmap origen
  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio toda la info de la imagen original (Color Real) (con borde incluido)
      Canvas.Draw(0, 0, ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap);
    end;

  //Conformo las dimensiones del TRect origen
  SourceRect.Left:= 50;
  SourceRect.Right:= 50;
  SourceRect.Top:= 50;
  SourceRect.Bottom:= 50;

  SourceRect.TopLeft.X:= 50;
  SourceRect.TopLeft.Y:= 50;

  SourceRect.BottomRight.X:= Ancho + 50;
  SourceRect.BottomRight.Y:= Altura + 50;

  //Conformo las dimensiones del TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.Y:= 0;

  DestRect.BottomRight.X:= Ancho;
  DestRect.BottomRight.Y:= Altura;

  //Defino las dimensiones del bitmap destino
  with DestBMP do
    begin
      Width := Ancho;
      Height := Altura;
    end;

  //Copio la informacion util (excluyo el borde en blanco)
  DestBMP.Canvas.CopyRect(DestRect, SourceBMP.Canvas, SourceRect);

  //Paso el bitmap destino de regreso hacia la imagen original (Color Real)
  ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap:= DestBMP;

  //libero los bitmaps
  SourceBMP.Free;
  DestBMP.Free
end;



procedure TfrmPrincipal.RecortarImagenOriginalColorRealTonosGrisesSimulacionImagenes;
var
  SourceRect, DestRect: TRect;
  SourceBMP, DestBMP  : TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  //Ancho:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Width;
  //Altura:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Height;
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo los bitmap temporales
  SourceBMP := TBitmap.Create;
  DestBMP := TBitmap.Create;

  //Altero las diensiones del bitmap origen
  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio toda la info de la imagen original (Color Real + Tonos Grises) (con borde incluido)
      Canvas.Draw(0, 0, ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.Bitmap);
    end;

  //Conformo las dimensiones del TRect origen
  SourceRect.Left:= 50;
  SourceRect.Right:= 50;
  SourceRect.Top:= 50;
  SourceRect.Bottom:= 50;

  SourceRect.TopLeft.X:= 50;
  SourceRect.TopLeft.Y:= 50;

  SourceRect.BottomRight.X:= Ancho + 50;
  SourceRect.BottomRight.Y:= Altura + 50;

  //Conformo las dimensiones del TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.Y:= 0;

  DestRect.BottomRight.X:= Ancho;
  DestRect.BottomRight.Y:= Altura;

  //Defino las dimensiones del bitmap destino
  with DestBMP do
    begin
      Width := Ancho;
      Height := Altura;
    end;

  //Copio la informacion util (excluyo el borde en blanco)
  DestBMP.Canvas.CopyRect(DestRect, SourceBMP.Canvas, SourceRect);

  //Paso el bitmap destino de regreso hacia la imagen original (Color Real + Tonos Grises)
  ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.Bitmap:= DestBMP;

  //libero los bitmaps
  SourceBMP.Free;
  DestBMP.Free
end;



procedure TfrmPrincipal.RecortarImagenOriginalNegativoSimulacionImagenes;
var
  SourceRect, DestRect: TRect;
  SourceBMP, DestBMP  : TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  //Ancho:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Width;
  //Altura:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Height;
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo los bitmap temporales
  SourceBMP := TBitmap.Create;
  DestBMP := TBitmap.Create;

  //Altero las diensiones del bitmap origen
  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio toda la info de la imagen original (Negativo) (con borde incluido)
      Canvas.Draw(0, 0, ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap);
    end;

  //Conformo las dimensiones del TRect origen
  SourceRect.Left:= 50;
  SourceRect.Right:= 50;
  SourceRect.Top:= 50;
  SourceRect.Bottom:= 50;

  SourceRect.TopLeft.X:= 50;
  SourceRect.TopLeft.Y:= 50;

  SourceRect.BottomRight.X:= Ancho + 50;
  SourceRect.BottomRight.Y:= Altura + 50;

  //Conformo las dimensiones del TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.Y:= 0;

  DestRect.BottomRight.X:= Ancho;
  DestRect.BottomRight.Y:= Altura;

  //Defino las dimensiones del bitmap destino
  with DestBMP do
    begin
      Width := Ancho;
      Height := Altura;
    end;

  //Copio la informacion util (excluyo el borde en blanco)
  DestBMP.Canvas.CopyRect(DestRect, SourceBMP.Canvas, SourceRect);

  //Paso el bitmap destino de regreso hacia la imagen original (Negativo)
  ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap:= DestBMP;

  //libero los bitmaps
  SourceBMP.Free;
  DestBMP.Free
end;



procedure TfrmPrincipal.RecortarImagenOriginalNegativoTonosGrisesSimulacionImagenes;
var
  SourceRect, DestRect: TRect;
  SourceBMP, DestBMP  : TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  //Ancho:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Width;
  //Altura:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Height;
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo los bitmap temporales
  SourceBMP := TBitmap.Create;
  DestBMP := TBitmap.Create;

  //Altero las diensiones del bitmap origen
  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio toda la info de la imagen original (Negativo + Tonos Grises) (con borde incluido)
      Canvas.Draw(0, 0, ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.Bitmap);
    end;

  //Conformo las dimensiones del TRect origen
  SourceRect.Left:= 50;
  SourceRect.Right:= 50;
  SourceRect.Top:= 50;
  SourceRect.Bottom:= 50;

  SourceRect.TopLeft.X:= 50;
  SourceRect.TopLeft.Y:= 50;

  SourceRect.BottomRight.X:= Ancho + 50;
  SourceRect.BottomRight.Y:= Altura + 50;

  //Conformo las dimensiones del TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.Y:= 0;

  DestRect.BottomRight.X:= Ancho;
  DestRect.BottomRight.Y:= Altura;

  //Defino las dimensiones del bitmap destino
  with DestBMP do
    begin
      Width := Ancho;
      Height := Altura;
    end;

  //Copio la informacion util (excluyo el borde en blanco)
  DestBMP.Canvas.CopyRect(DestRect, SourceBMP.Canvas, SourceRect);

  //Paso el bitmap destino de regreso hacia la imagen original (Negativo + Tonos Grises)
  ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.Bitmap:= DestBMP;

  //libero los bitmaps
  SourceBMP.Free;
  DestBMP.Free
end;



procedure TfrmPrincipal.RedimensionarImagenOriginalColorRealSimulacionImagenes;
var
  SourceBMP: TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo el bitmap temporal
  SourceBMP := TBitmap.Create;

  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio la informacion del ATImageBox (Color Real) (queda un borde en blanco)
      Canvas.Draw(50, 50, ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap);

      //Lo llevo a 24 bits
      PixelFormat := pf24bit; 
      //SaveToFile(ExtractFilePath(Application.ExeName) + 'ImagenRedimensionada.BMP');
    end;

  //Envio el bitmap de regreso hacia el original (Color Real)
  ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap:= SourceBMP;

  //Libero el bitmap
  SourceBMP.Free;
end;



procedure TfrmPrincipal.RedimensionarImagenOriginalColorRealTonosGrisesSimulacionImagenes;
var
  SourceBMP: TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo el bitmap temporal
  SourceBMP := TBitmap.Create;

  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio la informacion del ATImageBox (Color Real + Tonos Grises) (queda un borde en blanco)
      Canvas.Draw(50, 50, ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.Bitmap);

      //Lo llevo a 24 bits
      PixelFormat := pf24bit; 
      //SaveToFile(ExtractFilePath(Application.ExeName) + 'ImagenRedimensionada.BMP');
    end;

  //Envio el bitmap de regreso hacia el original (Color Real + Tonos Grises)
  ATImageBoxOriginalColorRealEscalaGrisSimulacionImagenes.Image.Picture.Bitmap:= SourceBMP;

  //Libero el bitmap
  SourceBMP.Free;
end;



procedure TfrmPrincipal.RedimensionarImagenOriginalNegativoSimulacionImagenes;
var
  SourceBMP: TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo el bitmap temporal
  SourceBMP := TBitmap.Create;

  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio la informacion del ATImageBox (Negativo) (queda un borde en blanco)
      Canvas.Draw(50, 50, ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap);

      //Lo llevo a 24 bits
      PixelFormat := pf24bit; 
      //SaveToFile(ExtractFilePath(Application.ExeName) + 'ImagenRedimensionada.BMP');
    end;

  //Envio el bitmap de regreso hacia el original (Negativo)
  ATImageBoxOriginalNegativoSimulacionImagenes.Image.Picture.Bitmap:= SourceBMP;

  //Libero el bitmap
  SourceBMP.Free;
end;



procedure TfrmPrincipal.RedimensionarImagenOriginalNegativoTonosGrisesSimulacionImagenes;
var
  SourceBMP: TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo el bitmap temporal
  SourceBMP := TBitmap.Create;

  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio la informacion del ATImageBox (Negativo + Tonos Grises) (queda un borde en blanco)
      Canvas.Draw(50, 50, ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.Bitmap);

      //Lo llevo a 24 bits
      PixelFormat := pf24bit; 
      //SaveToFile(ExtractFilePath(Application.ExeName) + 'ImagenRedimensionada.BMP');
    end;

  //Envio el bitmap de regreso hacia el original (Negativo + Tonos Grises)
  ATImageBoxOriginalNegativoEscalaGrisSimulacionImagenes.Image.Picture.Bitmap:= SourceBMP;

  //Libero el bitmap
  SourceBMP.Free;
end;



procedure TfrmPrincipal.RecortarImagenOriginalEncriptadaSimulacionImagenes;
var
  SourceRect, DestRect: TRect;
  SourceBMP, DestBMP  : TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  //Ancho:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Width;
  //Altura:= ATImageBoxSimulacionImagenes.Image.Picture.Bitmap.Height;
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width - 100;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height - 100;

  //Luego creo los bitmap temporales
  SourceBMP := TBitmap.Create;
  DestBMP := TBitmap.Create;

  //Altero las diensiones del bitmap origen
  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio toda la info de la imagen original (Encriptada) (con borde incluido)
      Canvas.Draw(0, 0, ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap);
    end;

  //Conformo las dimensiones del TRect origen
  SourceRect.Left:= 50;
  SourceRect.Right:= 50;
  SourceRect.Top:= 50;
  SourceRect.Bottom:= 50;

  SourceRect.TopLeft.X:= 50;
  SourceRect.TopLeft.Y:= 50;

  SourceRect.BottomRight.X:= Ancho + 50;
  SourceRect.BottomRight.Y:= Altura + 50;

  //Conformo las dimensiones del TRect destino
  DestRect.Left:= 0;
  DestRect.Right:= 0;
  DestRect.Top:= 0;
  DestRect.Bottom:= 0;

  DestRect.TopLeft.X:= 0;
  DestRect.TopLeft.Y:= 0;

  DestRect.BottomRight.X:= Ancho;
  DestRect.BottomRight.Y:= Altura;

  //Defino las dimensiones del bitmap destino
  with DestBMP do
    begin
      Width := Ancho;
      Height := Altura;
    end;

  //Copio la informacion util (excluyo el borde en blanco)
  DestBMP.Canvas.CopyRect(DestRect, SourceBMP.Canvas, SourceRect);

  //Paso el bitmap destino de regreso hacia la imagen original (Encriptada)
  ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap:= DestBMP;

  //libero los bitmaps
  SourceBMP.Free;
  DestBMP.Free
end;



procedure TfrmPrincipal.RedimensionarImagenOriginalEncriptadaSimulacionImagenes;
var
  SourceBMP: TBitmap;
  Ancho, Altura: Integer;
begin
  //Primero tomo las medidas de la imagen inicial
  Ancho:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Width;
  Altura:= ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap.Height;

  //Luego creo el bitmap temporal
  SourceBMP := TBitmap.Create;

  with SourceBMP do
    begin
      //Altero las diensiones del bitmap inicial
      Width := Ancho + 100;
      Height := Altura + 100;

      //Copio la informacion del ATImageBox (Encriptado) (queda un borde en blanco)
      Canvas.Draw(50, 50, ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap);

      //Lo llevo a 24 bits
      PixelFormat := pf24bit; 
      //SaveToFile(ExtractFilePath(Application.ExeName) + 'ImagenRedimensionada.BMP');
    end;

  //Envio el bitmap de regreso hacia el original (Encriptado)
  ATImageBoxOriginalEncriptadoSimulacionImagenes.Image.Picture.Bitmap:= SourceBMP;

  //Libero el bitmap
  SourceBMP.Free;
end;



procedure TfrmPrincipal.OnFormaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //Refresco la forma
  Refresh;
end;



procedure TfrmPrincipal.OnFormaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  //Refresco
  Refresh;
end;



procedure TfrmPrincipal.SpeedButtonImprimirSimulacionImagenesClick(
  Sender: TObject);
begin
  //Especifico que el destino sea como impresi�n
  RvSystemSimulacionImagenes.DefaultDest    := rdPrinter;

  //Ejecuto el rvSystem
  RvSystemSimulacionImagenes.Execute; 
end;



procedure TfrmPrincipal.SubMenuImprimirClick(Sender: TObject);
begin
  //Se ejecuta el SpeedButton correspondiente
  if (SpeedButtonImprimirSimulacionImagenes.Enabled = True)
    then
      begin
        //Le doy click
        SpeedButtonImprimirSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.edtFiltroBibliotecaInternaSimulacionImagenesChange(
  Sender: TObject);
begin
  //Valido para que el primer caracter no sea un punto y para que el primer caracter no sea un espacio
  if (   (AnsiLeftStr(Trim(edtFiltroBibliotecaInternaSimulacionImagenes.Text), 1) = '.'   ) or (AnsiLeftStr(edtFiltroBibliotecaInternaSimulacionImagenes.Text, 1) = ' ')   )
    then
      begin
        //Limpio el edit
        edtFiltroBibliotecaInternaSimulacionImagenes.Clear;
      end;
          
  //Aqui modifico el filter del FileListBox
  FileListBoxSimulacionImagenes.Mask:= edtFiltroBibliotecaInternaSimulacionImagenes.Text + '*.sim';

  //Actualizo el FileListBox
  FileListBoxSimulacionImagenes.Update;
end;



procedure TfrmPrincipal.edtFiltroBibliotecaInternaSimulacionImagenesKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para que el primer caracter no sea un punto
  if (   Trim(AnsiLeftStr(edtFiltroBibliotecaInternaSimulacionImagenes.Text, 1)) = '.')
    then
      begin
        //Limpio el edit
        edtFiltroBibliotecaInternaSimulacionImagenes.Clear;
      end;

  //Valido para caracteres no validos
  if (Key in['/', '\', ':', '?', '�', '*', '"', '<', '>'])
    then
      begin
        Abort;
      end;
end;



procedure TfrmPrincipal.SubMenuBlogDelSistemaClick(Sender: TObject);
begin
  //Accedo al URL del Blog del sistema SimOptic 2008
  ShellExecute(GetDesktopWindow(),
                 nil,
                 pChar('http://simoptic.blogspot.com/'),
                 nil,
                 nil,
                 SW_SHOWNORMAL);

end;



procedure TfrmPrincipal.SubMenuEdicionBorrarArchivoSIMClick(
  Sender: TObject);
begin
  //Ejecuto el LabelButton correspondiente
  if (lblbtnBorrarArchivoSIMSimulacionImagenes.Enabled = True)
    then
      begin
        //Le doy click
        lblbtnBorrarArchivoSIMSimulacionImagenes.Click;
      end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteSimulacionImagenesClick(Sender: TObject);
var
  Bitmap, BitmapCopyright : TBitmap;
begin
  //*** Usando RaveReport ***
  //Especifico que el destino sea como Vista Previa
  //RvSystemSimulacionImagenes.DefaultDest    := rdPreview;

  //Ejecuto el rvSystem
  //RvSystemSimulacionImagenes.Execute;




  //*** Usando QuickReport ***
  //Limpio el Memo de muela de reportes
  MemoMuelaSimulacionImagenes.Clear;

  //Paso la info del Memo de comentarios al Memo de muela de reportes
  MemoMuelaSimulacionImagenes.Text:= MemoComentariosSimulacionImagenes.Text;

  //Creo un bitmap temporal para la muestra
  Bitmap := TBitmap.Create;

  //Creo un bitmap temporal para el Copyright
  BitmapCopyright := TBitmap.Create;

  //Salvo la imagen del ATImageBox de Color Real
  //ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap.SaveToFile( ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

  //Paso la imagen del ATImageBox de Color Real hacia el bitmap temporal para la muestra
  //Bitmap  := ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap;

  //Bitmap.Assign(ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture.Bitmap);
  Bitmap.Assign(BitmapOriginalColorRealSimulacionImagenes);

  //Ahora paso la imagen del ATImageBoc Original (Color Real) hacia un TImage de reporte
  //ImageReportesSimulacionImagenes.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
  //ImageReportesSimulacionImagenes.Picture.Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

  //Cargo el archivo bmp en el bitmap temporal para la muestra
  //Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

  //Cargo el bitmap para el Copyright (Mide 18 de ancho y 131 de alto)
  BitmapCopyright.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Images\Copyright.bmp');

  //Incrusto el bitmap Copyright en el de la muestra  (debo mejorarlo. La posicion del copyright debe automatizarse. No deben ser coordenadas fijas)
  //Bitmap.Canvas.Draw(622, 349, BitmapCopyright);
  Bitmap.Canvas.Draw(Bitmap.Width - 18, Bitmap.Height - 131, BitmapCopyright);


  //Relleno los valores adicionales en el reporte
  QuickReportSimulacionImagenes.QRlblMuestra.Caption:= 'Muestra: ' + NombreUtilDelArchivoAbiertoSimulacionImagenes + '.';
  QuickReportSimulacionImagenes.QRLabelFechaEmitido.Caption:= 'Emitido en: ' + ObtenerFechaDelSistema;
  //QuickReportSimulacionImagenes.QRImageMuestra.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
  QuickReportSimulacionImagenes.QRImageMuestra.Picture.Bitmap:= Bitmap;
  QuickReportSimulacionImagenes.QRImageMuestra.Refresh;  //La imagen se quedaba negra, y ahora ya no, gracias a esto.
  QuickReportSimulacionImagenes.QRMemoComentarios.Lines:= MemoMuelaSimulacionImagenes.Lines;

  //Envio datos adicionales para el Preview
  frmPreviewReporteSimulacionImagenes.IdiomaImperante:= IdiomaImperante;
  frmPreviewReporteSimulacionImagenes.NombreMuestra:= NombreUtilDelArchivoAbiertoSimulacionImagenes;
  frmPreviewReporteSimulacionImagenes.FechaDelSistema:= ObtenerFechaDelSistema;
  frmPreviewReporteSimulacionImagenes.ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;
  frmPreviewReporteSimulacionImagenes.MemoComentariosSimulacionImagenes.Lines:= MemoMuelaSimulacionImagenes.Lines;

  //Libero memoria del bitmap temporal para la muestra
  Bitmap.Free;

  //Libero memoria del bitmap temporal para el Copyright
  BitmapCopyright.Free;

  //Borro la imagen temporal del reporte (no encriptada)
  //DeleteFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');

  //Muestro el reporte (Quick Report, vista previa)
  QuickReportSimulacionImagenes.PreviewModal;

  QuickReportSimulacionImagenes.QRImageLogo.Refresh;
  QuickReportSimulacionImagenes.QRImageMuestra.Refresh;
end;



procedure TfrmPrincipal.RvSystemSimulacionImagenesBeforePrint(Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    SetPaperSize(1, 215.9, 279.4);
  end;
end;



procedure TfrmPrincipal.RvSystemSimulacionImagenesPrint(Sender: TObject);
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
    PrintTab('Colaboraci�n CENAPET - CECAM - IMSS');
    NewLine;
    PrintTab('URL: http://www.simoptic.blogspot.com/');
    NewLine;
    PrintTab('EMails: reiniermillenium@gmail.com');
    NewLine;
    PrintTab('             rolando.hdez@yahoo.com');
    NewLine;
    PrintTab('             mayelinespino@gmail.com');    
    NewLine;
    PrintTab('             ramosgregorio@hotmail.com');       
    NewLine;
    NewLine;

    SetFont('Arial', 11);
    Bold := True;
    PrintCenter('Simulador de Microscopio �ptico', 105.95);
    NewLine;
    PrintCenter('SimOptic 2008 �', 105.95);
    NewLine;
    NewLine;
    ClearTabs;


    //Cargamos la imagen de la barrita
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Images\barrita.bmp');
    //Imprimirla
    //PrintBitmap(31.7, 58, 0.80, 0.80, Bitmap);
    PrintBitmap(31.7, 62, 0.80, 0.80, Bitmap);
    Bitmap.Free;

    //Configurando los titulares de la 1ra p�gina
    SetFont('Arial', 14);
    Bold:= True;

    GotoXY(31.7, 70);
    //PrintCenter('Muestras de Citohistopatolog�a del C�rvix, destinadas', 105.95);
    PrintCenter('Muestras de Citohistopatolog�a del C�rvix', 105.95);
    //NewLine;
    //PrintCenter('a estudiantes de Tecnolog�a de la Salud.', 105.95);
    NewLine;
    NewLine;

    //Ponemos el t�tulo identificador del reporte
    SetFont('Arial', 12);
    Bold:= True;
    PrintLeft('Muestra: ' + NombreUtilDelArchivoAbiertoSimulacionImagenes, 31.7);
    PrintRight('Emitido en: ' + ObtenerFechaDelSistema, 190);
    NewLine;
    //NewLine;

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

    //Verifico el tama�o de los comentarios
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



function TfrmPrincipal.ObtenerFechaDelSistema: String;
var 
   stSystemTime : TSystemTime;
begin 
   Windows.GetLocalTime( stSystemTime );
   Result := AnsiLeftStr(   DateTimeToStr( SystemTimeToDateTime( stSystemTime ) ), 10   );
end;



procedure TfrmPrincipal.lblbtnExportarHaciaPDFSimulacionImagenesClick(Sender: TObject);
begin
  //Le cambio el Caption al sistema, por una cuesti�n informativa y de apariencia tambi�n.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPrincipal.Caption:= 'SimOptic 2008. Exportando el Reporte a PDF, para la muestra ' + NombreUtilDelArchivoAbiertoSimulacionImagenes  + '.';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPrincipal.Caption:= 'SimOptic 2008. Exporting the Report to PDF format, for the sample ' + NombreUtilDelArchivoAbiertoSimulacionImagenes  + '.';
                end;
          end;


  
  //Oculto los botones de "Generar Reporte" de las Planillas Provinciales

  //Oculto el SpeedButton de "Generar Reporte"

  //Oculto la opci�n de "Generar Reporte" en el MainMenu



  //---------- *** Esta es la parte donde debo implementar la generaci�n de Reportes *** ----------







  
  //---- *** A partir de aqu� exporto el reporte hacia PDF *** ----


  //Usando Rave Report
  //Especifico que el destino sea como fichero
  RvSystemSimulacionImagenes.DefaultDest    := rdFile;

  //Especifico que la salida nativa sea falsa (�?)
  RvSystemSimulacionImagenes.DoNativeOutput := false;

  //Le quito a la especificaci�n del rvSystem el que salga el cartelito de Setup
  RvSystemSimulacionImagenes.SystemSetups   :=   RvSystemSimulacionImagenes.SystemSetups - [ssAllowSetup];

  //Le paso el rvRender como objeto renderizador del rvSystem 
  RvSystemSimulacionImagenes.RenderObject   := RvRenderPDFSimulacionImagenes;

  //Epecifico las caracter�sticas del SaveDialog
  SaveDialogSimulacionImagenes.Filter       := 'Acrobat Reader|*.PDF';
  SaveDialogSimulacionImagenes.DefaultExt   := 'PDF';

  if SaveDialogSimulacionImagenes.Execute then
    begin
      //Limpio el SaveDialog
      //SaveDialogPlanillasProvinciales.Free;

      //La salida del rvSystem ser� la del SaveDialog
      RvSystemSimulacionImagenes.OutputFileName  := SaveDialogSimulacionImagenes.FileName;

      //Ejecuto el rvSystem
      RvSystemSimulacionImagenes.Execute;
    end;







{
   //Usando Quick Report
  //Relleno los valores adicionales en el reporte
  QuickReportSimulacionImagenes.QRlblMuestra.Caption:= 'Muestra: ' + NombreUtilDelArchivoAbiertoSimulacionImagenes + '.';
  QuickReportSimulacionImagenes.QRLabelFechaEmitido.Caption:= 'Emitido en: ' + ObtenerFechaDelSistema;
  QuickReportSimulacionImagenes.QRImageMuestra.Picture:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Picture;

  //Le envio el reporte hacia el ExportQR
  QuickReportSimulacionImagenes.Prepare;
  EXQR.Report := QuickReportSimulacionImagenes;

  //Mando a que el ExportQR exporte el reporte ya almacenado
  EXQR.ExportQR;

  //Prob� exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de di�logo
  //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del a�o ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
  //EXQR.ExportQRPDF('Hola', True); esta deber�a servir, pero no

  QuickReportSimulacionImagenes.QRPrinter.Free;
  QuickReportSimulacionImagenes.QRPrinter := nil;
}




  //---- *** A partir de aqu� restituyo el estado de los componentes *** ----

  //Muestro los botones de "Generar Reporte" de las Planillas Provinciales

  //Muestro el SpeedButton de "Generar Reporte"

  //Muestro la opci�n de "Generar Reporte" en el MainMenu






  //Le restituyo el Caption al sistema, por una cuesti�n informativa y de apariencia tambi�n.
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        frmPrincipal.Caption:= 'SimOptic 2008 - Simulador de Microscopio �ptico';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  frmPrincipal.Caption:= 'SimOptic 2008 - Optic Microscope Simulator';
                end;
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirImagenClick(Sender: TObject);
begin
 //
end;



function TfrmPrincipal.CalcularDistanciaEntrePuntos(Pa, Pb: TPoint; Redondear: Boolean): AnsiString;
var
  x, y, ppi: Integer;
  Incremento, c: Double;

  DistanciaAparente: Double;
  DistanciaRealPulgadas: Double;
  DistanciaRealMilimetros: Double;
begin
  //Pixels por pulgada
  ppi:= 300;

  //Calculo la distancia en pixels en el eje de las X (horizontal)
  x:= Abs( Pb.X - Pa.X );

  //Calculo la distancia en pixels en el eje de las Y (vertical)
  y:= Abs( Pb.Y - Pa.Y );

  //Calculo la distancia en pixels entre ambos puntos (float)
  c:= Sqrt(  Sqr(x) + Sqr(y)  );

  //Calculo el incremento artificial
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        //Determino el incremento
        //Incremento:= (   AumentoSimulacionImagenes * (TrackBarSimulacionImagenes.Position / 100)   );
        Incremento:= AumentoSimulacionImagenes;
      end;

  //Calculo la distancia aparente (en pulgadas)
  DistanciaAparente:= (c / ppi);

  //Calculo la distancia real (en pulgadas)  No var�a debido al aumento, por eso se elimina el aumento digital
  DistanciaRealPulgadas:= ( DistanciaAparente / Incremento );

  //Convierto de pulgadas a milimetros (1 plg = 25.4 mmm)
  DistanciaRealMilimetros:= DistanciaRealPulgadas * (25.4);

  //Saco el resultado en la unidad de medida adecuada (en dependencia del valor)
  if (   (DistanciaRealMilimetros = 1) or (DistanciaRealMilimetros > 1)   )
    then
      begin
        //En dependencia de si redondeo o no
        if (Redondear = True)
          then
            begin //Redondear
              //Convierto de milimetros a micrometros (1 mm = 1000 �m) y redondeo
              Result:= FloatToStr(   SimpleRoundTo(  DistanciaRealMilimetros, -3  )   ) + ' mm';
            end
              else
                begin  //No redondear
                  //Convierto de milimetros a micrometros (1 mm = 1000 �m)
                  Result:= FloatToStr(DistanciaRealMilimetros) + ' mm';
                end;
      end
        else
          begin
            if (   (DistanciaRealMilimetros = 0.001) or ((DistanciaRealMilimetros > 0.001) and (DistanciaRealMilimetros < 1))   )
              then
                begin
                  //En dependencia de si redondeo o no
                  if (Redondear = True)
                    then
                      begin //Redondear
                        //Convierto de milimetros a micrometros (1 mm = 1000 �m) y redondeo
                        Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 1000), -3  )   ) + ' �m';
                      end
                        else
                          begin  //No redondear
                            //Convierto de milimetros a micrometros (1 mm = 1000 �m)
                            Result:= FloatToStr(  DistanciaRealMilimetros * 1000) + ' �m';
                          end;
                end
                  else
                    begin
                      if (   (DistanciaRealMilimetros = 0.000001) or ((DistanciaRealMilimetros > 0.000001) and (DistanciaRealMilimetros < 0.001))   )
                        then
                          begin
                            //En dependencia de si redondeo o no
                            if (Redondear = True)
                              then
                                begin //Redondear
                                  //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                                  Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 1000000), -3  )   ) + ' nm';
                                end
                                  else
                                    begin  //No redondear
                                      //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                                      Result:= FloatToStr(  DistanciaRealMilimetros * 1000000) + ' nm';
                                    end;
                          end
                            else
                              begin
                                if (   (DistanciaRealMilimetros = 0.0000001) or ((DistanciaRealMilimetros > 0.0000001) and (DistanciaRealMilimetros < 0.000001))   )
                                  then
                                    begin
                                      //En dependencia de si redondeo o no
                                      if (Redondear = True)
                                        then
                                          begin //Redondear
                                            //Convierto de milimetros a �ngstroms (1 mm = 10 000 000 �ngstroms)
                                            Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 10000000), -3  )   ) + ' �ngstroms';
                                          end
                                            else
                                              begin  //No redondear
                                                //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                                                Result:= FloatToStr(  DistanciaRealMilimetros * 10000000) + ' �ngstroms';
                                              end;
                                    end
                                      else
                                        begin
                                          if (  DistanciaRealMilimetros = 0   )
                                            then
                                              begin
                                                //En dependencia del idioma
                                                if (IdiomaImperante = 'Espannol')
                                                  then
                                                    begin
                                                      //Doy cero como resultado
                                                      Result:= '0 unidades';
                                                    end
                                                      else
                                                        begin
                                                          if (IdiomaImperante = 'Ingles')
                                                            then
                                                              begin
                                                                //Doy cero como resultado
                                                                Result:= '0 units';
                                                              end
                                                        end;
                                              end;
                                        end;
                              end;
                    end;
          end;
end;



procedure TfrmPrincipal.ActualizarMostrarSimulacionImagenes;
begin
  //Administro la visualizacion de la mirilla
  if (chkMirillaSimulacionImagenes.Checked = True)
    then
      begin
        //Muestro la mirilla
        MostrarMirillaSimulacionImagenes;

        //Actualizo los SubMenus del Menu Ver
        SubMenuVerVisor.Checked:= True;
      end
        else
          begin
            //Oculto la mirilla
            OcultarMirillaSimulacionImagenes;

            //Actualizo los SubMenus del Menu Ver
            SubMenuVerVisor.Checked:= False;
          end;

  //Administro la visualizacion de las mediciones
  if (chkMedicionesSimulacionImagenes.Checked = True)
    then
      begin
        //Muestro las mediciones
        GroupBoxMedicionesSimulacionImagenes.Visible:= True;

        //Actualizo los SubMenus del Menu Ver
        SubMenuVerMediciones.Checked:= True;
      end
        else
          begin
            //Oculto las mediciones
            GroupBoxMedicionesSimulacionImagenes.Visible:= False;

            //Actualizo los SubMenus del Menu Ver
            SubMenuVerMediciones.Checked:= False;
          end;

  //Administro la visualizacion de los aumentos
  if (chkAumentosSimulacionImagenes.Checked = True)
    then
      begin
        //Muestro los aumentos
        GroupBoxAumentoSimulacionImagenes.Visible:= True;

        //Actualizo los SubMenus del Menu Ver
        SubMenuVerAumentos.Checked:= True;
      end
        else
          begin
            //Oculto aumentos
            GroupBoxAumentoSimulacionImagenes.Visible:= False;

            //Actualizo los SubMenus del Menu Ver
            SubMenuVerAumentos.Checked:= False;
          end;
end;



procedure TfrmPrincipal.lblbtnHerramientaMedirDistanciaSimulacionImagenesClick(
  Sender: TObject);
begin
  //Si no estaba calculando hasta ese momento...
  if (Calculando = False)
    then
      begin
        //... pues lo pongo a calcular ahora
        Calculando:= True;

        //Y adem�s especifico que debe entrarse el primer n�mero
        Turno:= 1;
      end
        else
          begin
            //Si se estaba calculando hasta ese momento...
            if (Calculando = True)
              then
                begin
                  //... pues ya no se est�
                  Calculando:= False;
                end;
          end;
end;



procedure TfrmPrincipal.SubMenuEdicionPrevisualizarReporteClick(
  Sender: TObject);
begin
  if (lblbtnPrevisualizarReporteSimulacionImagenes.Enabled = True)
    then
      begin
        //Ejecuto el LabelButton de Previsualizar Reporte
        lblbtnPrevisualizarReporteSimulacionImagenes.Click;
      end;
end;

procedure TfrmPrincipal.SubMenuEdicionExportarHaciaPDFClick(
  Sender: TObject);
begin
  if (lblbtnExportarHaciaPDFSimulacionImagenes.Enabled = True)
    then
      begin
        //Ejecuto el LabelButton de Exportar hacia PDF
        lblbtnExportarHaciaPDFSimulacionImagenes.Click;
      end;
end;

procedure TfrmPrincipal.KeysOnForm1F4(Sender: TObject; var Key: Word; Shift: TShiftState);
  Label Salida;
begin
  //Verifico que se haya cargado alguna imagen
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        //Verifico que se este calculando la distancia entre dos puntos
        if (Calculando = True)
          then
            begin
              //En dependencia del turno
              if (Turno = 1)
                then
                  begin
                    //Verifico que este el mouse encima del ATImageBox central
                    if (EstaEncimaImagenCentral = True)
                      then
                        begin
                          //Guardo los valores del 1er punto
                          PrimerPunto.X:= StrToInt(   FloatToStr(  SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosX) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)  )   );
                          PrimerPunto.Y:= StrToInt(   FloatToStr(  SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosY) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)  )   );
                        end;

                    //Paso al siguiente punto
                    Turno:= 2;

                    //Salgo de la funcion
                    goto Salida;
                  end
                    else
                      begin
                        if (Turno = 2)
                          then
                            begin
                              //Verifico que este el mouse encima del ATImageBox central
                              if (EstaEncimaImagenCentral = True)
                                then
                                  begin
                                    //Guardo los valores del 1er punto
                                    SegundoPunto.X:= StrToInt(   FloatToStr(  SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosX) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)  )   );
                                    SegundoPunto.Y:= StrToInt(   FloatToStr(  SimpleRoundTo((ATImageBoxSimulacionImagenes.ImageMousePosY) * (100 / ATImageBoxSimulacionImagenes.ImageScale), 0)  )   );

                                    //En dependencia del idioma muestro la respuesta
                                    if (IdiomaImperante = 'Espannol')
                                      then
                                        begin
                                          ShowMessage('La distancia es ' + CalcularDistanciaEntrePuntos(PrimerPunto, SegundoPunto, True) + '.');
                                        end
                                          else
                                            begin
                                              if (IdiomaImperante = 'Ingles')
                                                then
                                                  begin
                                                    ShowMessage('The distance is ' + CalcularDistanciaEntrePuntos(PrimerPunto, SegundoPunto, True) + '.');
                                                  end
                                            end;



                                    //Cancelo el calculo (ahora lo determina el usuario, por el LabelSpeedButton)
                                    //Calculando:= False;

                                    //Paso de nuevo al 1er punto
                                    Turno:= 1;
                                  end;
                            end;
                      end;
            end;
      end;

Salida:
end;



function TfrmPrincipal.CalcularDistanciaPorEtapas(Pa, Pb: TPoint; Redondear: Boolean): AnsiString;
var
  x, y, ppi: Integer;
  Incremento, c: Double;
  DistanciaAparente: Double;
  DistanciaRealPulgadas: Double;
  DistanciaRealMilimetros: Double;
begin
  //Pixels por pulgada
  ppi:= 300;

  //Calculo la distancia en pixels en el eje de las X (horizontal)
  x:= Abs( Pb.X - Pa.X );

  //Calculo la distancia en pixels en el eje de las Y (vertical)
  y:= Abs( Pb.Y - Pa.Y );

  //Calculo la distancia en pixels entre ambos puntos (float)
  c:= Sqrt(  Sqr(x) + Sqr(y)  );

  //Calculo el incremento artificial
  if (NombreUtilDelArchivoAbiertoSimulacionImagenes <> '')
    then
      begin
        //Determino el incremento
        Incremento:= (   AumentoSimulacionImagenes * (TrackBarSimulacionImagenes.Position / 100)   );
      end;

  //Calculo la distancia aparente (en pulgadas)
  DistanciaAparente:= (c / ppi);

  //Calculo la distancia real (en pulgadas)
  DistanciaRealPulgadas:= ( DistanciaAparente / Incremento );

  //Convierto de pulgadas a milimetros (1 plg = 25.4 mmm)
  DistanciaRealMilimetros:= DistanciaRealPulgadas * (25.4);

{
  //Saco el resultado (en dependencia del incremento)
  if (Incremento < 20000)
    then
      begin
        //En dependencia de si redondeo o no
        if (Redondear = True)
          then
            begin //Redondear
              //Convierto de milimetros a micrometros (1 mm = 1000 �m) y redondeo
              Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 1000), -3  )   ) + ' �m';
            end
              else
                begin  //No redondear
                  //Convierto de milimetros a micrometros (1 mm = 1000 �m)
                  Result:= FloatToStr(  DistanciaRealMilimetros * 1000) + ' �m';
                end;
      end
        else
          begin
            if (Incremento >= 20000)
              then
                begin
                  //En dependencia de si redondeo o no
                  if (Redondear = True)
                    then
                      begin //Redondear
                        //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                        Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 1000000), -3  )   ) + ' nm';
                      end
                        else
                          begin  //No redondear
                            //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                            Result:= FloatToStr(  DistanciaRealMilimetros * 1000000) + ' nm';
                          end;


                end;
          end;
}



  //Saco el resultado en la unidad de medida adecuada (en dependencia del valor)
  if (   (DistanciaRealMilimetros = 1) or (DistanciaRealMilimetros > 1)   )
    then
      begin
        //En dependencia de si redondeo o no
        if (Redondear = True)
          then
            begin //Redondear
              //Convierto de milimetros a micrometros (1 mm = 1000 �m) y redondeo
              Result:= FloatToStr(   SimpleRoundTo(  DistanciaRealMilimetros, -3  )   ) + ' mm';
            end
              else
                begin  //No redondear
                  //Convierto de milimetros a micrometros (1 mm = 1000 �m)
                  Result:= FloatToStr(DistanciaRealMilimetros) + ' mm';
                end;
      end
        else
          begin
            if (   (DistanciaRealMilimetros = 0.001) or ((DistanciaRealMilimetros > 0.001) and (DistanciaRealMilimetros < 1))   )
              then
                begin
                  //En dependencia de si redondeo o no
                  if (Redondear = True)
                    then
                      begin //Redondear
                        //Convierto de milimetros a micrometros (1 mm = 1000 �m) y redondeo
                        Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 1000), -3  )   ) + ' �m';
                      end
                        else
                          begin  //No redondear
                            //Convierto de milimetros a micrometros (1 mm = 1000 �m)
                            Result:= FloatToStr(  DistanciaRealMilimetros * 1000) + ' �m';
                          end;
                end
                  else
                    begin
                      if (   (DistanciaRealMilimetros = 0.000001) or ((DistanciaRealMilimetros > 0.000001) and (DistanciaRealMilimetros < 0.001))   )
                        then
                          begin
                            //En dependencia de si redondeo o no
                            if (Redondear = True)
                              then
                                begin //Redondear
                                  //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                                  Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 1000000), -3  )   ) + ' nm';
                                end
                                  else
                                    begin  //No redondear
                                      //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                                      Result:= FloatToStr(  DistanciaRealMilimetros * 1000000) + ' nm';
                                    end;
                          end
                            else
                              begin
                                if (   (DistanciaRealMilimetros = 0.0000001) or ((DistanciaRealMilimetros > 0.0000001) and (DistanciaRealMilimetros < 0.000001))   )
                                  then
                                    begin
                                      //En dependencia de si redondeo o no
                                      if (Redondear = True)
                                        then
                                          begin //Redondear
                                            //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                                            Result:= FloatToStr(   SimpleRoundTo(  (DistanciaRealMilimetros * 1000000), -3  )   ) + ' nm';
                                          end
                                            else
                                              begin  //No redondear
                                                //Convierto de milimetros a nanometros (1 mm = 1 000 000 nm)
                                                Result:= FloatToStr(  DistanciaRealMilimetros * 1000000) + ' nm';
                                              end;
                                    end
                              end;
                    end;
          end;
end;



procedure TfrmPrincipal.SubMenuEdicionCapturaDeImagenClick(
  Sender: TObject);
begin
  if (lblbtnHerramientaFotografiarSimulacionImagenes.Enabled = True)
    then
      begin
        //Ejecuto el labelButton de SnapShoot
        lblbtnHerramientaFotografiarSimulacionImagenes.Click;
      end;
end;

procedure TfrmPrincipal.SubMenuEdicionCalcularDistanciaClick(
  Sender: TObject);
begin
  if (lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Enabled = True)
    then
      begin
        //Ejecuto el labelButton de Medir Distancia entre puntos
        lblspdbtnHerramientaMedirDistanciaSimulacionImagenes.Click;
      end;
end;

procedure TfrmPrincipal.SubMenuRegistroClick(Sender: TObject);
begin
  //Envio el Idioma Imperante hacia la Forma de Registro
  frmRegistro.IdiomaImperante:= IdiomaImperante;
  
  //Muestro la Forma de Registro
  frmRegistro.Position:= poDesktopCenter;
  frmRegistro.ShowModal;
end;

end.
