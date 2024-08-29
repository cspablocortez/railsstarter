class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show 
    @article = Article.find(params[:id]) # check the URL for something like example.com/article/3
  end

  def new
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to @article # redirects to example.com/article/1
    else
      render :new, status: :unprocessable_entity # shows you the form so you can try again
    end
  end


  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end

