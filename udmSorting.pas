unit udmSorting;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmSorting = class(TDataModule)
  private
    { Private declarations }
    function less (v,w : string) : boolean;
    procedure exchange (a : string; i, j : integer);
  public
    { Public declarations }
    function isSorted(a : string) : boolean;
    procedure sort(a : string);
    procedure show(a : string);
  end;

var
  dmSorting: TdmSorting;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmSorting }

procedure TdmSorting.sort(a : string);
  var
    n   : integer;
    i   : integer;
    j   : integer;
    min : integer;
  begin
    n := a.length;

    for i := 1 to n do
      begin
        min := i;
        for j := i + 1 to n -1 do
          begin
            if less(a[j], a[min]) then
              min := j;

            exchange(a, i, min);
          end;
      end;
  end;

function TdmSorting.less(v, w : string) : boolean;
  begin
    if AnsiCompareStr(v, w) < 0  then
      result := true
    else
      result := false;
  end;

procedure TdmSorting.exchange(a : string; i, j : integer);
  var
    t : char;
  begin
    t    := a[i];
    a[i] := a[j];
    a[j] := t;
  end;

procedure TdmSorting.show(a: string);
  var
    i : Integer;
  begin
    for i := 0 to a.length - 1 do
      begin
        Write(a[i] + ' ');
      end;

    WriteLn('');
  end;

function TdmSorting.isSorted(a : string): boolean;
  var
    i : integer;
  begin
    for i := 1 to a.length - 1 do
      begin
        if less(a[i], a[i-1]) then
          begin
            result := false;
            break;
          end
        else
          result := true;
      end;

    result := true;
  end;
end.
