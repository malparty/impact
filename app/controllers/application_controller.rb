# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Localization

  private

  def notice_sucess(klass, action)
    t("activerecord.action_messages.success", action: action, resource: klass.name)
  end
end
