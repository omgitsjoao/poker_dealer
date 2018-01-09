defmodule Dealer do
  @moduledoc """
  An abstraction over the deck rules from Texas Hold'em poker
  """

  def draw_deck do
    Deck.Cards.new()
    |> Enum.shuffle()
  end
end