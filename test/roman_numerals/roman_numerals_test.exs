defmodule RomanNumeralsTest do
  use ExUnit.Case

  test "convert arabic into roman numerals" do
    test_cases = [{0, ""},
                  {1, "I"},
                  {2, "II"},
                  {3, "III"},
                  {4, "IV"},
                  {5, "V"},
                  {6, "VI"},
                  {9, "IX"},
                  {10, "X"},
                  {28, "XXVIII"}]

    Enum.each test_cases, fn ({arabic, roman}) -> assert RomanNumerals.convert(arabic) == roman end;
  end
end