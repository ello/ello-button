require_relative '../test_helper'

class ButtonTest < Minitest::Test
  include Capybara::DSL

  def test_it_loads_button
    visit '/button'

    assert page.has_css? 'icon--ello'
  end
end
