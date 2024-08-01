defmodule Day01Part1 do
  import Utils

  def sample do
    content = File.read!(sample_file(__MODULE__))
    doit(content)
  end

  def puzzle do
    content = File.read!(puzzle_file(__MODULE__))
    doit(content)
  end

  defp first_digit(line) do
    line
    |> String.to_charlist()
    |> Enum.reduce_while(nil, fn g, _acc ->
      if g >= ?0 and g <= ?9,
        do: {:halt, g - ?0},
        else: {:cont, 0}
    end)
  end

  defp last_digit(line) do
    line
    |> String.reverse()
    |> first_digit()
  end

  defp extract_number(line) do
    first = first_digit(line)
    last = last_digit(line)
    first * 10 + last
  end

  def doit(content) do
    String.split(content, "\n")
    |> Enum.map(fn line -> extract_number(line) end)
    |> Enum.sum()

    # |> Enum.map(&Integer.parse/1)
    # |> Enum.map(&get_value/1)
    # |> Enum.reduce(%{:max => 0, :bucket => 0}, &reducer(&1, &2))
    # |> Map.fetch(:max)
    # |> case do
    #   {:ok, v} -> v
    #   _ -> 0
    # end
  end
end
