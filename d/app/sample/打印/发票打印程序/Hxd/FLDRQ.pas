unit FLDRQ;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, ExtCtrls, DBEditK;

type
  TDateForm = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label23: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText9: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    Label24: TLabel;
    Query1: TQuery;
    EditK1: TEditK;
    EditK2: TEditK;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditK2Exit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DateForm: TDateForm;

implementation

{$R *.DFM}

procedure TDateForm.Button3Click(Sender: TObject);
begin
  if not Query1.EOF then
    Query1.Next
  else
    Button2.SetFocus;
end;

procedure TDateForm.Button2Click(Sender: TObject);
begin
  if not Query1.BOF then
    Query1.Prior
  else
    Button3.SetFocus;
end;

procedure TDateForm.FormShow(Sender: TObject);
begin
  Editk1.SetFocus;
end;

procedure TDateForm.Button1Click(Sender: TObject);
begin
  Query1.Close;
  Close;
end;

procedure TDateForm.EditK2Exit(Sender: TObject);
begin
  if (Editk1.Text <> '') and (Editk2.Text <> '') then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from hxdk.db where (领单日期>=:start) and (领单日期<=:end)');
    Query1.ParamByName('start').AsDateTime := StrToDateTime(Editk1.Text);
    Query1.ParamByName('end').AsDateTime := StrToDateTime(Editk2.Text);
    Query1.Open;
  end;
  if (Editk1.Text <> '') and (Editk2.Text = '') then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from hxdk.db where (领单日期>=:start)');
    Query1.ParamByName('start').AsDateTime := StrToDateTime(Editk1.Text);
    Query1.Open;
  end;
  if (Editk1.Text = '') and (Editk2.Text <> '') then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from hxdk.db where (领单日期<=:end)');
    Query1.ParamByName('end').AsDateTime := StrToDateTime(Editk2.Text);
    Query1.Open;
  end;
  Button3.SetFocus;
end;

end.
