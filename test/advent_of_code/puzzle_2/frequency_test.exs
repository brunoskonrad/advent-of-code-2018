defmodule AdventOfCode.Puzzle2.FrequencyTest do
  use ExUnit.Case
  alias AdventOfCode.Puzzle2.Frequency

  test "given [+3, +3, +4, -2, -4] returns 10" do
    fixture = [+3, +3, +4, -2, -4]

    assert Frequency.frequency(fixture) === 10
  end

  test "given [+2, +1, -5] returns 10" do
    fixture = [+2, +1, -5]

    assert Frequency.frequency(fixture) === -2
  end
end
