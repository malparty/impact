# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CardComponent, type: :component do
  it 'renders the card title' do
    render_preview(:default, params: { title: 'A big Title', sub_title: 'the Sub title',
                                       content: 'Some content' })

    expect(rendered_content).to include('A big Title')
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
