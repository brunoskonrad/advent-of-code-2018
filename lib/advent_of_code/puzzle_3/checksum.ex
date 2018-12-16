defmodule AdventOfCode.Puzzle3.Checksum do
  def checksum(input) do
    %{2 => two_ocurrences, 3 => three_ocurrences} =
      input
      |> Enum.map(fn string -> count_occurences(string) end)
      |> Enum.map(fn row -> reduce_to(row) end)
      |> Enum.reduce(%{2 => 0, 3 => 0}, fn value, acc ->
        Map.merge(acc, value, fn _k, v1, v2 -> v1 + v2 end)
      end)

    two_ocurrences * three_ocurrences
  end

  defp count_occurences(string) do
    string
    |> String.graphemes()
    |> Enum.reduce(%{}, fn char, acc ->
      Map.update(acc, char, 1, &(&1 + 1))
    end)
  end

  defp reduce_to(row) do
    Enum.reduce(row, %{2 => 0, 3 => 0}, fn value, acc ->
      {_, count} = value

      case count do
        2 -> Map.merge(acc, %{2 => 1})
        3 -> Map.merge(acc, %{3 => 1})
        _ -> acc
      end
    end)
  end
end
