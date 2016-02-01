require_relative '../test_helper'

class ButtonTest < Minitest::Test
  include Capybara::DSL

  def test_it_loads_button
    visit '/button'

    assert page.has_css? '.icon--ello'
  end

  def test_it_loads_correct_button_color
    visit '/button?color=black'

    assert page.has_css? '.black'
    refute page.has_css? '.white'

    visit '/button?color=white'

    assert page.has_css? '.white'
    refute page.has_css? '.black'
  end

  def test_it_redirects_to_profile_on_click
    visit '/button?color=black&username=ello'
    find('a').click

    # Capybara is strict with redirects compared to browsers, so this will allow the test from breaking
    rescue Capybara::InfiniteRedirectError

    assert_equal page.current_url, 'https://ello.co/ello'
  end
end
