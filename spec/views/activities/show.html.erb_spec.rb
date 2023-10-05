# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'activities/show' do
  before(:each) do
    assign(:activity, Activity.create!(
                        name: 'Name',
                        co2_kg: 2.5
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
  end
end
