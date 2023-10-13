# frozen_string_literal: true

class CardComponentPreview < ViewComponent::Preview
  def default(title: 'A big Title', sub_title: 'the Sub title', content: 'Some content')
    render(CardComponent.new(title: title, sub_title: sub_title)) do
      content_tag(:span, content)
    end
  end
end
