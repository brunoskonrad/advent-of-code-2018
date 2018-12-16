defmodule AdventOfCode.Puzzle1.CalibrationTest do
  use ExUnit.Case
  alias AdventOfCode.Puzzle1.Calibration

  test "calculate calibration" do
    fixture = [1, 3, -2, 5, 10, -20, 3, 5]

    assert Calibration.calculate_calibration(fixture) === 5
  end

  test "calculate calibration given initial value" do
    fixture = [1, 2, 3, 4]

    assert Calibration.calculate_calibration(fixture, -6) === 4
  end
end
