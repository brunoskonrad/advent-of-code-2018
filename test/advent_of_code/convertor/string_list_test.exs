defmodule AdventOfCode.Convertor.StringListTest do
  use ExUnit.Case
  alias AdventOfCode.Convertor.StringList

  test "convert" do
    fixture = """
    1
    2
    -3
    4
    5
    -6
    """

    assert StringList.convert(fixture) === ["1", "2", "-3", "4", "5", "-6"]
  end
end
