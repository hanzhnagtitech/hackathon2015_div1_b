class PoemsController < ApplicationController

  def new
  end

  def index
    @poems = Poem.all
    if params[:genre_id]
      @poems = @poems.where(:genre_id => params[:genre_id])
    end
  end

  def show
  end
end
