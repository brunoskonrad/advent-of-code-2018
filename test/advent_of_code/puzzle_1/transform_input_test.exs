defmodule AdventOfCode.Puzzle1.TransformInputTest do
  use ExUnit.Case
  alias AdventOfCode.Puzzle1.TransformInput

  test "transform" do
    fixture = """
    1
    2
    -3
    4
    5
    -6
    """

    assert TransformInput.transform(fixture) === [1, 2, -3, 4, 5, -6]
  end
end
