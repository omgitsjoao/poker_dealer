defmodule DealerTest do
  use ExUnit.Case
  doctest Dealer

  test "Delaer should have a deck with shuffled cards" do
    deck = Dealer.draw_deck()
    # we learn that the first card on the generated deck is an aces of spades
    card = Enum.at(deck, 0)
    assert card != {"A", :spades, 14}
  end

  test "Dealer should deal 2 two cards for each player" do
  end

  test "Dealer should draw 3 conssecutive cards cards" do
  end

  test "Dealer should draw the next card" do
  end
end