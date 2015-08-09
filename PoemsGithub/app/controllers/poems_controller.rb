class PoemsController < ApplicationController

  def new
  end

  def index
    @poems = Poem.where(:is_active => true)
    @genres = Genre.pluck(:name,:id)
    if params[:genre_id] && params[:genre_id] != "-1"
      @poems = @poems.where(:genre_id => params[:genre_id])
    end
  end

  def show
  end
end
