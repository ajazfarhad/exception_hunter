class ExceptionController < ApplicationController
  skip_before_action :verify_authenticity_token

  def raising_endpoint
    raise ArgumentError, 'You should not have called me'
  end

  def broken_post
    raise ArgumentError, "I don't really work"
  end
end
