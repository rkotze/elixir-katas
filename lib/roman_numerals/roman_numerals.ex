defmodule RomanNumerals do

  @numerals [{5,"V"}, {4, "IV"}, {1, "I"}]

  def convert(number) do
    converts(number, @numerals)
  end

  def convert(number) when number < 1 do
    ""
  end

  def convert(number, [{arabic, roman} |tail]) when number >= arabic do
    roman <> convert(number - arabic, [{arabic, roman} | tail]);
  end

  def convert(number, [head | tail]) do
    converts(number, tail)
  end
end