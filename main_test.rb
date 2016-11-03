require 'minitest/autorun'
require './main'
require './pokemon'

class TestMain < Minitest::Test

  def setup
    @pokedex = Pokedex.new
    @pokemon = Pokemon.new('pika', 8, 8)
  end

  def test_add_pokemon
    @pokedex.add_pokemon('pika', 8, 8 )
    assert_equal  @pokedex.pokemon_list.count, 1
    assert_equal  @pokedex.pokemon_list.first.name, 'pika'
  end

  def test_increase_attack
    @pokemon.increase_attack
    assert_equal @pokemon.attack, 9
  end

  def test_increase_defense
    @pokemon.increase_defense
    assert_equal @pokemon.defense, 9
  end

  def test_get_stats
    assert_output("8/8\n") {@pokemon.get_stats}
  end

end