class MoviesController < ApplicationController

  def index
    @list_of_films = Movie.all
    render({ :template => "movies_template/index.html.erb" })
  end

  def movie_details
    @url_num = params.fetch("movie_id")
    @the_movie = Movie.where({ :id => @url_num}).at(0)
  
    render({ :template => "movies_template/details.html.erb"})
  end
  
end
