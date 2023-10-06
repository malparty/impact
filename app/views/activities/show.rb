# frozen_string_literal: true

class Activities::Show < ApplicationComponent
  include Phlex::Rails::Helpers::DOMID
  include Phlex::Rails::Helpers::LinkTo
  include Phlex::Rails::Helpers::ButtonTo

  def initialize(activity:)
    @activity = activity

    super()
  end

  def template
    div(class: 'm-4') do
      render Activities::Activity.new(activity: activity)

      link_to 'Edit this activity', edit_activity_path(@activity)
      plain '|'
      link_to 'Back to activities', activities_path

      button_to 'Destroy this activity', @activity, method: :delete
    end
  end

  private

  attr_reader :activity
end
