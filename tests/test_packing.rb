require "minitest/autorun"
require "./item"

class TestPacking < Minitest::Test
  def setup
    @item = Item.new("hat")
  end

  def test_initial_status
    assert_equal "not packed", @item.status
  end

  def test_name_assignment
    assert_equal "hat", @item.name
  end
end
