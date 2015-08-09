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
    @poem_logs = Poem.where(:title => @poem.title)
    @versions = @poem_logs.order("created_at desc").pluck(:created_at)
    if params[:created_at]
      @poem = @poem_logs.where(:created_at => params[:created_at]).first
    end
  end

  def merge
  end
end
