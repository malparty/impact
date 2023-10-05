# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'machines/edit' do
  let(:machine) do
    Machine.create!(
      name: 'MyString',
      yearly_co2_kg: 1.5
    )
  end

  before(:each) do
    assign(:machine, machine)
  end

  it 'renders the edit machine form' do
    render

    assert_select 'form[action=?][method=?]', machine_path(machine), 'post' do
      assert_select 'input[name=?]', 'machine[name]'

      assert_select 'input[name=?]', 'machine[yearly_co2_kg]'
    end
  end
end
