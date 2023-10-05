# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'machines/new' do
  before(:each) do
    assign(:machine, Machine.new(
                       name: 'MyString',
                       yearly_co2_kg: 1.5
                     ))
  end

  it 'renders new machine form' do
    render

    assert_select 'form[action=?][method=?]', machines_path, 'post' do
      assert_select 'input[name=?]', 'machine[name]'

      assert_select 'input[name=?]', 'machine[yearly_co2_kg]'
    end
  end
end
