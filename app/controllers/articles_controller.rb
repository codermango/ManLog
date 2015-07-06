class ArticlesController < ApplicationController
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
    @markdown_text = markdown @article.post_text
  end

  def destroy
    @article = Article.find(params[:article_id])
    @article.destroy
    redirect_to admins_index_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private
    def article_params
      params.require(:article).permit(:post_title, :post_text)
    end
end
