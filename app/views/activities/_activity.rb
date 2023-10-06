# frozen_string_literal: true

class Activities::Activity < ApplicationComponent
  include Phlex::Rails::Helpers::DOMID

  def initialize(activity:)
    @activity = activity

    super()
  end

  def template
    render CardComponent.new(id: dom_id(activity), title: activity.name) do
      p do
        plain 'This activity produces '
        strong { "#{activity.co2_kg}kg" }
        plain ' of CO2.'
      end
    end
  end

  private

  attr_reader :activity
end
