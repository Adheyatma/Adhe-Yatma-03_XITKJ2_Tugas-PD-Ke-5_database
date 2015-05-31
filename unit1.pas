unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  DBGrids, StdCtrls, ZDataset, ZConnection, db;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label5: TLabel;
    Masukan: TButton;
    Rubah: TButton;
    Hapus: TButton;
    Keluar: TButton;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    NIS: TEdit;
    Nama: TEdit;
    Kelas: TEdit;
    Email: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure HapusClick(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    procedure MasukanClick(Sender: TObject);
    procedure RubahClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MasukanClick(Sender: TObject);
begin
  zquery2.SQL.Clear;
  zquery2.SQL.Add('insert into datasiswa values("'+NIS.Text+'","'+Nama.Text+'","'+Kelas.Text+'","'+Email.Text+'")');
  zquery2.ExecSQL;
  zquery1.Refresh;
end;

procedure TForm1.HapusClick(Sender: TObject);
begin
  zquery2.SQL.Clear;
  zquery2.SQL.Add('delete from datasiswa where NIS="'+NIS.Text+'"');
  zquery2.ExecSQL;
  zquery1.Refresh;
end;

procedure TForm1.KeluarClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm1.RubahClick(Sender: TObject);
begin
  zquery2.SQL.Clear;
  zquery2.SQL.Add('update datasiswa set NIS="'+NIS.Text+'",Nama="'+Nama.Text+'",Kelas="'+Kelas.Text+'",Email="'+Email.Text+'" where NIS="'+NIS.Text+'"');
  zquery2.ExecSQL;
  zquery1.Refresh;
end;

end.

