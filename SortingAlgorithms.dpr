program SortingAlgorithms;

uses
  Vcl.Forms,
  uFrmSorting in 'uFrmSorting.pas' {frmSorting},
  udmSorting in 'udmSorting.pas' {dmSorting: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSorting, frmSorting);
  Application.CreateForm(TdmSorting, dmSorting);
  Application.Run;
end.
