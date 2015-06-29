class StaticPagesController < ApplicationController
  def home
    @articles_list = Article.order(:updated_at).all

  end

  def about
  end
end
