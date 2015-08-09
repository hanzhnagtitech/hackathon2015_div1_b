class PoemsController < ApplicationController

  def new
    @poem = Poem.new
  end

  def create
    @poem = Poem.new( {:title => params[:poem][:title], :content => params[:poem][:content]} )
    @poem.save
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
