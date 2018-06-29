class StaticPagesController < ApplicationController

  def index
    #@post = Post.all.paginate(page: params[:page], per_page: 20)
    @post = Post.paginate(page: params[:page], per_page: 10)
    #@post = @user.Post.paginate(page: params[:page])
    #debugger
    #render 'news/show'
  end



end
