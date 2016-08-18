defmodule Rollr do
  def roll(sides) do
    IO.puts :rand.uniform(sides)
  end
end


IO.puts Rollr.roll(20)
