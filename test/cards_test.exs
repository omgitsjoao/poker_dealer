defmodule CardTest do
  use ExUnit.Case

  test "a default card collection should contain 52 cards" do
    amount_cards =
      Deck.Cards.new()
      |> Enum.count()

    assert amount_cards == 52
  end

  test "a card value within a collection of cards is composed by a 3-tuple" do
    card =
      Deck.Cards.new()
      |> Enum.take(1)
      |> Enum.at(0)

    assert tuple_size(card) == 3
  end

  test "a 3-tuple of a card is composed of name, suit, and ordinal value" do
    card =
      Deck.Cards.new()
      |> Enum.take(1)
      |> Enum.at(0)

    maybe_name = elem(card, 0)
    maybe_suit = elem(card, 1)
    maybe_value = elem(card, 2)
    assert maybe_name == "A"
    assert maybe_suit == :spades
    assert maybe_value == 14
  end
end