defmodule InverseCaptcha do
  @input File.read!("lib/day_01/input.txt")

  def sum_adjacent(input \\ @input) do
    input
    |> to_list()
    |> wrap_list()
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.reduce(0, fn [a, b], acc ->
         if a == b, do: acc + a, else: acc
       end)
  end

  def sum_across(input \\ @input) do
    list = input |> to_list
    half = div(length(list), 2)

    list
    |> Enum.with_index()
    |> Enum.reduce(0, fn {num, idx}, acc ->
         if num == Enum.at(list, idx - half), do: acc + num, else: acc
       end)
  end

  defp to_list(string) do
    string
    |> String.trim()
    |> String.graphemes()
    |> Enum.map(&String.to_integer/1)
  end

  defp wrap_list([head | _] = list) do
    list ++ [head]
  end
end
