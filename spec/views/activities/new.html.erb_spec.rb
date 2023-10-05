# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'activities/new' do
  before(:each) do
    assign(:activity, Activity.new(
                        name: 'MyString',
                        co2_kg: 1.5
                      ))
  end

  it 'renders new activity form' do
    render

    assert_select 'form[action=?][method=?]', activities_path, 'post' do
      assert_select 'input[name=?]', 'activity[name]'

      assert_select 'input[name=?]', 'activity[co2_kg]'
    end
  end
end
