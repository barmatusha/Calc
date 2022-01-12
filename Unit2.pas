unit Unit2;

interface

uses
  System.Variants;

implementation

type
  Calculation = class
  private
  //val_1, val_2: Double;
  isOperationActive: boolean;
  protected
    function GetSum(a, b: Double): Double;
    function GetMin(a, b: Double): Double;
    function GetMul(a, b: Double): Double;
    function GetDiv(a, b: Double): Double;

  end;

{ Calculation }

function Calculation.GetDiv(a, b: Double): Double;
begin
    Result:= a/b;
end;

function Calculation.GetMin(a, b: Double): Double;
begin
    Result:= a-b;
end;

function Calculation.GetMul(a, b: Double): Double;
begin
    Result:= a*b;
end;

Function Calculation.GetSum(a, b: Double):Double;
begin
    Result:= a+b;
end;

end.
