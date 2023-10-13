# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(title:, sub_title:)
    @title = title
    @sub_title = sub_title
  end
end
