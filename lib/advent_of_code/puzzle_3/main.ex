defmodule AdventOfCode.Puzzle3.Main do
  alias AdventOfCode.Puzzle3.Checksum
  alias AdventOfCode.Convertor.StringList

  def execute() do
    read_file()
    |> StringList.convert()
    |> Checksum.checksum()
  end

  defp read_file() do
    File.read!("priv/puzzle-3.txt")
  end
end
