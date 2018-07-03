class StaticPagesController < ApplicationController

  def index
    #@post = Post.all.paginate(page: params[:page], per_page: 20)
    #debugger

    @post = Post.paginate(page: params[:page], per_page: 10)
    #@post_search = Post.search(params[:search])
    #@post = @user.Post.paginate(page: params[:page])
    #debugger
    #render 'news/show'
  end



end
