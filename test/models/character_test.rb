require "test_helper"

class CharacterTest < ActiveSupport::TestCase
  setup do
    @dante = characters(:dante)
  end

  test "#ultimate" do
    assert_equal 4, @dante.ultimate
  end
  test "#alive" do
    assert @dante.alive
  end
end
