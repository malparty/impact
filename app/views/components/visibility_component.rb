# frozen_string_literal: true

class VisibilityComponent < ApplicationComponent
  def template
    div(data: { controller: :visibility }) do
      p(data: { visibility_target: :hideable }) { 'You can hide me by clicking on the hide button. Show me back with the show button' }
      p { 'I am NOT a hideable target, so the actions do not impact me.' }
      button(data: { action: 'visibility#hideTargets' }) { 'Hide' }
      button(data: { action: 'visibility#showTargets' }) { 'Show' }
    end
  end
end
