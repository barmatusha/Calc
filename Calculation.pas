unit Calculation;

interface

uses SysUtils, Classes, CalculationBaseClass;

type
  TMultiply = class(CalculationBase)
    public
      function Operation(): Double; override;
  end;

  TDivide = class(CalculationBase)
    public
      function Operation(): Double; override;
  end;

  TSum = class(CalculationBase)
    public
      function Operation(): Double; override;
  end;
  TSub = class(CalculationBase)
    public
      function Operation(): Double; override;
  end;

implementation

{ TMultiply }

function TMultiply.Operation(): Double;
begin
  Result:= a * b;
end;

{ TDivide }

function TDivide.Operation(): Double;
begin
  Result:= a/b;
end;

{ TSum }

function TSum.Operation(): Double;
begin
  Result:= a + b;
end;

{ TSub }

function TSub.Operation(): Double;
begin
  Result:= a-b;
end;

initialization
  RegisterClasses([TSub, TSum, TDivide, TMultiply]);

end.
