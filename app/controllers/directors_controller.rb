class DirectorsController < ApplicationController

def index
  @list_of_directors = Director.all
  render({ :template => "directors_template/index.html.erb" })
end

def eldest
  @oldest_director = Director.all.order({ :dob => :asc}).where.not({ :dob => nil}).at(0)
  @oldest_dob = Director.all.order({ :dob => :asc}).where.not({ :dob => nil}).at(0).dob.strftime("%B %e, %Y")
  render({ :template => "directors_template/eldest.html.erb"})
end

def youngest
  @youngest_director = Director.all.order({ :dob => :desc}).where.not({ :dob => nil}).at(0)
  @youngest_dob = Director.all.order({ :dob => :desc}).where.not({ :dob => nil}).at(0).dob.strftime("%B %e, %Y")
  render({ :template => "directors_template/youngest.html.erb"})
end

def director_details
  @url_num = params.fetch("dir_id")
  @the_director = Director.where({ :id => @url_num}).at(0)
  @films_by_director = Movie.all.where({ :director_id => @url_num})

  render({ :template => "directors_template/details.html.erb"})
end

end
