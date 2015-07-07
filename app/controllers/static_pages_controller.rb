class StaticPagesController < ApplicationController
  def home
    @articles_list = Article.order(updated_at: :desc).all
    @markdown_text_list = []
    @articles_list.each do |article|
      @markdown_text_list.push(markdown article.post_text)
    end
  end

  def about
  end

  def archives
    @archives = Article.order(updated_at: :desc).all
  end
end
