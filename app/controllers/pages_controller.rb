class PagesController < ApplicationController
  def index
    @posts = Post.where(featured: true).order(created_at: :desc)
  end
end
