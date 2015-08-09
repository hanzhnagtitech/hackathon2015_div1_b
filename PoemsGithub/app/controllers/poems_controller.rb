class PoemsController < ApplicationController

  def new
    @poem = Poem.new
  end

  def create
    @poem = Poem.new( {:title => params[:poem][:title], :content => params[:poem][:content]} )
    @poem.save
  end

  def index
    @poems = Poem.where(:is_active => true)
    @genres = Genre.pluck(:name,:id)
    if params[:genre_id] && params[:genre_id] != "-1"
      @poems = @poems.where(:genre_id => params[:genre_id])
    end
  end

  def show
    @poem = Poem.where(:id => params[:id]).first
  end

  def merge
  end
end
