class ApplicationController < ActionController::Base
  protect_from_forgery
  def quote
    @quote = Quote.display_message
    @quote_name = Quote.display_name(@quote)
  end
end
