defmodule AdventOfCode.Convertor.NumericListTest do
  use ExUnit.Case
  alias AdventOfCode.Convertor.NumericList

  test "convert" do
    fixture = """
    1
    2
    -3
    4
    5
    -6
    """

    assert NumericList.convert(fixture) === [1, 2, -3, 4, 5, -6]
  end
end
