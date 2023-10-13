# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CardComponent, type: :component do
  it 'renders the card title' do
    card_component = described_class.new(title: 'A big Title', sub_title: 'the Sub title')
    render_inline(card_component) { 'Some content' }.css('p').to_html

    expect(rendered_content).to include('A big Title')
  end

  it 'renders the card sub title' do
    card_component = described_class.new(title: 'A big Title', sub_title: 'the Sub title')
    render_inline(card_component) { 'Some content' }.css('p').to_html

    expect(rendered_content).to include('the Sub title')
  end

  it 'renders the content block' do
    card_component = described_class.new(title: 'A big Title', sub_title: 'the Sub title')
    render_inline(card_component) { 'Some content' }.css('p').to_html

    expect(rendered_content).to include('Some content')
  end
end
