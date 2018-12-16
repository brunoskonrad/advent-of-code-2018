defmodule AdventOfCode.Puzzle1.TransformInput do
  def transform(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn calibration ->
      String.to_integer(calibration)
    end)
  end
end
