class DashboardController < ApplicationController
  def new
    #@posts = Post.all
    #@posts = Post.where("category = ?", category)
    @post = Post.where("category = ?", "LifeStyle").paginate(page: params[:page], per_page: 10)
    #debugger
  end

  def entertainment
    @post = Post.where("category = ?", "Entertainment").paginate(page: params[:page], per_page: 10)
  end

  def tech
    @post = Post.where("category = ?", "Technology").paginate(page: params[:page], per_page: 10)
  end

  def cinema
    @post = Post.where("category = ?", "Cinema").paginate(page: params[:page], per_page: 10)
  end

  def entertainment
    @post = Post.where("category = ?", "Entertainment").paginate(page: params[:page], per_page: 10)
  end

  def food
    @post = Post.where("category = ?", "Food").paginate(page: params[:page], per_page: 10)
  end

  def sport
    @post = Post.where("category = ?", "Sport").paginate(page: params[:page], per_page: 10)
  end

  def video
    @post = Post.where("category = ?", "Tech").paginate(page: params[:page], per_page: 10)
  end
end
