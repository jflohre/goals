class ApplicationController < ActionController::Base
  protect_from_forgery
  def quote
    @quote = Quotes.display_message
  end
end
