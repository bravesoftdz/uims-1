unit userpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tuserform = class(TForm)
    lbl1: TLabel;
    lst1: TListBox;
    btn1: TButton;
    edit2: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  userform: Tuserform;

implementation

{$R *.dfm}

procedure Tuserform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree
end;

procedure Tuserform.btn6Click(Sender: TObject);
begin
close
end;

end.
