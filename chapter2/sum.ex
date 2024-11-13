defmodule Eli.Iter do
  def sum(collection) do
    collection |> sum(0)
  end

  def sum([head | tail], total) do
    sum(tail, total + head)
  end

  def sum([], total) do
    total
  end
end

IO.inspect(Eli.Iter.sum(Enum.to_list(1..7)))
