defmodule AdventOfCode.Puzzle2.Main do
  alias AdventOfCode.Puzzle2.Frequency
  alias AdventOfCode.Convertor.NumericList

  def execute() do
    read_file()
    |> NumericList.convert()
    |> Frequency.frequency()
  end

  defp read_file() do
    File.read!("priv/puzzle-1.txt")
  end
end
