# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:each, type: :system) do
    config.include ActionView::RecordIdentifier, type: :system
    config.include Warden::Test::Helpers, type: :system
    config.include ViewComponent::SystemTestHelpers, type: :system
    # use headless_chrome, by default
    driven_by :headless_chrome

    # uncomment to use chrome browser
    # driven_by :selenium, using: :chrome

    # uncomment to use firefox browser
    # driven_by :selenium, using: :firefox
    config.after(:example, type: :system) do
      Warden.test_reset!
    end
  end
end
