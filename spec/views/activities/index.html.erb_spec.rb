# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'activities/index' do
  before(:each) do
    assign(:activities, [
             Activity.create!(
               name: 'Name',
               co2_kg: 2.5
             ),
             Activity.create!(
               name: 'Name',
               co2_kg: 2.5
             )
           ])
  end

  it 'renders a list of activities' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
