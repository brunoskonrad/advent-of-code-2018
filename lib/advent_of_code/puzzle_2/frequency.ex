defmodule AdventOfCode.Puzzle2.Frequency do
  def frequency(list) do
    handle_return(list, [])
  end

  def handle_return(_list, result) when is_number(result), do: result
  def handle_return(list, result) do
    new_result = perform_frequency(list, result)

    if is_number(new_result) do
      new_result
    else
      handle_return(list, new_result)
    end
  end

  defp perform_frequency([], saved), do: saved
  defp perform_frequency(list, saved) do
    [head|tail] = list
    last = get_last_saved(saved)
    new_frequency = head + last

    if Enum.member?(saved, new_frequency) do
      new_frequency
    else
      perform_frequency(tail, saved ++ [new_frequency])
    end
  end

  defp get_last_saved(saved) when length(saved) === 0, do: 0
  defp get_last_saved(saved), do: List.last(saved)
end
