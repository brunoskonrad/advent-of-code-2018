defmodule AdventOfCode.CLI do
  def main(args) when length(args) === 0 do
    error_message("you should pass the puzzle number as an argument")
  end

  def main(args) do
    [puzzle] = args

    case execute_command(puzzle) do
      {:ok, result} -> success_message(result, puzzle)
      {:error, message} -> error_message(message)
    end
  end

  defp success_message(output, puzzle) do
    IO.puts("🎉  Puzzle #{puzzle} completed succesfully!\n\nAnswer: #{output}")
  end

  defp error_message(message) do
    IO.puts("🙅‍♀️ #{message}")
  end

  defp execute_command("1"), do: {:ok, AdventOfCode.Puzzle1.Main.execute()}
  defp execute_command("2"), do: {:ok, AdventOfCode.Puzzle2.Main.execute()}
  defp execute_command("3"), do: {:ok, AdventOfCode.Puzzle3.Main.execute()}
  defp execute_command(_), do: {:error, "Puzzle not implemented"}
end
