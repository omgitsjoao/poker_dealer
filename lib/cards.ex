defmodule Deck.Cards do
  @moduledoc """
  Implement constructors for real cards representation
  """

  @values [14, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
  @names ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  @suits [:spades, :hearts, :diamonds, :clubs]

  @doc """
  Return a list of tuples representing the cards on a default deck
  without the Joker cards.
  """
  @spec new() :: [{String.t(), atom}]
  def new do
    cards =
      for suit <- @suits,
          name <- @names,
          do: {name, suit}

    attribute_values(cards)
  end

  defp attribute_values(cards) do
    lookup = Enum.zip(@names, @values) |> Enum.into(%{})
    Enum.map(cards, fn {name, suit} -> {name, suit, lookup[name]} end)
  end
end