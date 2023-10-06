# frozen_string_literal: true

class CardComponent < ApplicationComponent
  def initialize(id:, title:)
    @id = id
    @title = title

    super()
  end

  def template
    div(class: :card, id: id) do
      div(class: 'card-body') do
        h5(class: 'card-title') { title }
        div(class: 'card-text') { yield }
      end
    end
  end

  private

  attr_reader :id, :title
end
