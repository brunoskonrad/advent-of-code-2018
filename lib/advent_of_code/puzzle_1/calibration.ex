defmodule AdventOfCode.Puzzle1.Calibration do
  def calculate_calibration(input, initial \\ 0)
  def calculate_calibration([], initial), do: initial

  def calculate_calibration(input, initial) do
    [head | tail] = input

    calculate_calibration(tail, head + initial)
  end
end
