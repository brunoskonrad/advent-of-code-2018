defmodule AdventOfCode.Convertor.StringList do
  def convert(input) do
    input
    |> String.split("\n", trim: true)
  end
end
