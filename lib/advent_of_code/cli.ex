defmodule AdventOfCode.CLI do
  def main(args) when length(args) === 0 do
    error_message("you should pass the puzzle number as an argument")
  end

  def main(args) do
    [puzzle] = args

    puzzle
    |> execute_command
    |> success_message(puzzle)
  end

  defp success_message(output, puzzle) do
    IO.puts("🎉  Puzzle #{puzzle} completed succesfully!\n\nAnswer: #{output}")
  end

  defp error_message(message) do
    IO.puts("🙅‍♀️ #{message}")
  end

  defp execute_command("1") do
    AdventOfCode.Puzzle1.Main.execute()
  end

  defp execute_command(_), do: error_message("Puzzle not implemented")
end
