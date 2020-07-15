class ApiController < ApplicationController
  before_action :set_default_format_response

  private

  def set_default_format_response
    request.format = :json
  end
end
