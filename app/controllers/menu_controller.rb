class MenuController < ApplicationController
  def home
    @quote = Quote.display_message
    @quote_name = Quote.display_name(@quote)
  end
  
end
