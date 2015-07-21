class StaticPagesController < ApplicationController
  def home
    articles_list = Article.order(created_at: :desc).all
    @articles_for_show = []
    articles_list.each do |article|
      markdown_content = markdown article.post_text
      @articles_for_show.push({:id => article.id, 
                               :title => article.post_title, 
                               :markdown_text => markdown_content,
                               :time => article.created_at.strftime("%Y-%m-%d")})
    end
  end

  def about
  end

  def archives
    archives = Article.order(created_at: :desc).all
    @archives_info = []
    archives.each do |article|
      @archives_info.push({:id => article.id, :title => article.post_title, :time => article.created_at.strftime("%Y-%m-%d")})
    end

  end
end
