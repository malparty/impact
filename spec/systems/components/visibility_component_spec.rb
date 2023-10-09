# frozen_string_literal: true

require 'rails_helper'
require 'phlex/testing/capybara'

describe 'Visibility component', type: :system do
  include Phlex::Testing::Capybara::ViewHelper

  describe '#hideTargets' do
    context 'given a visible target' do
      it 'hides the only the target' do
        render VisibilityComponent.new

        expect(page).to have_content('You can hide me by clicking on the hide button. Show me back with the show button')
        expect(page).to have_content('I am NOT a hideable target, so the actions do not impact me.')

        # This is NOT working, because `Phlex::Testing::Capybara::ViewHelper`
        # is used for tests like `Requests` tests (no behavior, only static HTML assertions)
        # It will raise the error:
        # undefined method `click_button' for class `Capybara::Node::Simple'
        click_button 'Hide'

        expect(page).not_to have_content('You can hide me by clicking on the hide button. Show me back with the show button')
        expect(page).to have_content('I am NOT a hideable target, so the actions do not impact me.')
      end
    end
  end
end
