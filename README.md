# AdventOfCode2023Elixir

Solutions of [Advent of Code](https://adventofcode.com) for year 2023, written in Elixir

## Prerequisites

You need to have Elixir installed on your machine. See https://elixir-lang.org/install.html

## How to run

1. Clone this repo.

2. Install all dependencies with command
    ```sh
    > mix deps.get
    ```

3. Launch iex with command
    ```sh
    > iex -S mix
    ```

4. Execute each puzzle with command
    ```elixir
    iex(1)> Day01Part1.puzzle
    ```

    Each day is divide in part 1 and part 2, so you can run the command for a specificday and part  using a command in the form: `Day12Part2.puzzle`

    The result will be shown in the console.

    For testing purposes there's also a function `Day01Part1.sample` which runs on a reduce inputs
    provided as example in the puzzle description on the website.

    You should be able to launch these tests using 
    ```sh
    $ mix test
    ```