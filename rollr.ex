defmodule Rollr do
  def roll(sides, num) do
    roll_multiple(sides, num, 0)
  end

  defp roll_multiple(_sides, iterator, total) when iterator == 0 do
    total 
  end

  defp roll_multiple(sides, iterator, total) do 
    new_roll = roll_single(sides)
    new_total = (new_roll + total)
    new_iterator = (iterator - 1) 
    roll_multiple(sides, new_iterator, new_total)
  end


  defp roll_single(sides) do
    :rand.uniform(sides)
  end
end


IO.puts Rollr.roll(20, 1)
