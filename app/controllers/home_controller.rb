class HomeController < ApplicationController
  def index
    @events = Event.order('created_at DESC').limit(5) #change the number to a suitable number. i am thinking three
  end
end
