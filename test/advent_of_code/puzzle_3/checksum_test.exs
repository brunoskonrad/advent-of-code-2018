defmodule AdventOfCode.Puzzle3.ChecksumTest do
  use ExUnit.Case
  alias AdventOfCode.Puzzle3.Checksum

  test "checksum" do
    fixture = [
      "abcdef",
      "bababc",
      "abbcde",
      "abcccd",
      "aabcdd",
      "abcdee",
      "ababab"
    ]

    assert Checksum.checksum(fixture) === 12
  end
end
