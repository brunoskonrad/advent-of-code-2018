defmodule AdventOfCode.Convertor.NumericList do
  def convert(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn calibration ->
      String.to_integer(calibration)
    end)
  end
end
