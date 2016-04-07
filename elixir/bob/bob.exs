defmodule Bob do
  def hey(input) do
    cond do
      String.strip(input) == "" -> "Fine. Be that way!"
      String.match?(input, ~r/^.*\?$/) -> "Sure."
      String.match?(input, ~r/^[0-9,-\s]+$/) -> "Whatever."
      String.upcase(input) == input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
