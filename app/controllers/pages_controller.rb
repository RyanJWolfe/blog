class PagesController < ApplicationController
  def index
    @featured_posts = Post.where(featured: true).order(created_at: :desc)
    @recent_posts = Post.last(5)
  end
end
