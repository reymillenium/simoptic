unit PixTwixLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 12/06/2008 08:33:11 a.m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\pixtwix\PixTwixLib.OCX (1)
// LIBID: {674308FD-EED8-4B09-AD24-CF1B9CFB7D51}
// LCID: 0
// Helpfile: 
// HelpString: Softuarium PixTwix Control
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PixTwixLibMajorVersion = 6;
  PixTwixLibMinorVersion = 3;

  LIBID_PixTwixLib: TGUID = '{674308FD-EED8-4B09-AD24-CF1B9CFB7D51}';

  IID_IPixTwix: TGUID = '{00150586-A576-47F3-A5E7-0DD6FCFC26AA}';
  DIID_IPixTwixEvents: TGUID = '{9E882098-1E71-4668-AEB3-C6DF954AF230}';
  CLASS_PixTwix: TGUID = '{4BA83CD1-759F-4967-ABD0-386BEF8F357B}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TxMagicWandMode
type
  TxMagicWandMode = TOleEnum;
const
  mwRGB = $00000000;
  mwWeightedIntensity = $00000001;
  mwIntensity = $00000002;
  mwHue = $00000003;

// Constants for enum TxColorClampMode
type
  TxColorClampMode = TOleEnum;
const
  ccWeak = $00000000;
  ccAverage = $00000001;
  ccStrong = $00000002;

// Constants for enum TxEmbossDirection
type
  TxEmbossDirection = TOleEnum;
const
  edNorth = $00000000;
  edNorthEast = $00000001;
  edEast = $00000002;
  edSouthEast = $00000003;
  edSouth = $00000004;
  edSouthWest = $00000005;
  edWest = $00000006;
  edNorthWest = $00000007;

// Constants for enum TxImageFileFormat
type
  TxImageFileFormat = TOleEnum;
const
  ffBMP_1BPP_DITHER = $00000000;
  ffBMP_1BPP_THRESHOLD = $00000001;
  ffBMP_8BPP = $00000002;
  ffBMP_16BPP = $00000003;
  ffBMP_24BPP = $00000004;
  ffBMP_32BPP = $00000005;
  ffGIF = $00000006;
  ffICO = $00000007;
  ffJPG_AVERAGE = $00000008;
  ffJPG_BAD = $00000009;
  ffJPG_GOOD = $0000000A;
  ffJPG_NORMAL = $0000000B;
  ffJPG_VERYGOOD = $0000000C;
  ffPBM = $0000000D;
  ffPGM = $0000000E;
  ffPNG = $0000000F;
  ffPPM = $00000010;
  ffTGA = $00000011;
  ffTIF_ADOBEDEFLATE = $00000012;
  ffTIF_DEFLATE = $00000013;
  ffTIF_PACKBITS = $00000014;
  ffTIF_UNCOMPRESSED = $00000015;
  ffWBMP_DITHER = $00000016;
  ffWBMP_THRESHOLD = $00000017;
  ffXPM = $00000018;

// Constants for enum TxGrayscaleMode
type
  TxGrayscaleMode = TOleEnum;
const
  gsProportional = $00000000;
  gsWeighted = $00000001;

// Constants for enum TxHighPassVersion
type
  TxHighPassVersion = TOleEnum;
const
  hp1 = $00000000;
  hp2 = $00000001;
  hp3 = $00000002;

// Constants for enum TxLogicalOperation
type
  TxLogicalOperation = TOleEnum;
const
  loABSDIFF = $00000000;
  loAND = $00000001;
  loDIFF = $00000002;
  loMAX = $00000003;
  loMIN = $00000004;
  loNAND = $00000005;
  loNOR = $00000006;
  loNOT = $00000007;
  loNXOR = $00000008;
  loOR = $00000009;
  loSHL = $0000000A;
  loSHR = $0000000B;
  loSUM = $0000000C;
  loXOR = $0000000D;

// Constants for enum TxLowPassVersion
type
  TxLowPassVersion = TOleEnum;
const
  lp1 = $00000000;
  lp2 = $00000001;
  lp3 = $00000002;
  lp4 = $00000003;
  lp5 = $00000004;

// Constants for enum TxBlockShape
type
  TxBlockShape = TOleEnum;
const
  bsCircle = $00000000;
  bsSquare = $00000001;

// Constants for enum TxReflectionMode
type
  TxReflectionMode = TOleEnum;
const
  rmTop = $00000000;
  rmRight = $00000001;
  rmBottom = $00000002;
  rmLeft = $00000003;

// Constants for enum TxColorReplaceMode
type
  TxColorReplaceMode = TOleEnum;
const
  crDirect = $00000000;
  crRandomized = $00000001;
  crAveraged = $00000002;
  crHueAveraged = $00000003;

// Constants for enum TxResamplingFilter
type
  TxResamplingFilter = TOleEnum;
const
  rfNone = $00000000;
  rfBox = $00000001;
  rfBilinearNarrow = $00000002;
  rfBilinearWide = $00000003;
  rfBSpline = $00000004;
  rfBell = $00000005;
  rfHermite = $00000006;
  rfGaussian = $00000007;

// Constants for enum TxSpecialFilter
type
  TxSpecialFilter = TOleEnum;
const
  sfGradientE = $00000000;
  sfGradientN = $00000001;
  sfGradientS = $00000002;
  sfGradientW = $00000003;
  sfLaplace1 = $00000004;
  sfLaplace2 = $00000005;
  sfLaplace3 = $00000006;
  sfLaplaceDiagonal = $00000007;
  sfLaplaceHorizontal = $00000008;
  sfLaplaceVertical = $00000009;
  sfPrewittHorizontal = $0000000A;
  sfPrewittVertical = $0000000B;
  sfShiftAndDifferenceDiagonal = $0000000C;
  sfShiftAndDifferenceHorizontal = $0000000D;
  sfShiftAndDifferenceVertical = $0000000E;
  sfSobelHorizontal = $0000000F;
  sfSobelVertical = $00000010;

// Constants for enum TxChannelSwapMode
type
  TxChannelSwapMode = TOleEnum;
const
  csGreenBlue = $00000000;
  csRedBlue = $00000001;
  csRedGreen = $00000002;

// Constants for enum TxTextureMode
type
  TxTextureMode = TOleEnum;
const
  tmStretched = $00000000;
  tmTiled = $00000001;

// Constants for enum TxConcatenationEdge
type
  TxConcatenationEdge = TOleEnum;
const
  ceLeft = $00000000;
  ceTop = $00000001;
  ceRight = $00000002;
  ceBottom = $00000003;

// Constants for enum TxLayerBlendMode
type
  TxLayerBlendMode = TOleEnum;
const
  lbAdditive = $00000000;
  lbAverage = $00000001;
  lbBurn = $00000002;
  lbDarken = $00000003;
  lbDifference = $00000004;
  lbDodge = $00000005;
  lbExclusion = $00000006;
  lbHardLight = $00000007;
  lbLighten = $00000008;
  lbMultiply = $00000009;
  lbOverlay = $0000000A;
  lbScreen = $0000000B;
  lbSoftLight = $0000000C;
  lbSubtractive = $0000000D;

// Constants for enum TxMappingFunction
type
  TxMappingFunction = TOleEnum;
const
  mfSQRT = $00000000;
  mfLOG = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPixTwix = interface;
  IPixTwixDisp = dispinterface;
  IPixTwixEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  PixTwix = IPixTwix;


// *********************************************************************//
// Interface: IPixTwix
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00150586-A576-47F3-A5E7-0DD6FCFC26AA}
// *********************************************************************//
  IPixTwix = interface(IDispatch)
    ['{00150586-A576-47F3-A5E7-0DD6FCFC26AA}']
    function Get_Picture: IPictureDisp; safecall;
    procedure Set_Picture(const Value: IPictureDisp); safecall;
    function Get_SecondaryPicture: IPictureDisp; safecall;
    procedure Set_SecondaryPicture(const Value: IPictureDisp); safecall;
    function GetSelectionBoundingRectangle(const delimiter: WideString): WideString; safecall;
    function SelectionCount: Integer; safecall;
    function SelectEllipse(eLeft: Integer; eTop: Integer; eRight: Integer; eBottom: Integer): Integer; safecall;
    function SelectPixel(x: Integer; y: Integer; selected: WordBool): WordBool; safecall;
    function SelectionPresent(x: Integer; y: Integer): WordBool; safecall;
    function SelectRectangle(rLeft: Integer; rTop: Integer; rRight: Integer; rBottom: Integer): Integer; safecall;
    function SelectionInvert: WordBool; safecall;
    function SelectNone: WordBool; safecall;
    function SelectAll: WordBool; safecall;
    function SelectUsingGlobalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                        mode: TxMagicWandMode): Integer; safecall;
    function SelectUsingLocalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                       mode: TxMagicWandMode): Integer; safecall;
    function AddNoise(amount: Integer; monochrome: WordBool; selection: WordBool): WordBool; safecall;
    function Antialias(selection: WordBool): WordBool; safecall;
    function AutoCrop(R: Integer; G: Integer; B: Integer; tolerance: Integer): WordBool; safecall;
    function BlackAndWhite(threshold: Integer; selection: WordBool): WordBool; safecall;
    function BlackAndWhiteDithered(bias: Integer; selection: WordBool): WordBool; safecall;
    function Blend(amount: Integer; selection: WordBool): WordBool; safecall;
    function Blur(amount: Integer; selection: WordBool): WordBool; safecall;
    function BlurRadial(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool; safecall;
    function BlurTangential(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool; safecall;
    function Brightness(amount: Integer; selection: WordBool): WordBool; safecall;
    function ClampBlue(mode: TxColorClampMode; selection: WordBool): WordBool; safecall;
    function ClampGreen(mode: TxColorClampMode; selection: WordBool): WordBool; safecall;
    function ClampRed(mode: TxColorClampMode; selection: WordBool): WordBool; safecall;
    function ClearPicture(R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function ClearSecondaryPicture: WordBool; safecall;
    function ColorEmboss(direction: TxEmbossDirection; selection: WordBool): WordBool; safecall;
    function ColorFill(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool; safecall;
    function Colorize(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool; safecall;
    function Convolution3x3(c11: Single; c12: Single; c13: Single; c21: Single; c22: Single; 
                            c23: Single; c31: Single; c32: Single; c33: Single; divisor: Single; 
                            bias: Integer; selection: WordBool): WordBool; safecall;
    function Contrast(amount: Integer; selection: WordBool): WordBool; safecall;
    function CropPicture(cLeft: Integer; cTop: Integer; cRight: Integer; cBottom: Integer): WordBool; safecall;
    function Decrypt(const password: WideString): WordBool; safecall;
    function DrawGrid(gridsize: Integer; continuous: WordBool; selection: WordBool): WordBool; safecall;
    function Emboss(direction: TxEmbossDirection; amount: Integer; bias: Integer; 
                    monochrome: WordBool; selection: WordBool): WordBool; safecall;
    function Encrypt(const password: WideString): WordBool; safecall;
    function EnhanceEdge(selection: WordBool): WordBool; safecall;
    function ErodeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Explode(cx: Integer; cy: Integer; amount: Integer): WordBool; safecall;
    function FalseColor(Rinitial: Integer; Rfinal: Integer; Ginitial: Integer; Gfinal: Integer; 
                        Binitial: Integer; Bfinal: Integer; selection: WordBool): WordBool; safecall;
    function fi_FileConvert(const fiDLL: WideString; const infile: WideString; 
                            const outfile: WideString; outformat: TxImageFileFormat): WordBool; safecall;
    function fi_FileLoad(const fiDLL: WideString; const filename: WideString): WordBool; safecall;
    function fi_FileSave(const fiDLL: WideString; const filename: WideString; 
                         outformat: TxImageFileFormat): WordBool; safecall;
    function FishEye(R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Flip: WordBool; safecall;
    function Frame(size: Integer; outerR: Integer; outerG: Integer; outerB: Integer; 
                   innerR: Integer; innerG: Integer; innerB: Integer): WordBool; safecall;
    function Gamma(R: Single; G: Single; B: Single; selection: WordBool): WordBool; safecall;
    function GetBlue(colorref: Integer): Integer; safecall;
    function GetColorCount: Integer; safecall;
    function GetGreen(colorref: Integer): Integer; safecall;
    function GetRed(colorref: Integer): Integer; safecall;
    function GetFileChecksum(const filename: WideString): WideString; safecall;
    function GetPictureHeight: Integer; safecall;
    function GetPictureWidth: Integer; safecall;
    function GetPictureHandle: LongWord; safecall;
    function GetSecondaryPictureHandle: LongWord; safecall;
    function GetVersion: WideString; safecall;
    function Grayscale(mode: TxGrayscaleMode; selection: WordBool): WordBool; safecall;
    function HighPass(version: TxHighPassVersion; selection: WordBool): WordBool; safecall;
    function Implode(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function LogicalOperation(operation: TxLogicalOperation; clipped: WordBool; selection: WordBool): WordBool; safecall;
    function Loupe(cx: Integer; cy: Integer; radius: Integer; strength: Integer): WordBool; safecall;
    function LowPass(version: TxLowPassVersion; selection: WordBool): WordBool; safecall;
    function MaskNotSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool; safecall;
    function MaskSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool; safecall;
    function Maximum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool; safecall;
    function Melt(selection: WordBool): WordBool; safecall;
    function Minimum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool; safecall;
    function Mosaic(cellWidth: Integer; cellHeight: Integer; selection: WordBool): WordBool; safecall;
    function MosaicConcentric(cx: Integer; cy: Integer; size: Integer): WordBool; safecall;
    function Negative(R: WordBool; G: WordBool; B: WordBool; selection: WordBool): WordBool; safecall;
    function OilPainting(blocksize: Integer; selection: WordBool): WordBool; safecall;
    function PaintOnCanvas(canvasWidth: Integer; canvasHeight: Integer; imageLeft: Integer; 
                           imageTop: Integer; canvasRed: Integer; canvasGreen: Integer; 
                           canvasBlue: Integer; shadowXoffset: Integer; shadowYoffset: Integer; 
                           shadowBlur: Integer; shadowRed: Integer; shadowGreen: Integer; 
                           shadowBlue: Integer): WordBool; safecall;
    function PasteAsNew: WordBool; safecall;
    function PerspectiveHorizontal(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function PerspectiveVertical(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Pinch(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Posterize(Rbits: Integer; Gbits: Integer; Bbits: Integer; selection: WordBool): WordBool; safecall;
    function Punch(cx: Integer; cy: Integer; amount: Integer): WordBool; safecall;
    function Reflect(mode: TxReflectionMode): WordBool; safecall;
    function RGBAdd(R: Integer; G: Integer; B: Integer; clipped: WordBool; selection: WordBool): WordBool; safecall;
    function RGBMix(Rr: Single; Rg: Single; Rb: Single; Gr: Single; Gg: Single; Gb: Single; 
                    Br: Single; Bg: Single; Bb: Single; clipped: WordBool; selection: WordBool): WordBool; safecall;
    function RGBMultiply(R: Single; G: Single; B: Single; clipped: WordBool; selection: WordBool): WordBool; safecall;
    function ReplaceColor(oldR: Integer; oldG: Integer; oldB: Integer; newR: Integer; 
                          newG: Integer; newB: Integer; tolerance: Integer; 
                          mode: TxColorReplaceMode; selection: WordBool): WordBool; safecall;
    function Resample(filter: TxResamplingFilter): WordBool; safecall;
    function ResizePicture(newWidth: Integer; newHeight: Integer; filter: TxResamplingFilter): WordBool; safecall;
    function Reverse: WordBool; safecall;
    function RotatePicture(cx: Integer; cy: Integer; angle: Single; R: Integer; G: Integer; 
                           B: Integer): WordBool; safecall;
    function RotatePictureEx(angle: Single; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Rotate90: WordBool; safecall;
    function Rotate180: WordBool; safecall;
    function Rotate270: WordBool; safecall;
    function Saturation(amount: Integer; selection: WordBool): WordBool; safecall;
    function Scramble(tileWidth: Integer; tileHeight: Integer): WordBool; safecall;
    function SelectionShowHide(solid: WordBool): WordBool; safecall;
    function SetPictureHandle(handle: LongWord): WordBool; safecall;
    function SetSecondaryPictureHandle(handle: LongWord): WordBool; safecall;
    function Sharpen(selection: WordBool): WordBool; safecall;
    function SineWave(amplitudeX: Integer; amplitudeY: Integer; frequencyX: Single; 
                      frequencyY: Single; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function SkewHorizontally(angle: Single; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function SkewVertically(angle: Single; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function SoftenLess(selection: WordBool): WordBool; safecall;
    function SoftenMore(selection: WordBool): WordBool; safecall;
    function Solarize(Rthreshold: Integer; Gthreshold: Integer; Bthreshold: Integer; 
                      Reverse: WordBool; selection: WordBool): WordBool; safecall;
    function SpecialFilter(filter: TxSpecialFilter; bias: Integer; selection: WordBool): WordBool; safecall;
    function Spray(amount: Integer; selection: WordBool): WordBool; safecall;
    function SwapChannels(mode: TxChannelSwapMode; selection: WordBool): WordBool; safecall;
    function Texture(amount: Integer; mode: TxTextureMode; selection: WordBool): WordBool; safecall;
    function Tile(sourceLeft: Integer; sourceTop: Integer; sourceRight: Integer; 
                  sourceBottom: Integer): WordBool; safecall;
    function TileEx(sourceWidth: Integer; sourceHeight: Integer): WordBool; safecall;
    function Tint(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool; safecall;
    function Twirl(cx: Integer; cy: Integer; angle: Integer): WordBool; safecall;
    function TwirlEx(cx: Integer; cy: Integer; angle: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Twist(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function UndoLoad(const filename: WideString): WordBool; safecall;
    function UndoSave(const filename: WideString): WordBool; safecall;
    function Unlock(const regcode: WideString): WordBool; safecall;
    procedure InitiateAction; safecall;
    function ColorGradient(cx: Integer; cy: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Concatenate(edge: TxConcatenationEdge; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function FadeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function IrregularBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function Sepia(selection: WordBool): WordBool; safecall;
    function SepiaEx(amount: Integer; selection: WordBool): WordBool; safecall;
    function BrightnessGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; safecall;
    function SaturationGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; safecall;
    function ContrastGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; safecall;
    function Blobs(blobWidth: Integer; blobHeight: Integer; selection: WordBool): WordBool; safecall;
    function BlurGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; safecall;
    function ExtractIntensityRange(lower: Integer; upper: Integer; maskR: Integer; maskG: Integer; 
                                   maskB: Integer): WordBool; safecall;
    function HistogramStretch(selection: WordBool): WordBool; safecall;
    function RandomColumnShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function RandomRowShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function RefreshImageData: WordBool; safecall;
    function Scroll(amountX: Integer; amountY: Integer): WordBool; safecall;
    function SelectIntensityRange(lower: Integer; upper: Integer): Integer; safecall;
    function BlendEx(mode: TxLayerBlendMode; amount: Integer; selection: WordBool): WordBool; safecall;
    function ColorThreshold(loR: Integer; loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; 
                            hiB: Integer; hitR: Integer; hitG: Integer; hitB: Integer; 
                            missR: Integer; missG: Integer; missB: Integer; selection: WordBool): WordBool; safecall;
    function GetPixelRGB(x: Integer; y: Integer; const delimiter: WideString): WideString; safecall;
    function Wind(amount: Integer; direction: Single; selection: WordBool): WordBool; safecall;
    function Compress(mapping: TxMappingFunction; selection: WordBool): WordBool; safecall;
    function PixelsInColumns(startColumn: Integer; stopColumn: Integer; step: Integer; 
                             loR: Integer; loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; 
                             hiB: Integer; const separator: WideString): WideString; safecall;
    function PixelsInRows(startRow: Integer; stopRow: Integer; step: Integer; loR: Integer; 
                          loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; hiB: Integer; 
                          const separator: WideString): WideString; safecall;
    function ColorThresholdEx(const colorRangesCSV: WideString; hitR: Integer; hitG: Integer; 
                              hitB: Integer; missR: Integer; missG: Integer; missB: Integer; 
                              selection: WordBool): WordBool; safecall;
    function SelectPolygon(const polygonCSV: WideString): Integer; safecall;
    function GetHistogram(selection: WordBool; const delimiter: WideString): WideString; safecall;
    function GetHistogramEx(selection: WordBool; const delimiter: WideString; 
                            const filename: WideString): WordBool; safecall;
    function PasteIntoImage(x: Integer; y: Integer): WordBool; safecall;
    function CopyToClipboardAll: WordBool; safecall;
    function CopyToClipboardSelection: WordBool; safecall;
    function CopyToClipboardSelectionMasked(maskR: Integer; maskG: Integer; maskB: Integer): WordBool; safecall;
    function PasteIntoImageMasked(x: Integer; y: Integer; maskR: Integer; maskG: Integer; 
                                  maskB: Integer; tolerance: Integer): WordBool; safecall;
    function DeInterlaceColumns(odd: WordBool): WordBool; safecall;
    function DeInterlaceRows(odd: WordBool): WordBool; safecall;
    function FuzzyMask(R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function FrameEx(Reverse: WordBool): WordBool; safecall;
    function FrameExEx: WordBool; safecall;
    function ColorCorrect(blackR: Integer; blackG: Integer; blackB: Integer; whiteR: Integer; 
                          whiteG: Integer; whiteB: Integer; selection: WordBool): WordBool; safecall;
    function Curves(const redCSV: WideString; const greenCSV: WideString; 
                    const blueCSV: WideString; selection: WordBool): WordBool; safecall;
    function DisplaceColumns(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    function DisplaceRows(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool; safecall;
    property Picture: IPictureDisp read Get_Picture write Set_Picture;
    property SecondaryPicture: IPictureDisp read Get_SecondaryPicture write Set_SecondaryPicture;
  end;

// *********************************************************************//
// DispIntf:  IPixTwixDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00150586-A576-47F3-A5E7-0DD6FCFC26AA}
// *********************************************************************//
  IPixTwixDisp = dispinterface
    ['{00150586-A576-47F3-A5E7-0DD6FCFC26AA}']
    property Picture: IPictureDisp dispid -523;
    property SecondaryPicture: IPictureDisp dispid 1;
    function GetSelectionBoundingRectangle(const delimiter: WideString): WideString; dispid 2;
    function SelectionCount: Integer; dispid 3;
    function SelectEllipse(eLeft: Integer; eTop: Integer; eRight: Integer; eBottom: Integer): Integer; dispid 4;
    function SelectPixel(x: Integer; y: Integer; selected: WordBool): WordBool; dispid 5;
    function SelectionPresent(x: Integer; y: Integer): WordBool; dispid 6;
    function SelectRectangle(rLeft: Integer; rTop: Integer; rRight: Integer; rBottom: Integer): Integer; dispid 7;
    function SelectionInvert: WordBool; dispid 8;
    function SelectNone: WordBool; dispid 9;
    function SelectAll: WordBool; dispid 10;
    function SelectUsingGlobalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                        mode: TxMagicWandMode): Integer; dispid 11;
    function SelectUsingLocalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                       mode: TxMagicWandMode): Integer; dispid 12;
    function AddNoise(amount: Integer; monochrome: WordBool; selection: WordBool): WordBool; dispid 13;
    function Antialias(selection: WordBool): WordBool; dispid 14;
    function AutoCrop(R: Integer; G: Integer; B: Integer; tolerance: Integer): WordBool; dispid 15;
    function BlackAndWhite(threshold: Integer; selection: WordBool): WordBool; dispid 16;
    function BlackAndWhiteDithered(bias: Integer; selection: WordBool): WordBool; dispid 17;
    function Blend(amount: Integer; selection: WordBool): WordBool; dispid 18;
    function Blur(amount: Integer; selection: WordBool): WordBool; dispid 19;
    function BlurRadial(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool; dispid 20;
    function BlurTangential(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool; dispid 21;
    function Brightness(amount: Integer; selection: WordBool): WordBool; dispid 22;
    function ClampBlue(mode: TxColorClampMode; selection: WordBool): WordBool; dispid 24;
    function ClampGreen(mode: TxColorClampMode; selection: WordBool): WordBool; dispid 25;
    function ClampRed(mode: TxColorClampMode; selection: WordBool): WordBool; dispid 26;
    function ClearPicture(R: Integer; G: Integer; B: Integer): WordBool; dispid 27;
    function ClearSecondaryPicture: WordBool; dispid 28;
    function ColorEmboss(direction: TxEmbossDirection; selection: WordBool): WordBool; dispid 29;
    function ColorFill(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool; dispid 30;
    function Colorize(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool; dispid 31;
    function Convolution3x3(c11: Single; c12: Single; c13: Single; c21: Single; c22: Single; 
                            c23: Single; c31: Single; c32: Single; c33: Single; divisor: Single; 
                            bias: Integer; selection: WordBool): WordBool; dispid 32;
    function Contrast(amount: Integer; selection: WordBool): WordBool; dispid 33;
    function CropPicture(cLeft: Integer; cTop: Integer; cRight: Integer; cBottom: Integer): WordBool; dispid 35;
    function Decrypt(const password: WideString): WordBool; dispid 36;
    function DrawGrid(gridsize: Integer; continuous: WordBool; selection: WordBool): WordBool; dispid 37;
    function Emboss(direction: TxEmbossDirection; amount: Integer; bias: Integer; 
                    monochrome: WordBool; selection: WordBool): WordBool; dispid 38;
    function Encrypt(const password: WideString): WordBool; dispid 39;
    function EnhanceEdge(selection: WordBool): WordBool; dispid 40;
    function ErodeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 41;
    function Explode(cx: Integer; cy: Integer; amount: Integer): WordBool; dispid 42;
    function FalseColor(Rinitial: Integer; Rfinal: Integer; Ginitial: Integer; Gfinal: Integer; 
                        Binitial: Integer; Bfinal: Integer; selection: WordBool): WordBool; dispid 43;
    function fi_FileConvert(const fiDLL: WideString; const infile: WideString; 
                            const outfile: WideString; outformat: TxImageFileFormat): WordBool; dispid 44;
    function fi_FileLoad(const fiDLL: WideString; const filename: WideString): WordBool; dispid 45;
    function fi_FileSave(const fiDLL: WideString; const filename: WideString; 
                         outformat: TxImageFileFormat): WordBool; dispid 46;
    function FishEye(R: Integer; G: Integer; B: Integer): WordBool; dispid 47;
    function Flip: WordBool; dispid 48;
    function Frame(size: Integer; outerR: Integer; outerG: Integer; outerB: Integer; 
                   innerR: Integer; innerG: Integer; innerB: Integer): WordBool; dispid 49;
    function Gamma(R: Single; G: Single; B: Single; selection: WordBool): WordBool; dispid 50;
    function GetBlue(colorref: Integer): Integer; dispid 51;
    function GetColorCount: Integer; dispid 52;
    function GetGreen(colorref: Integer): Integer; dispid 53;
    function GetRed(colorref: Integer): Integer; dispid 54;
    function GetFileChecksum(const filename: WideString): WideString; dispid 55;
    function GetPictureHeight: Integer; dispid 58;
    function GetPictureWidth: Integer; dispid 59;
    function GetPictureHandle: LongWord; dispid 60;
    function GetSecondaryPictureHandle: LongWord; dispid 61;
    function GetVersion: WideString; dispid 62;
    function Grayscale(mode: TxGrayscaleMode; selection: WordBool): WordBool; dispid 65;
    function HighPass(version: TxHighPassVersion; selection: WordBool): WordBool; dispid 66;
    function Implode(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 67;
    function LogicalOperation(operation: TxLogicalOperation; clipped: WordBool; selection: WordBool): WordBool; dispid 68;
    function Loupe(cx: Integer; cy: Integer; radius: Integer; strength: Integer): WordBool; dispid 69;
    function LowPass(version: TxLowPassVersion; selection: WordBool): WordBool; dispid 70;
    function MaskNotSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool; dispid 71;
    function MaskSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool; dispid 72;
    function Maximum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool; dispid 73;
    function Melt(selection: WordBool): WordBool; dispid 74;
    function Minimum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool; dispid 75;
    function Mosaic(cellWidth: Integer; cellHeight: Integer; selection: WordBool): WordBool; dispid 76;
    function MosaicConcentric(cx: Integer; cy: Integer; size: Integer): WordBool; dispid 77;
    function Negative(R: WordBool; G: WordBool; B: WordBool; selection: WordBool): WordBool; dispid 78;
    function OilPainting(blocksize: Integer; selection: WordBool): WordBool; dispid 79;
    function PaintOnCanvas(canvasWidth: Integer; canvasHeight: Integer; imageLeft: Integer; 
                           imageTop: Integer; canvasRed: Integer; canvasGreen: Integer; 
                           canvasBlue: Integer; shadowXoffset: Integer; shadowYoffset: Integer; 
                           shadowBlur: Integer; shadowRed: Integer; shadowGreen: Integer; 
                           shadowBlue: Integer): WordBool; dispid 80;
    function PasteAsNew: WordBool; dispid 81;
    function PerspectiveHorizontal(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 83;
    function PerspectiveVertical(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 84;
    function Pinch(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 85;
    function Posterize(Rbits: Integer; Gbits: Integer; Bbits: Integer; selection: WordBool): WordBool; dispid 86;
    function Punch(cx: Integer; cy: Integer; amount: Integer): WordBool; dispid 87;
    function Reflect(mode: TxReflectionMode): WordBool; dispid 88;
    function RGBAdd(R: Integer; G: Integer; B: Integer; clipped: WordBool; selection: WordBool): WordBool; dispid 89;
    function RGBMix(Rr: Single; Rg: Single; Rb: Single; Gr: Single; Gg: Single; Gb: Single; 
                    Br: Single; Bg: Single; Bb: Single; clipped: WordBool; selection: WordBool): WordBool; dispid 90;
    function RGBMultiply(R: Single; G: Single; B: Single; clipped: WordBool; selection: WordBool): WordBool; dispid 91;
    function ReplaceColor(oldR: Integer; oldG: Integer; oldB: Integer; newR: Integer; 
                          newG: Integer; newB: Integer; tolerance: Integer; 
                          mode: TxColorReplaceMode; selection: WordBool): WordBool; dispid 92;
    function Resample(filter: TxResamplingFilter): WordBool; dispid 93;
    function ResizePicture(newWidth: Integer; newHeight: Integer; filter: TxResamplingFilter): WordBool; dispid 94;
    function Reverse: WordBool; dispid 95;
    function RotatePicture(cx: Integer; cy: Integer; angle: Single; R: Integer; G: Integer; 
                           B: Integer): WordBool; dispid 96;
    function RotatePictureEx(angle: Single; R: Integer; G: Integer; B: Integer): WordBool; dispid 97;
    function Rotate90: WordBool; dispid 98;
    function Rotate180: WordBool; dispid 99;
    function Rotate270: WordBool; dispid 100;
    function Saturation(amount: Integer; selection: WordBool): WordBool; dispid 101;
    function Scramble(tileWidth: Integer; tileHeight: Integer): WordBool; dispid 103;
    function SelectionShowHide(solid: WordBool): WordBool; dispid 104;
    function SetPictureHandle(handle: LongWord): WordBool; dispid 105;
    function SetSecondaryPictureHandle(handle: LongWord): WordBool; dispid 106;
    function Sharpen(selection: WordBool): WordBool; dispid 107;
    function SineWave(amplitudeX: Integer; amplitudeY: Integer; frequencyX: Single; 
                      frequencyY: Single; R: Integer; G: Integer; B: Integer): WordBool; dispid 108;
    function SkewHorizontally(angle: Single; R: Integer; G: Integer; B: Integer): WordBool; dispid 109;
    function SkewVertically(angle: Single; R: Integer; G: Integer; B: Integer): WordBool; dispid 110;
    function SoftenLess(selection: WordBool): WordBool; dispid 111;
    function SoftenMore(selection: WordBool): WordBool; dispid 112;
    function Solarize(Rthreshold: Integer; Gthreshold: Integer; Bthreshold: Integer; 
                      Reverse: WordBool; selection: WordBool): WordBool; dispid 113;
    function SpecialFilter(filter: TxSpecialFilter; bias: Integer; selection: WordBool): WordBool; dispid 114;
    function Spray(amount: Integer; selection: WordBool): WordBool; dispid 115;
    function SwapChannels(mode: TxChannelSwapMode; selection: WordBool): WordBool; dispid 116;
    function Texture(amount: Integer; mode: TxTextureMode; selection: WordBool): WordBool; dispid 117;
    function Tile(sourceLeft: Integer; sourceTop: Integer; sourceRight: Integer; 
                  sourceBottom: Integer): WordBool; dispid 118;
    function TileEx(sourceWidth: Integer; sourceHeight: Integer): WordBool; dispid 119;
    function Tint(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool; dispid 120;
    function Twirl(cx: Integer; cy: Integer; angle: Integer): WordBool; dispid 121;
    function TwirlEx(cx: Integer; cy: Integer; angle: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 122;
    function Twist(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 123;
    function UndoLoad(const filename: WideString): WordBool; dispid 124;
    function UndoSave(const filename: WideString): WordBool; dispid 125;
    function Unlock(const regcode: WideString): WordBool; dispid 126;
    procedure InitiateAction; dispid 147;
    function ColorGradient(cx: Integer; cy: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 63;
    function Concatenate(edge: TxConcatenationEdge; R: Integer; G: Integer; B: Integer): WordBool; dispid 64;
    function FadeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 127;
    function IrregularBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 128;
    function Sepia(selection: WordBool): WordBool; dispid 129;
    function SepiaEx(amount: Integer; selection: WordBool): WordBool; dispid 130;
    function BrightnessGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; dispid 23;
    function SaturationGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; dispid 102;
    function ContrastGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; dispid 131;
    function Blobs(blobWidth: Integer; blobHeight: Integer; selection: WordBool): WordBool; dispid 132;
    function BlurGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool; dispid 133;
    function ExtractIntensityRange(lower: Integer; upper: Integer; maskR: Integer; maskG: Integer; 
                                   maskB: Integer): WordBool; dispid 134;
    function HistogramStretch(selection: WordBool): WordBool; dispid 135;
    function RandomColumnShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 136;
    function RandomRowShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool; dispid 137;
    function RefreshImageData: WordBool; dispid 138;
    function Scroll(amountX: Integer; amountY: Integer): WordBool; dispid 139;
    function SelectIntensityRange(lower: Integer; upper: Integer): Integer; dispid 140;
    function BlendEx(mode: TxLayerBlendMode; amount: Integer; selection: WordBool): WordBool; dispid 141;
    function ColorThreshold(loR: Integer; loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; 
                            hiB: Integer; hitR: Integer; hitG: Integer; hitB: Integer; 
                            missR: Integer; missG: Integer; missB: Integer; selection: WordBool): WordBool; dispid 142;
    function GetPixelRGB(x: Integer; y: Integer; const delimiter: WideString): WideString; dispid 143;
    function Wind(amount: Integer; direction: Single; selection: WordBool): WordBool; dispid 145;
    function Compress(mapping: TxMappingFunction; selection: WordBool): WordBool; dispid 146;
    function PixelsInColumns(startColumn: Integer; stopColumn: Integer; step: Integer; 
                             loR: Integer; loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; 
                             hiB: Integer; const separator: WideString): WideString; dispid 148;
    function PixelsInRows(startRow: Integer; stopRow: Integer; step: Integer; loR: Integer; 
                          loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; hiB: Integer; 
                          const separator: WideString): WideString; dispid 149;
    function ColorThresholdEx(const colorRangesCSV: WideString; hitR: Integer; hitG: Integer; 
                              hitB: Integer; missR: Integer; missG: Integer; missB: Integer; 
                              selection: WordBool): WordBool; dispid 150;
    function SelectPolygon(const polygonCSV: WideString): Integer; dispid 151;
    function GetHistogram(selection: WordBool; const delimiter: WideString): WideString; dispid 34;
    function GetHistogramEx(selection: WordBool; const delimiter: WideString; 
                            const filename: WideString): WordBool; dispid 56;
    function PasteIntoImage(x: Integer; y: Integer): WordBool; dispid 57;
    function CopyToClipboardAll: WordBool; dispid 82;
    function CopyToClipboardSelection: WordBool; dispid 144;
    function CopyToClipboardSelectionMasked(maskR: Integer; maskG: Integer; maskB: Integer): WordBool; dispid 152;
    function PasteIntoImageMasked(x: Integer; y: Integer; maskR: Integer; maskG: Integer; 
                                  maskB: Integer; tolerance: Integer): WordBool; dispid 153;
    function DeInterlaceColumns(odd: WordBool): WordBool; dispid 154;
    function DeInterlaceRows(odd: WordBool): WordBool; dispid 155;
    function FuzzyMask(R: Integer; G: Integer; B: Integer): WordBool; dispid 156;
    function FrameEx(Reverse: WordBool): WordBool; dispid 157;
    function FrameExEx: WordBool; dispid 158;
    function ColorCorrect(blackR: Integer; blackG: Integer; blackB: Integer; whiteR: Integer; 
                          whiteG: Integer; whiteB: Integer; selection: WordBool): WordBool; dispid 159;
    function Curves(const redCSV: WideString; const greenCSV: WideString; 
                    const blueCSV: WideString; selection: WordBool): WordBool; dispid 160;
    function DisplaceColumns(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool; dispid 161;
    function DisplaceRows(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool; dispid 162;
  end;

// *********************************************************************//
// DispIntf:  IPixTwixEvents
// Flags:     (4096) Dispatchable
// GUID:      {9E882098-1E71-4668-AEB3-C6DF954AF230}
// *********************************************************************//
  IPixTwixEvents = dispinterface
    ['{9E882098-1E71-4668-AEB3-C6DF954AF230}']
    procedure OnProgress(progress: Integer); dispid 1;
    procedure OnCanResize(var newWidth: Integer; var newHeight: Integer; var Resize: WordBool); dispid 2;
    procedure OnClick; dispid 3;
    procedure OnConstrainedResize(var MinWidth: Integer; var MinHeight: Integer; 
                                  var MaxWidth: Integer; var MaxHeight: Integer); dispid 4;
    procedure OnDblClick; dispid 8;
    procedure OnResize; dispid 17;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TPixTwix
// Help String      : PixTwix Control
// Default Interface: IPixTwix
// Def. Intf. DISP? : No
// Event   Interface: IPixTwixEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TPixTwixOnProgress = procedure(ASender: TObject; progress: Integer) of object;
  TPixTwixOnCanResize = procedure(ASender: TObject; var newWidth: Integer; var newHeight: Integer; 
                                                    var Resize: WordBool) of object;
  TPixTwixOnConstrainedResize = procedure(ASender: TObject; var MinWidth: Integer; 
                                                            var MinHeight: Integer; 
                                                            var MaxWidth: Integer; 
                                                            var MaxHeight: Integer) of object;

  TPixTwix = class(TOleControl)
  private
    FOnProgress: TPixTwixOnProgress;
    FOnCanResize: TPixTwixOnCanResize;
    FOnClick: TNotifyEvent;
    FOnConstrainedResize: TPixTwixOnConstrainedResize;
    FOnDblClick: TNotifyEvent;
    FOnResize: TNotifyEvent;
    FIntf: IPixTwix;
    function  GetControlInterface: IPixTwix;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function GetSelectionBoundingRectangle(const delimiter: WideString): WideString;
    function SelectionCount: Integer;
    function SelectEllipse(eLeft: Integer; eTop: Integer; eRight: Integer; eBottom: Integer): Integer;
    function SelectPixel(x: Integer; y: Integer; selected: WordBool): WordBool;
    function SelectionPresent(x: Integer; y: Integer): WordBool;
    function SelectRectangle(rLeft: Integer; rTop: Integer; rRight: Integer; rBottom: Integer): Integer;
    function SelectionInvert: WordBool;
    function SelectNone: WordBool;
    function SelectAll: WordBool;
    function SelectUsingGlobalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                        mode: TxMagicWandMode): Integer;
    function SelectUsingLocalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                       mode: TxMagicWandMode): Integer;
    function AddNoise(amount: Integer; monochrome: WordBool; selection: WordBool): WordBool;
    function Antialias(selection: WordBool): WordBool;
    function AutoCrop(R: Integer; G: Integer; B: Integer; tolerance: Integer): WordBool;
    function BlackAndWhite(threshold: Integer; selection: WordBool): WordBool;
    function BlackAndWhiteDithered(bias: Integer; selection: WordBool): WordBool;
    function Blend(amount: Integer; selection: WordBool): WordBool;
    function Blur(amount: Integer; selection: WordBool): WordBool;
    function BlurRadial(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool;
    function BlurTangential(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool;
    function Brightness(amount: Integer; selection: WordBool): WordBool;
    function ClampBlue(mode: TxColorClampMode; selection: WordBool): WordBool;
    function ClampGreen(mode: TxColorClampMode; selection: WordBool): WordBool;
    function ClampRed(mode: TxColorClampMode; selection: WordBool): WordBool;
    function ClearPicture(R: Integer; G: Integer; B: Integer): WordBool;
    function ClearSecondaryPicture: WordBool;
    function ColorEmboss(direction: TxEmbossDirection; selection: WordBool): WordBool;
    function ColorFill(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool;
    function Colorize(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool;
    function Convolution3x3(c11: Single; c12: Single; c13: Single; c21: Single; c22: Single; 
                            c23: Single; c31: Single; c32: Single; c33: Single; divisor: Single; 
                            bias: Integer; selection: WordBool): WordBool;
    function Contrast(amount: Integer; selection: WordBool): WordBool;
    function CropPicture(cLeft: Integer; cTop: Integer; cRight: Integer; cBottom: Integer): WordBool;
    function Decrypt(const password: WideString): WordBool;
    function DrawGrid(gridsize: Integer; continuous: WordBool; selection: WordBool): WordBool;
    function Emboss(direction: TxEmbossDirection; amount: Integer; bias: Integer; 
                    monochrome: WordBool; selection: WordBool): WordBool;
    function Encrypt(const password: WideString): WordBool;
    function EnhanceEdge(selection: WordBool): WordBool;
    function ErodeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function Explode(cx: Integer; cy: Integer; amount: Integer): WordBool;
    function FalseColor(Rinitial: Integer; Rfinal: Integer; Ginitial: Integer; Gfinal: Integer; 
                        Binitial: Integer; Bfinal: Integer; selection: WordBool): WordBool;
    function fi_FileConvert(const fiDLL: WideString; const infile: WideString; 
                            const outfile: WideString; outformat: TxImageFileFormat): WordBool;
    function fi_FileLoad(const fiDLL: WideString; const filename: WideString): WordBool;
    function fi_FileSave(const fiDLL: WideString; const filename: WideString; 
                         outformat: TxImageFileFormat): WordBool;
    function FishEye(R: Integer; G: Integer; B: Integer): WordBool;
    function Flip: WordBool;
    function Frame(size: Integer; outerR: Integer; outerG: Integer; outerB: Integer; 
                   innerR: Integer; innerG: Integer; innerB: Integer): WordBool;
    function Gamma(R: Single; G: Single; B: Single; selection: WordBool): WordBool;
    function GetBlue(colorref: Integer): Integer;
    function GetColorCount: Integer;
    function GetGreen(colorref: Integer): Integer;
    function GetRed(colorref: Integer): Integer;
    function GetFileChecksum(const filename: WideString): WideString;
    function GetPictureHeight: Integer;
    function GetPictureWidth: Integer;
    function GetPictureHandle: LongWord;
    function GetSecondaryPictureHandle: LongWord;
    function GetVersion: WideString;
    function Grayscale(mode: TxGrayscaleMode; selection: WordBool): WordBool;
    function HighPass(version: TxHighPassVersion; selection: WordBool): WordBool;
    function Implode(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function LogicalOperation(operation: TxLogicalOperation; clipped: WordBool; selection: WordBool): WordBool;
    function Loupe(cx: Integer; cy: Integer; radius: Integer; strength: Integer): WordBool;
    function LowPass(version: TxLowPassVersion; selection: WordBool): WordBool;
    function MaskNotSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool;
    function MaskSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool;
    function Maximum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool;
    function Melt(selection: WordBool): WordBool;
    function Minimum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool;
    function Mosaic(cellWidth: Integer; cellHeight: Integer; selection: WordBool): WordBool;
    function MosaicConcentric(cx: Integer; cy: Integer; size: Integer): WordBool;
    function Negative(R: WordBool; G: WordBool; B: WordBool; selection: WordBool): WordBool;
    function OilPainting(blocksize: Integer; selection: WordBool): WordBool;
    function PaintOnCanvas(canvasWidth: Integer; canvasHeight: Integer; imageLeft: Integer; 
                           imageTop: Integer; canvasRed: Integer; canvasGreen: Integer; 
                           canvasBlue: Integer; shadowXoffset: Integer; shadowYoffset: Integer; 
                           shadowBlur: Integer; shadowRed: Integer; shadowGreen: Integer; 
                           shadowBlue: Integer): WordBool;
    function PasteAsNew: WordBool;
    function PerspectiveHorizontal(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function PerspectiveVertical(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function Pinch(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function Posterize(Rbits: Integer; Gbits: Integer; Bbits: Integer; selection: WordBool): WordBool;
    function Punch(cx: Integer; cy: Integer; amount: Integer): WordBool;
    function Reflect(mode: TxReflectionMode): WordBool;
    function RGBAdd(R: Integer; G: Integer; B: Integer; clipped: WordBool; selection: WordBool): WordBool;
    function RGBMix(Rr: Single; Rg: Single; Rb: Single; Gr: Single; Gg: Single; Gb: Single; 
                    Br: Single; Bg: Single; Bb: Single; clipped: WordBool; selection: WordBool): WordBool;
    function RGBMultiply(R: Single; G: Single; B: Single; clipped: WordBool; selection: WordBool): WordBool;
    function ReplaceColor(oldR: Integer; oldG: Integer; oldB: Integer; newR: Integer; 
                          newG: Integer; newB: Integer; tolerance: Integer; 
                          mode: TxColorReplaceMode; selection: WordBool): WordBool;
    function Resample(filter: TxResamplingFilter): WordBool;
    function ResizePicture(newWidth: Integer; newHeight: Integer; filter: TxResamplingFilter): WordBool;
    function Reverse: WordBool;
    function RotatePicture(cx: Integer; cy: Integer; angle: Single; R: Integer; G: Integer; 
                           B: Integer): WordBool;
    function RotatePictureEx(angle: Single; R: Integer; G: Integer; B: Integer): WordBool;
    function Rotate90: WordBool;
    function Rotate180: WordBool;
    function Rotate270: WordBool;
    function Saturation(amount: Integer; selection: WordBool): WordBool;
    function Scramble(tileWidth: Integer; tileHeight: Integer): WordBool;
    function SelectionShowHide(solid: WordBool): WordBool;
    function SetPictureHandle(handle: LongWord): WordBool;
    function SetSecondaryPictureHandle(handle: LongWord): WordBool;
    function Sharpen(selection: WordBool): WordBool;
    function SineWave(amplitudeX: Integer; amplitudeY: Integer; frequencyX: Single; 
                      frequencyY: Single; R: Integer; G: Integer; B: Integer): WordBool;
    function SkewHorizontally(angle: Single; R: Integer; G: Integer; B: Integer): WordBool;
    function SkewVertically(angle: Single; R: Integer; G: Integer; B: Integer): WordBool;
    function SoftenLess(selection: WordBool): WordBool;
    function SoftenMore(selection: WordBool): WordBool;
    function Solarize(Rthreshold: Integer; Gthreshold: Integer; Bthreshold: Integer; 
                      Reverse: WordBool; selection: WordBool): WordBool;
    function SpecialFilter(filter: TxSpecialFilter; bias: Integer; selection: WordBool): WordBool;
    function Spray(amount: Integer; selection: WordBool): WordBool;
    function SwapChannels(mode: TxChannelSwapMode; selection: WordBool): WordBool;
    function Texture(amount: Integer; mode: TxTextureMode; selection: WordBool): WordBool;
    function Tile(sourceLeft: Integer; sourceTop: Integer; sourceRight: Integer; 
                  sourceBottom: Integer): WordBool;
    function TileEx(sourceWidth: Integer; sourceHeight: Integer): WordBool;
    function Tint(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool;
    function Twirl(cx: Integer; cy: Integer; angle: Integer): WordBool;
    function TwirlEx(cx: Integer; cy: Integer; angle: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function Twist(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function UndoLoad(const filename: WideString): WordBool;
    function UndoSave(const filename: WideString): WordBool;
    function Unlock(const regcode: WideString): WordBool;
    procedure InitiateAction;
    function ColorGradient(cx: Integer; cy: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function Concatenate(edge: TxConcatenationEdge; R: Integer; G: Integer; B: Integer): WordBool;
    function FadeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function IrregularBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function Sepia(selection: WordBool): WordBool;
    function SepiaEx(amount: Integer; selection: WordBool): WordBool;
    function BrightnessGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
    function SaturationGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
    function ContrastGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
    function Blobs(blobWidth: Integer; blobHeight: Integer; selection: WordBool): WordBool;
    function BlurGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
    function ExtractIntensityRange(lower: Integer; upper: Integer; maskR: Integer; maskG: Integer; 
                                   maskB: Integer): WordBool;
    function HistogramStretch(selection: WordBool): WordBool;
    function RandomColumnShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function RandomRowShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
    function RefreshImageData: WordBool;
    function Scroll(amountX: Integer; amountY: Integer): WordBool;
    function SelectIntensityRange(lower: Integer; upper: Integer): Integer;
    function BlendEx(mode: TxLayerBlendMode; amount: Integer; selection: WordBool): WordBool;
    function ColorThreshold(loR: Integer; loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; 
                            hiB: Integer; hitR: Integer; hitG: Integer; hitB: Integer; 
                            missR: Integer; missG: Integer; missB: Integer; selection: WordBool): WordBool;
    function GetPixelRGB(x: Integer; y: Integer; const delimiter: WideString): WideString;
    function Wind(amount: Integer; direction: Single; selection: WordBool): WordBool;
    function Compress(mapping: TxMappingFunction; selection: WordBool): WordBool;
    function PixelsInColumns(startColumn: Integer; stopColumn: Integer; step: Integer; 
                             loR: Integer; loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; 
                             hiB: Integer; const separator: WideString): WideString;
    function PixelsInRows(startRow: Integer; stopRow: Integer; step: Integer; loR: Integer; 
                          loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; hiB: Integer; 
                          const separator: WideString): WideString;
    function ColorThresholdEx(const colorRangesCSV: WideString; hitR: Integer; hitG: Integer; 
                              hitB: Integer; missR: Integer; missG: Integer; missB: Integer; 
                              selection: WordBool): WordBool;
    function SelectPolygon(const polygonCSV: WideString): Integer;
    function GetHistogram(selection: WordBool; const delimiter: WideString): WideString;
    function GetHistogramEx(selection: WordBool; const delimiter: WideString; 
                            const filename: WideString): WordBool;
    function PasteIntoImage(x: Integer; y: Integer): WordBool;
    function CopyToClipboardAll: WordBool;
    function CopyToClipboardSelection: WordBool;
    function CopyToClipboardSelectionMasked(maskR: Integer; maskG: Integer; maskB: Integer): WordBool;
    function PasteIntoImageMasked(x: Integer; y: Integer; maskR: Integer; maskG: Integer; 
                                  maskB: Integer; tolerance: Integer): WordBool;
    function DeInterlaceColumns(odd: WordBool): WordBool;
    function DeInterlaceRows(odd: WordBool): WordBool;
    function FuzzyMask(R: Integer; G: Integer; B: Integer): WordBool;
    function FrameEx(Reverse: WordBool): WordBool;
    function FrameExEx: WordBool;
    function ColorCorrect(blackR: Integer; blackG: Integer; blackB: Integer; whiteR: Integer; 
                          whiteG: Integer; whiteB: Integer; selection: WordBool): WordBool;
    function Curves(const redCSV: WideString; const greenCSV: WideString; 
                    const blueCSV: WideString; selection: WordBool): WordBool;
    function DisplaceColumns(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool;
    function DisplaceRows(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool;
    property  ControlInterface: IPixTwix read GetControlInterface;
    property  DefaultInterface: IPixTwix read GetControlInterface;
  published
    property Anchors;
    property Picture: TPicture index -523 read GetTPictureProp write SetTPictureProp stored False;
    property SecondaryPicture: TPicture index 1 read GetTPictureProp write SetTPictureProp stored False;
    property OnProgress: TPixTwixOnProgress read FOnProgress write FOnProgress;
    property OnCanResize: TPixTwixOnCanResize read FOnCanResize write FOnCanResize;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    property OnConstrainedResize: TPixTwixOnConstrainedResize read FOnConstrainedResize write FOnConstrainedResize;
    property OnDblClick: TNotifyEvent read FOnDblClick write FOnDblClick;
    property OnResize: TNotifyEvent read FOnResize write FOnResize;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TPixTwix.InitControlData;
const
  CEventDispIDs: array [0..5] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000008, $00000011);
  CTPictureIDs: array [0..1] of DWORD = (
    $FFFFFDF5, $00000001);
  CControlData: TControlData2 = (
    ClassID: '{4BA83CD1-759F-4967-ABD0-386BEF8F357B}';
    EventIID: '{9E882098-1E71-4668-AEB3-C6DF954AF230}';
    EventCount: 6;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401;
    FontCount: 0;
    FontIDs: nil;
    PictureCount: 2;
    PictureIDs: @CTPictureIDs);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnProgress) - Cardinal(Self);
end;

procedure TPixTwix.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPixTwix;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TPixTwix.GetControlInterface: IPixTwix;
begin
  CreateControl;
  Result := FIntf;
end;

function TPixTwix.GetSelectionBoundingRectangle(const delimiter: WideString): WideString;
begin
  Result := DefaultInterface.GetSelectionBoundingRectangle(delimiter);
end;

function TPixTwix.SelectionCount: Integer;
begin
  Result := DefaultInterface.SelectionCount;
end;

function TPixTwix.SelectEllipse(eLeft: Integer; eTop: Integer; eRight: Integer; eBottom: Integer): Integer;
begin
  Result := DefaultInterface.SelectEllipse(eLeft, eTop, eRight, eBottom);
end;

function TPixTwix.SelectPixel(x: Integer; y: Integer; selected: WordBool): WordBool;
begin
  Result := DefaultInterface.SelectPixel(x, y, selected);
end;

function TPixTwix.SelectionPresent(x: Integer; y: Integer): WordBool;
begin
  Result := DefaultInterface.SelectionPresent(x, y);
end;

function TPixTwix.SelectRectangle(rLeft: Integer; rTop: Integer; rRight: Integer; rBottom: Integer): Integer;
begin
  Result := DefaultInterface.SelectRectangle(rLeft, rTop, rRight, rBottom);
end;

function TPixTwix.SelectionInvert: WordBool;
begin
  Result := DefaultInterface.SelectionInvert;
end;

function TPixTwix.SelectNone: WordBool;
begin
  Result := DefaultInterface.SelectNone;
end;

function TPixTwix.SelectAll: WordBool;
begin
  Result := DefaultInterface.SelectAll;
end;

function TPixTwix.SelectUsingGlobalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                             mode: TxMagicWandMode): Integer;
begin
  Result := DefaultInterface.SelectUsingGlobalMagicWand(x, y, tolerance, mode);
end;

function TPixTwix.SelectUsingLocalMagicWand(x: Integer; y: Integer; tolerance: Integer; 
                                            mode: TxMagicWandMode): Integer;
begin
  Result := DefaultInterface.SelectUsingLocalMagicWand(x, y, tolerance, mode);
end;

function TPixTwix.AddNoise(amount: Integer; monochrome: WordBool; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.AddNoise(amount, monochrome, selection);
end;

function TPixTwix.Antialias(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Antialias(selection);
end;

function TPixTwix.AutoCrop(R: Integer; G: Integer; B: Integer; tolerance: Integer): WordBool;
begin
  Result := DefaultInterface.AutoCrop(R, G, B, tolerance);
end;

function TPixTwix.BlackAndWhite(threshold: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.BlackAndWhite(threshold, selection);
end;

function TPixTwix.BlackAndWhiteDithered(bias: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.BlackAndWhiteDithered(bias, selection);
end;

function TPixTwix.Blend(amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Blend(amount, selection);
end;

function TPixTwix.Blur(amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Blur(amount, selection);
end;

function TPixTwix.BlurRadial(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.BlurRadial(cx, cy, amount, selection);
end;

function TPixTwix.BlurTangential(cx: Integer; cy: Integer; amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.BlurTangential(cx, cy, amount, selection);
end;

function TPixTwix.Brightness(amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Brightness(amount, selection);
end;

function TPixTwix.ClampBlue(mode: TxColorClampMode; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ClampBlue(mode, selection);
end;

function TPixTwix.ClampGreen(mode: TxColorClampMode; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ClampGreen(mode, selection);
end;

function TPixTwix.ClampRed(mode: TxColorClampMode; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ClampRed(mode, selection);
end;

function TPixTwix.ClearPicture(R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.ClearPicture(R, G, B);
end;

function TPixTwix.ClearSecondaryPicture: WordBool;
begin
  Result := DefaultInterface.ClearSecondaryPicture;
end;

function TPixTwix.ColorEmboss(direction: TxEmbossDirection; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ColorEmboss(direction, selection);
end;

function TPixTwix.ColorFill(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ColorFill(R, G, B, selection);
end;

function TPixTwix.Colorize(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Colorize(R, G, B, selection);
end;

function TPixTwix.Convolution3x3(c11: Single; c12: Single; c13: Single; c21: Single; c22: Single; 
                                 c23: Single; c31: Single; c32: Single; c33: Single; 
                                 divisor: Single; bias: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Convolution3x3(c11, c12, c13, c21, c22, c23, c31, c32, c33, divisor, 
                                            bias, selection);
end;

function TPixTwix.Contrast(amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Contrast(amount, selection);
end;

function TPixTwix.CropPicture(cLeft: Integer; cTop: Integer; cRight: Integer; cBottom: Integer): WordBool;
begin
  Result := DefaultInterface.CropPicture(cLeft, cTop, cRight, cBottom);
end;

function TPixTwix.Decrypt(const password: WideString): WordBool;
begin
  Result := DefaultInterface.Decrypt(password);
end;

function TPixTwix.DrawGrid(gridsize: Integer; continuous: WordBool; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.DrawGrid(gridsize, continuous, selection);
end;

function TPixTwix.Emboss(direction: TxEmbossDirection; amount: Integer; bias: Integer; 
                         monochrome: WordBool; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Emboss(direction, amount, bias, monochrome, selection);
end;

function TPixTwix.Encrypt(const password: WideString): WordBool;
begin
  Result := DefaultInterface.Encrypt(password);
end;

function TPixTwix.EnhanceEdge(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.EnhanceEdge(selection);
end;

function TPixTwix.ErodeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.ErodeBorder(size, R, G, B);
end;

function TPixTwix.Explode(cx: Integer; cy: Integer; amount: Integer): WordBool;
begin
  Result := DefaultInterface.Explode(cx, cy, amount);
end;

function TPixTwix.FalseColor(Rinitial: Integer; Rfinal: Integer; Ginitial: Integer; 
                             Gfinal: Integer; Binitial: Integer; Bfinal: Integer; 
                             selection: WordBool): WordBool;
begin
  Result := DefaultInterface.FalseColor(Rinitial, Rfinal, Ginitial, Gfinal, Binitial, Bfinal, 
                                        selection);
end;

function TPixTwix.fi_FileConvert(const fiDLL: WideString; const infile: WideString; 
                                 const outfile: WideString; outformat: TxImageFileFormat): WordBool;
begin
  Result := DefaultInterface.fi_FileConvert(fiDLL, infile, outfile, outformat);
end;

function TPixTwix.fi_FileLoad(const fiDLL: WideString; const filename: WideString): WordBool;
begin
  Result := DefaultInterface.fi_FileLoad(fiDLL, filename);
end;

function TPixTwix.fi_FileSave(const fiDLL: WideString; const filename: WideString; 
                              outformat: TxImageFileFormat): WordBool;
begin
  Result := DefaultInterface.fi_FileSave(fiDLL, filename, outformat);
end;

function TPixTwix.FishEye(R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.FishEye(R, G, B);
end;

function TPixTwix.Flip: WordBool;
begin
  Result := DefaultInterface.Flip;
end;

function TPixTwix.Frame(size: Integer; outerR: Integer; outerG: Integer; outerB: Integer; 
                        innerR: Integer; innerG: Integer; innerB: Integer): WordBool;
begin
  Result := DefaultInterface.Frame(size, outerR, outerG, outerB, innerR, innerG, innerB);
end;

function TPixTwix.Gamma(R: Single; G: Single; B: Single; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Gamma(R, G, B, selection);
end;

function TPixTwix.GetBlue(colorref: Integer): Integer;
begin
  Result := DefaultInterface.GetBlue(colorref);
end;

function TPixTwix.GetColorCount: Integer;
begin
  Result := DefaultInterface.GetColorCount;
end;

function TPixTwix.GetGreen(colorref: Integer): Integer;
begin
  Result := DefaultInterface.GetGreen(colorref);
end;

function TPixTwix.GetRed(colorref: Integer): Integer;
begin
  Result := DefaultInterface.GetRed(colorref);
end;

function TPixTwix.GetFileChecksum(const filename: WideString): WideString;
begin
  Result := DefaultInterface.GetFileChecksum(filename);
end;

function TPixTwix.GetPictureHeight: Integer;
begin
  Result := DefaultInterface.GetPictureHeight;
end;

function TPixTwix.GetPictureWidth: Integer;
begin
  Result := DefaultInterface.GetPictureWidth;
end;

function TPixTwix.GetPictureHandle: LongWord;
begin
  Result := DefaultInterface.GetPictureHandle;
end;

function TPixTwix.GetSecondaryPictureHandle: LongWord;
begin
  Result := DefaultInterface.GetSecondaryPictureHandle;
end;

function TPixTwix.GetVersion: WideString;
begin
  Result := DefaultInterface.GetVersion;
end;

function TPixTwix.Grayscale(mode: TxGrayscaleMode; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Grayscale(mode, selection);
end;

function TPixTwix.HighPass(version: TxHighPassVersion; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.HighPass(version, selection);
end;

function TPixTwix.Implode(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; 
                          B: Integer): WordBool;
begin
  Result := DefaultInterface.Implode(cx, cy, amount, R, G, B);
end;

function TPixTwix.LogicalOperation(operation: TxLogicalOperation; clipped: WordBool; 
                                   selection: WordBool): WordBool;
begin
  Result := DefaultInterface.LogicalOperation(operation, clipped, selection);
end;

function TPixTwix.Loupe(cx: Integer; cy: Integer; radius: Integer; strength: Integer): WordBool;
begin
  Result := DefaultInterface.Loupe(cx, cy, radius, strength);
end;

function TPixTwix.LowPass(version: TxLowPassVersion; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.LowPass(version, selection);
end;

function TPixTwix.MaskNotSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool;
begin
  Result := DefaultInterface.MaskNotSelected(maskR, maskG, maskB);
end;

function TPixTwix.MaskSelected(maskR: Integer; maskG: Integer; maskB: Integer): WordBool;
begin
  Result := DefaultInterface.MaskSelected(maskR, maskG, maskB);
end;

function TPixTwix.Maximum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Maximum(blockshape, blocksize, selection);
end;

function TPixTwix.Melt(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Melt(selection);
end;

function TPixTwix.Minimum(blockshape: TxBlockShape; blocksize: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Minimum(blockshape, blocksize, selection);
end;

function TPixTwix.Mosaic(cellWidth: Integer; cellHeight: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Mosaic(cellWidth, cellHeight, selection);
end;

function TPixTwix.MosaicConcentric(cx: Integer; cy: Integer; size: Integer): WordBool;
begin
  Result := DefaultInterface.MosaicConcentric(cx, cy, size);
end;

function TPixTwix.Negative(R: WordBool; G: WordBool; B: WordBool; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Negative(R, G, B, selection);
end;

function TPixTwix.OilPainting(blocksize: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.OilPainting(blocksize, selection);
end;

function TPixTwix.PaintOnCanvas(canvasWidth: Integer; canvasHeight: Integer; imageLeft: Integer; 
                                imageTop: Integer; canvasRed: Integer; canvasGreen: Integer; 
                                canvasBlue: Integer; shadowXoffset: Integer; 
                                shadowYoffset: Integer; shadowBlur: Integer; shadowRed: Integer; 
                                shadowGreen: Integer; shadowBlue: Integer): WordBool;
begin
  Result := DefaultInterface.PaintOnCanvas(canvasWidth, canvasHeight, imageLeft, imageTop, 
                                           canvasRed, canvasGreen, canvasBlue, shadowXoffset, 
                                           shadowYoffset, shadowBlur, shadowRed, shadowGreen, 
                                           shadowBlue);
end;

function TPixTwix.PasteAsNew: WordBool;
begin
  Result := DefaultInterface.PasteAsNew;
end;

function TPixTwix.PerspectiveHorizontal(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.PerspectiveHorizontal(amount, R, G, B);
end;

function TPixTwix.PerspectiveVertical(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.PerspectiveVertical(amount, R, G, B);
end;

function TPixTwix.Pinch(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; 
                        B: Integer): WordBool;
begin
  Result := DefaultInterface.Pinch(cx, cy, amount, R, G, B);
end;

function TPixTwix.Posterize(Rbits: Integer; Gbits: Integer; Bbits: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Posterize(Rbits, Gbits, Bbits, selection);
end;

function TPixTwix.Punch(cx: Integer; cy: Integer; amount: Integer): WordBool;
begin
  Result := DefaultInterface.Punch(cx, cy, amount);
end;

function TPixTwix.Reflect(mode: TxReflectionMode): WordBool;
begin
  Result := DefaultInterface.Reflect(mode);
end;

function TPixTwix.RGBAdd(R: Integer; G: Integer; B: Integer; clipped: WordBool; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.RGBAdd(R, G, B, clipped, selection);
end;

function TPixTwix.RGBMix(Rr: Single; Rg: Single; Rb: Single; Gr: Single; Gg: Single; Gb: Single; 
                         Br: Single; Bg: Single; Bb: Single; clipped: WordBool; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.RGBMix(Rr, Rg, Rb, Gr, Gg, Gb, Br, Bg, Bb, clipped, selection);
end;

function TPixTwix.RGBMultiply(R: Single; G: Single; B: Single; clipped: WordBool; 
                              selection: WordBool): WordBool;
begin
  Result := DefaultInterface.RGBMultiply(R, G, B, clipped, selection);
end;

function TPixTwix.ReplaceColor(oldR: Integer; oldG: Integer; oldB: Integer; newR: Integer; 
                               newG: Integer; newB: Integer; tolerance: Integer; 
                               mode: TxColorReplaceMode; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ReplaceColor(oldR, oldG, oldB, newR, newG, newB, tolerance, mode, 
                                          selection);
end;

function TPixTwix.Resample(filter: TxResamplingFilter): WordBool;
begin
  Result := DefaultInterface.Resample(filter);
end;

function TPixTwix.ResizePicture(newWidth: Integer; newHeight: Integer; filter: TxResamplingFilter): WordBool;
begin
  Result := DefaultInterface.ResizePicture(newWidth, newHeight, filter);
end;

function TPixTwix.Reverse: WordBool;
begin
  Result := DefaultInterface.Reverse;
end;

function TPixTwix.RotatePicture(cx: Integer; cy: Integer; angle: Single; R: Integer; G: Integer; 
                                B: Integer): WordBool;
begin
  Result := DefaultInterface.RotatePicture(cx, cy, angle, R, G, B);
end;

function TPixTwix.RotatePictureEx(angle: Single; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.RotatePictureEx(angle, R, G, B);
end;

function TPixTwix.Rotate90: WordBool;
begin
  Result := DefaultInterface.Rotate90;
end;

function TPixTwix.Rotate180: WordBool;
begin
  Result := DefaultInterface.Rotate180;
end;

function TPixTwix.Rotate270: WordBool;
begin
  Result := DefaultInterface.Rotate270;
end;

function TPixTwix.Saturation(amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Saturation(amount, selection);
end;

function TPixTwix.Scramble(tileWidth: Integer; tileHeight: Integer): WordBool;
begin
  Result := DefaultInterface.Scramble(tileWidth, tileHeight);
end;

function TPixTwix.SelectionShowHide(solid: WordBool): WordBool;
begin
  Result := DefaultInterface.SelectionShowHide(solid);
end;

function TPixTwix.SetPictureHandle(handle: LongWord): WordBool;
begin
  Result := DefaultInterface.SetPictureHandle(handle);
end;

function TPixTwix.SetSecondaryPictureHandle(handle: LongWord): WordBool;
begin
  Result := DefaultInterface.SetSecondaryPictureHandle(handle);
end;

function TPixTwix.Sharpen(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Sharpen(selection);
end;

function TPixTwix.SineWave(amplitudeX: Integer; amplitudeY: Integer; frequencyX: Single; 
                           frequencyY: Single; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.SineWave(amplitudeX, amplitudeY, frequencyX, frequencyY, R, G, B);
end;

function TPixTwix.SkewHorizontally(angle: Single; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.SkewHorizontally(angle, R, G, B);
end;

function TPixTwix.SkewVertically(angle: Single; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.SkewVertically(angle, R, G, B);
end;

function TPixTwix.SoftenLess(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.SoftenLess(selection);
end;

function TPixTwix.SoftenMore(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.SoftenMore(selection);
end;

function TPixTwix.Solarize(Rthreshold: Integer; Gthreshold: Integer; Bthreshold: Integer; 
                           Reverse: WordBool; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Solarize(Rthreshold, Gthreshold, Bthreshold, Reverse, selection);
end;

function TPixTwix.SpecialFilter(filter: TxSpecialFilter; bias: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.SpecialFilter(filter, bias, selection);
end;

function TPixTwix.Spray(amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Spray(amount, selection);
end;

function TPixTwix.SwapChannels(mode: TxChannelSwapMode; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.SwapChannels(mode, selection);
end;

function TPixTwix.Texture(amount: Integer; mode: TxTextureMode; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Texture(amount, mode, selection);
end;

function TPixTwix.Tile(sourceLeft: Integer; sourceTop: Integer; sourceRight: Integer; 
                       sourceBottom: Integer): WordBool;
begin
  Result := DefaultInterface.Tile(sourceLeft, sourceTop, sourceRight, sourceBottom);
end;

function TPixTwix.TileEx(sourceWidth: Integer; sourceHeight: Integer): WordBool;
begin
  Result := DefaultInterface.TileEx(sourceWidth, sourceHeight);
end;

function TPixTwix.Tint(R: Integer; G: Integer; B: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Tint(R, G, B, selection);
end;

function TPixTwix.Twirl(cx: Integer; cy: Integer; angle: Integer): WordBool;
begin
  Result := DefaultInterface.Twirl(cx, cy, angle);
end;

function TPixTwix.TwirlEx(cx: Integer; cy: Integer; angle: Integer; R: Integer; G: Integer; 
                          B: Integer): WordBool;
begin
  Result := DefaultInterface.TwirlEx(cx, cy, angle, R, G, B);
end;

function TPixTwix.Twist(cx: Integer; cy: Integer; amount: Integer; R: Integer; G: Integer; 
                        B: Integer): WordBool;
begin
  Result := DefaultInterface.Twist(cx, cy, amount, R, G, B);
end;

function TPixTwix.UndoLoad(const filename: WideString): WordBool;
begin
  Result := DefaultInterface.UndoLoad(filename);
end;

function TPixTwix.UndoSave(const filename: WideString): WordBool;
begin
  Result := DefaultInterface.UndoSave(filename);
end;

function TPixTwix.Unlock(const regcode: WideString): WordBool;
begin
  Result := DefaultInterface.Unlock(regcode);
end;

procedure TPixTwix.InitiateAction;
begin
  DefaultInterface.InitiateAction;
end;

function TPixTwix.ColorGradient(cx: Integer; cy: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.ColorGradient(cx, cy, R, G, B);
end;

function TPixTwix.Concatenate(edge: TxConcatenationEdge; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.Concatenate(edge, R, G, B);
end;

function TPixTwix.FadeBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.FadeBorder(size, R, G, B);
end;

function TPixTwix.IrregularBorder(size: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.IrregularBorder(size, R, G, B);
end;

function TPixTwix.Sepia(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Sepia(selection);
end;

function TPixTwix.SepiaEx(amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.SepiaEx(amount, selection);
end;

function TPixTwix.BrightnessGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
begin
  Result := DefaultInterface.BrightnessGradient(cx, cy, amount, Reverse);
end;

function TPixTwix.SaturationGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
begin
  Result := DefaultInterface.SaturationGradient(cx, cy, amount, Reverse);
end;

function TPixTwix.ContrastGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
begin
  Result := DefaultInterface.ContrastGradient(cx, cy, amount, Reverse);
end;

function TPixTwix.Blobs(blobWidth: Integer; blobHeight: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Blobs(blobWidth, blobHeight, selection);
end;

function TPixTwix.BlurGradient(cx: Integer; cy: Integer; amount: Integer; Reverse: WordBool): WordBool;
begin
  Result := DefaultInterface.BlurGradient(cx, cy, amount, Reverse);
end;

function TPixTwix.ExtractIntensityRange(lower: Integer; upper: Integer; maskR: Integer; 
                                        maskG: Integer; maskB: Integer): WordBool;
begin
  Result := DefaultInterface.ExtractIntensityRange(lower, upper, maskR, maskG, maskB);
end;

function TPixTwix.HistogramStretch(selection: WordBool): WordBool;
begin
  Result := DefaultInterface.HistogramStretch(selection);
end;

function TPixTwix.RandomColumnShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.RandomColumnShear(amount, R, G, B);
end;

function TPixTwix.RandomRowShear(amount: Integer; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.RandomRowShear(amount, R, G, B);
end;

function TPixTwix.RefreshImageData: WordBool;
begin
  Result := DefaultInterface.RefreshImageData;
end;

function TPixTwix.Scroll(amountX: Integer; amountY: Integer): WordBool;
begin
  Result := DefaultInterface.Scroll(amountX, amountY);
end;

function TPixTwix.SelectIntensityRange(lower: Integer; upper: Integer): Integer;
begin
  Result := DefaultInterface.SelectIntensityRange(lower, upper);
end;

function TPixTwix.BlendEx(mode: TxLayerBlendMode; amount: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.BlendEx(mode, amount, selection);
end;

function TPixTwix.ColorThreshold(loR: Integer; loG: Integer; loB: Integer; hiR: Integer; 
                                 hiG: Integer; hiB: Integer; hitR: Integer; hitG: Integer; 
                                 hitB: Integer; missR: Integer; missG: Integer; missB: Integer; 
                                 selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ColorThreshold(loR, loG, loB, hiR, hiG, hiB, hitR, hitG, hitB, missR, 
                                            missG, missB, selection);
end;

function TPixTwix.GetPixelRGB(x: Integer; y: Integer; const delimiter: WideString): WideString;
begin
  Result := DefaultInterface.GetPixelRGB(x, y, delimiter);
end;

function TPixTwix.Wind(amount: Integer; direction: Single; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Wind(amount, direction, selection);
end;

function TPixTwix.Compress(mapping: TxMappingFunction; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Compress(mapping, selection);
end;

function TPixTwix.PixelsInColumns(startColumn: Integer; stopColumn: Integer; step: Integer; 
                                  loR: Integer; loG: Integer; loB: Integer; hiR: Integer; 
                                  hiG: Integer; hiB: Integer; const separator: WideString): WideString;
begin
  Result := DefaultInterface.PixelsInColumns(startColumn, stopColumn, step, loR, loG, loB, hiR, 
                                             hiG, hiB, separator);
end;

function TPixTwix.PixelsInRows(startRow: Integer; stopRow: Integer; step: Integer; loR: Integer; 
                               loG: Integer; loB: Integer; hiR: Integer; hiG: Integer; 
                               hiB: Integer; const separator: WideString): WideString;
begin
  Result := DefaultInterface.PixelsInRows(startRow, stopRow, step, loR, loG, loB, hiR, hiG, hiB, 
                                          separator);
end;

function TPixTwix.ColorThresholdEx(const colorRangesCSV: WideString; hitR: Integer; hitG: Integer; 
                                   hitB: Integer; missR: Integer; missG: Integer; missB: Integer; 
                                   selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ColorThresholdEx(colorRangesCSV, hitR, hitG, hitB, missR, missG, 
                                              missB, selection);
end;

function TPixTwix.SelectPolygon(const polygonCSV: WideString): Integer;
begin
  Result := DefaultInterface.SelectPolygon(polygonCSV);
end;

function TPixTwix.GetHistogram(selection: WordBool; const delimiter: WideString): WideString;
begin
  Result := DefaultInterface.GetHistogram(selection, delimiter);
end;

function TPixTwix.GetHistogramEx(selection: WordBool; const delimiter: WideString; 
                                 const filename: WideString): WordBool;
begin
  Result := DefaultInterface.GetHistogramEx(selection, delimiter, filename);
end;

function TPixTwix.PasteIntoImage(x: Integer; y: Integer): WordBool;
begin
  Result := DefaultInterface.PasteIntoImage(x, y);
end;

function TPixTwix.CopyToClipboardAll: WordBool;
begin
  Result := DefaultInterface.CopyToClipboardAll;
end;

function TPixTwix.CopyToClipboardSelection: WordBool;
begin
  Result := DefaultInterface.CopyToClipboardSelection;
end;

function TPixTwix.CopyToClipboardSelectionMasked(maskR: Integer; maskG: Integer; maskB: Integer): WordBool;
begin
  Result := DefaultInterface.CopyToClipboardSelectionMasked(maskR, maskG, maskB);
end;

function TPixTwix.PasteIntoImageMasked(x: Integer; y: Integer; maskR: Integer; maskG: Integer; 
                                       maskB: Integer; tolerance: Integer): WordBool;
begin
  Result := DefaultInterface.PasteIntoImageMasked(x, y, maskR, maskG, maskB, tolerance);
end;

function TPixTwix.DeInterlaceColumns(odd: WordBool): WordBool;
begin
  Result := DefaultInterface.DeInterlaceColumns(odd);
end;

function TPixTwix.DeInterlaceRows(odd: WordBool): WordBool;
begin
  Result := DefaultInterface.DeInterlaceRows(odd);
end;

function TPixTwix.FuzzyMask(R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.FuzzyMask(R, G, B);
end;

function TPixTwix.FrameEx(Reverse: WordBool): WordBool;
begin
  Result := DefaultInterface.FrameEx(Reverse);
end;

function TPixTwix.FrameExEx: WordBool;
begin
  Result := DefaultInterface.FrameExEx;
end;

function TPixTwix.ColorCorrect(blackR: Integer; blackG: Integer; blackB: Integer; whiteR: Integer; 
                               whiteG: Integer; whiteB: Integer; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.ColorCorrect(blackR, blackG, blackB, whiteR, whiteG, whiteB, selection);
end;

function TPixTwix.Curves(const redCSV: WideString; const greenCSV: WideString; 
                         const blueCSV: WideString; selection: WordBool): WordBool;
begin
  Result := DefaultInterface.Curves(redCSV, greenCSV, blueCSV, selection);
end;

function TPixTwix.DisplaceColumns(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.DisplaceColumns(distancesCSV, R, G, B);
end;

function TPixTwix.DisplaceRows(const distancesCSV: WideString; R: Integer; G: Integer; B: Integer): WordBool;
begin
  Result := DefaultInterface.DisplaceRows(distancesCSV, R, G, B);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TPixTwix]);
end;

end.
