class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "actors_template/index.html.erb" })
  end
  
  def actor_details
    @url_num = params.fetch("actor_id")
    @the_actor = Actor.where({ :id => @url_num}).at(0)
    @movies_starred = Character.where({ :actor_id => @url_num})
  
    render({ :template => "actors_template/details.html.erb"})
  end

  end
