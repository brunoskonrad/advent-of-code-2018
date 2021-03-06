defmodule AdventOfCode.Puzzle1.Main do
  alias AdventOfCode.Puzzle1.Calibration
  alias AdventOfCode.Convertor.NumericList

  def execute() do
    read_file()
    |> NumericList.convert()
    |> Calibration.calculate_calibration(0)
  end

  defp read_file() do
    File.read!("priv/puzzle-1.txt")
  end
end
