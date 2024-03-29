unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uIOCPConsole, uIOCPJSonStreamDecoder, uIOCPJSonStreamEncoder,
  ExtCtrls, uIOCPHttpDecoder, uIOCPHttpEncoder, uHttpClientContext, superobject;

type
  TfrmMain = class(TForm)
    edtPort: TEdit;
    btnIOCPAPIRun: TButton;
    btnStopSevice: TButton;
    pnlINfo: TPanel;
    lblClientINfo: TLabel;
    lblRecvINfo: TLabel;
    lblSendINfo: TLabel;
    lblWorkCount: TLabel;
    lblMemINfo: TLabel;
    tmrTestINfo: TTimer;
    lblClientContextINfo: TLabel;
    chkHttpSvr: TCheckBox;
    lblSendAndRecvBytes: TLabel;
    btnReset: TButton;
    lblSendBytes: TLabel;
    btnCloseAllConnection: TButton;
    procedure btnCloseAllConnectionClick(Sender: TObject);
    procedure btnDiscountAllClientClick(Sender: TObject);
    procedure btnIOCPAPIRunClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnStopSeviceClick(Sender: TObject);
    procedure tmrTestINfoTimer(Sender: TObject);
  private
    { Private declarations }
    FIOCPConsole: TIOCPConsole;
    FHttpDecoder:TIOCPHttpDecoder;
    FHttpEncoder:TIOCPHttpEncoder;
    FDecoder:TIOCPJSonStreamDecoder;
    FEncoder:TIOCPJSonStreamEncoder;
  protected
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  uIOCPCentre, uClientContext, TesterINfo, uBuffer, uMemPool, uIOCPDebugger;

{$R *.dfm}

constructor TfrmMain.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDecoder := TIOCPJSonStreamDecoder.Create;
  FEncoder := TIOCPJSonStreamEncoder.Create;

  FHttpDecoder := TIOCPHttpDecoder.Create;
  FHttpEncoder := TIOCPHttpEncoder.Create;

  FIOCPConsole := TIOCPConsole.Create();

  //注册扩展客户端类
  TIOCPContextFactory.instance.registerClientContextClass(TClientContext);

  //注册解码器
  TIOCPContextFactory.instance.registerDecoder(FDecoder);

  //注册编码器
  TIOCPContextFactory.instance.registerEncoder(FEncoder);
end;

destructor TfrmMain.Destroy;
begin
  FIOCPConsole.close;
  FHttpDecoder.Free;
  FHttpEncoder.Free;
  FDecoder.Free;
  FEncoder.Free;
  FreeAndNil(FIOCPConsole);
  inherited Destroy;
end;

procedure TfrmMain.btnCloseAllConnectionClick(Sender: TObject);
begin
  FIOCPConsole.DisconnectAllClientContext;
end;

procedure TfrmMain.btnDiscountAllClientClick(Sender: TObject);
begin
  FIOCPConsole.DisconnectAllClientContext;
end;

procedure TfrmMain.btnIOCPAPIRunClick(Sender: TObject);
begin
  if not FIOCPConsole.Active then
  begin
    if chkHttpSvr.Checked then
    begin
      //注册扩展客户端类
      TIOCPContextFactory.instance.registerClientContextClass(THttpClientContext);

      //注册解码器
      TIOCPContextFactory.instance.registerDecoder(FHttpDecoder);

      //注册编码器
      TIOCPContextFactory.instance.registerEncoder(FHttpEncoder);
    end else
    begin
      //注册扩展客户端类
      TIOCPContextFactory.instance.registerClientContextClass(TClientContext);

      //注册解码器
      TIOCPContextFactory.instance.registerDecoder(FDecoder);

      //注册编码器
      TIOCPContextFactory.instance.registerEncoder(FEncoder);
    end;

    FIOCPConsole.WorkerCount := 2;
    FIOCPConsole.Port := StrToInt(edtPort.Text);
    FIOCPConsole.open;
    tmrTestINfo.Enabled := true;
  end;

  btnIOCPAPIRun.Enabled := not FIOCPConsole.Active;
  btnStopSevice.Enabled := not btnIOCPAPIRun.Enabled;

end;

procedure TfrmMain.btnResetClick(Sender: TObject);
begin
  TesterINfo.initializeTestINfo;
  TIOCPDebugger.resetDebugINfo;
end;

procedure TfrmMain.btnStopSeviceClick(Sender: TObject);
begin
  FIOCPConsole.close;
  btnIOCPAPIRun.Enabled := not FIOCPConsole.Active;
  btnStopSevice.Enabled := not btnIOCPAPIRun.Enabled;
end;

procedure TfrmMain.tmrTestINfoTimer(Sender: TObject);
var
  lvCount, lvBusyCount:Integer;
begin
  lblClientINfo.Caption := '连接数:' + IntToStr(TIOCPDebugger.clientCount);
  lblRecvINfo.Caption :=   '接收数据次数:' + IntToStr(TesterINfo.__RecvTimes);
  lblSendINfo.Caption :=   '发送数据次数:' + IntToStr(TesterINfo.__SendTimes);
  lblWorkCount.Caption :=  '工作线程:' + IntToStr(FIOCPConsole.WorkerCount);
  lblSendAndRecvBytes.Caption :=
    Format('接收/发送字节数:%d/%d bytes, %d/%d blockCount',
      [TIOCPDebugger.recvBytes,
       TIOCPDebugger.sendBytes,
       TIOCPDebugger.recvBlockCount,
       TIOCPDebugger.sendBlockCount]);

  lblSendBytes.Caption :=
    Format('投递/发送字节数:%d/%d bytes',
      [TIOCPDebugger.WSASendBytes,
       TIOCPDebugger.sendBytes]);

  lblMemINfo.Caption :=   Format(
     'IO内存块池共(%d),可用(%d)',
     [TIODataMemPool.instance.getCount, TIODataMemPool.instance.getUseableCount]);

  lvCount := TIOCPContextFactory.instance.IOCPContextPool.count;
  lvBusyCount := TIOCPContextFactory.instance.IOCPContextPool.BusyCount;
  lblClientContextINfo.Caption :=   Format(
     'ClientContext池共(%d),可用(%d)',
     [lvCount, lvCount - lvBusyCount]);
end;

end.

