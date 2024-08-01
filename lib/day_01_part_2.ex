defmodule Day01Part2 do
  import Utils

  @regex "1|2|3|4|5|6|7|8|9|one|two|three|four|five|six|seven|eight|nine"

  def sample do
    content = File.read!(sample_file(__MODULE__))
    doit(content)
  end

  def puzzle do
    content = File.read!(puzzle_file(__MODULE__))
    doit(content)
  end

  defp from_string("1"), do: 1
  defp from_string("one"), do: 1
  defp from_string("2"), do: 2
  defp from_string("two"), do: 2
  defp from_string("3"), do: 3
  defp from_string("three"), do: 3
  defp from_string("4"), do: 4
  defp from_string("four"), do: 4
  defp from_string("5"), do: 5
  defp from_string("five"), do: 5
  defp from_string("6"), do: 6
  defp from_string("six"), do: 6
  defp from_string("7"), do: 7
  defp from_string("seven"), do: 7
  defp from_string("8"), do: 8
  defp from_string("eight"), do: 8
  defp from_string("9"), do: 9
  defp from_string("nine"), do: 9

  defp from_string(whatever) do
    IO.inspect("Err: #{whatever}")
    0
  end

  defp first_digit(line, regex) do
    {:ok, regex} = Regex.compile("(" <> regex <> ")")
    groups = Regex.run(regex, line, capture: :first)

    case groups do
      nil -> ["0"]
      _ -> groups
    end
    |> Enum.at(0)
  end

  defp last_digit(line, regex) do
    line
    |> String.reverse()
    |> first_digit(regex)
  end

  defp extract_number(line) do
    first = first_digit(line, @regex) |> from_string()

    last =
      last_digit(line, String.reverse(@regex))
      |> String.reverse()
      |> from_string()

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
