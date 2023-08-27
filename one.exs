defmodule Parsing do
  def parse(input) do
    String.splitter(input, "\n")
  |> one()
|> IO.inspect()
    :prased
  end

defp one(arg) do

  arg |> Enum.reduce(fn x, acc ->
Map.get(acc, :some) |> IO.inspect()
  case x do
   # "" -> %{ some: [x | Map.get(acc, :some)] }
   _ -> %{ some: [x | Map.get(acc, :some)]}
end
 end)
end

  def parse_one(block) do
  end
end

defmodule Count do
  def count_fatest(args) do
    :counted
  end
end

defmodule Main do
  def run do
    result =
      case File.read("./input") do
        # |> IO.inspect()  #  Count.count_fatest()
        {:ok, content} -> Parsing.parse(content)
        {:error, reason} -> :error
      end

    IO.puts(result)
  end
end

Main.run()
