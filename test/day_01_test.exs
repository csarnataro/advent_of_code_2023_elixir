defmodule Day01Test do
  use ExUnit.Case

  @tag :skip
  test "day 1, part 1 with sample data" do
    assert Day01Part1.sample() == 142
  end

  @tag :skip
  test "day 1, part 2 with sample data" do
    assert Day01Part2.sample() == 45000
  end
end
