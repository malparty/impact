# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'machines/show' do
  before(:each) do
    assign(:machine, Machine.create!(
                       name: 'Name',
                       yearly_co2_kg: 2.5
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
  end
end
