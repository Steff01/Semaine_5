class PagesController < ApplicationController

  def index
    @potin = Gossip.all
  end
  
  
  def team
  end

  def contact
  end

  def welcome
    @name=params.require(:name)
    @gossip=Gossip.where(author: @name)[0].content
  end
end
