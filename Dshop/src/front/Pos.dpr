program Pos;

uses
  Forms,
  md5 in 'md5.pas',
  Unit1 in 'Unit1.pas' {Pass},
  Unit2 in 'Unit2.pas' {Main},
  Unit3 in 'Unit3.pas' {RegKey},
  Unit4 in 'Unit4.pas' {Main_T},
  Unit5 in 'Unit5.pas' {Gathering},
  Unit22 in 'Unit22.pas' {SHQR},
  Unit8 in 'Unit8.pas' {Card},
  Unit24 in 'Unit24.pas' {CF},
  Unit10 in 'Unit10.pas' {QD},
  Unit18 in 'Unit18.pas' {QHDF7},
  Unit19 in 'Unit19.pas' {QHD_P},
  Unit17 in 'Unit17.pas' {QHD},
  Unit23 in 'Unit23.pas' {QHB},
  Unit7 in 'Unit7.pas' {Pos_Setup},
  Unit6 in 'Unit6.pas' {MoLing},
  Unit9 in 'Unit9.pas' {QC},
  Unit11 in 'Unit11.pas' {QS},
  Unit12 in 'Unit12.pas' {QP},
  Unit20 in 'Unit20.pas' {QPT},
  Unit21 in 'Unit21.pas' {QPC},
  Unit13 in 'Unit13.pas' {QO},
  Unit14 in 'Unit14.pas' {QR},
  Unit15 in 'Unit15.pas' {CDKEY},
  Unit16 in 'Unit16.pas' {QHD_PT};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TPass, Pass);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TQO, QO);
  Application.CreateForm(TQHD_PT, QHD_PT);
  Application.Run;
end.

