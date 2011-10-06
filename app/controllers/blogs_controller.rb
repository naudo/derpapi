class BlogsController < ApplicationController
  before_filter :set_blog, only: [:show, :edit, :update]
  def index
    @blogs = Blog.all(limit: 10)
    
    respond_to do |format|
      format.html
      format.json{ render json: @blogs}
    end
  end
  def new
    @blog = Blog.new
  end
  
  def show
  end
  
  def edit
  end
  def create
    blog = Blog.new(params[:blog])
    blog.save!
    redirect_to blogs_path

  end
  def update
  end
  
  protected 
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
