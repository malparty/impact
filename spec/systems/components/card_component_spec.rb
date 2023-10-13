# frozen_string_literal: true

require 'rails_helper'
require 'uri'

RSpec.describe 'Render a Card Component', type: :system do
  it 'renders the card title' do
    params = { title: 'A big Title', sub_title: 'the Sub title', content: 'Some content' }
    uri = URI.parse('/rails/view_components/card_component/default')
    uri.query = params.map { |k, v| "#{k}=#{v}" }.join('&')

    Capybara.current_session.visit(uri)

    assert_selector('.card-header', text: 'A big Title')
  end

  it 'renders the card sub title' do
    render_preview(:default, params: { title: 'A big Title', sub_title: 'the Sub title',
                                       content: 'Some content' })

    expect(rendered_content).to include('the Sub title')
  end

  it 'renders the content block' do
    render_preview(:default, params: { title: 'A big Title', sub_title: 'the Sub title',
                                       content: 'Some content' })

    expect(rendered_content).to include('Some content')
  end
end
