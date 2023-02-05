class CharactersController < ApplicationController

  def index
    render({ :template => "characters_template/index.html.erb" })
  end
  
  end
