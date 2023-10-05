# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'activities/edit' do
  let(:activity) do
    Activity.create!(
      name: 'MyString',
      co2_kg: 1.5
    )
  end

  before(:each) do
    assign(:activity, activity)
  end

  it 'renders the edit activity form' do
    render

    assert_select 'form[action=?][method=?]', activity_path(activity), 'post' do
      assert_select 'input[name=?]', 'activity[name]'

      assert_select 'input[name=?]', 'activity[co2_kg]'
    end
  end
end
