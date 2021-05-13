unit uFrmSorting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSorting = class(TForm)
    btnSort: TButton;
    edSort: TEdit;
    procedure btnSortClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSorting: TfrmSorting;

implementation

{$R *.dfm}

uses udmSorting;

procedure TfrmSorting.btnSortClick(Sender: TObject);
  var
    a : string;
  begin
    a := edSort.text;
    dmSorting.sort(a);
    assert(dmSorting.isSorted(a));
    ShowMessage(a);
  end;
end.
