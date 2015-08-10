class PoemsController < ApplicationController
require 'time'

  def new
    @is_edit = params[:is_edit].to_s
    @old_poem = Poem.where(:id => params[:poem_id], :is_active => true).first
    @poem = Poem.new
    @genres = Genre.where('id > 0')
  end

  def create
    @poem = Poem.new( {
      :title => params[:poem][:title],
      :content => params[:poem][:content],
      :genre_id => params[:poem][:genre_id],
      :user_id => params[:poem][:user_id],
      :owner_id => params[:poem][:owner_id],
      :is_wait => params[:poem][:is_wait],
      :is_active => params[:poem][:is_active],
      :is_selected => params[:poem][:is_selected]
    } )
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
    @user = User.where(:id => @poem.owner_id).first
    @versions = @poem_logs.order("created_at desc").pluck(:created_at)
    if params[:poem]
      @poem = @poem_logs.where(:id => params[:poem][:id]).first
    end
  end

  def merge
  end
end
