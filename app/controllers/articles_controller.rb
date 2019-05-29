class ArticlesController < ApplicationController
# Вывод всех статей
  def index
    @articles = Article.all
  end


# Просмотр одной статии
  def show
     @article = Article.find(params[:id]) 
  end  

  def new
  end

  def create
     @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end   
  end

  def edit
    @article = Article.find(params[:id]) 
  end

  def update
    
  end

  

private

  def article_params
    params.require(:article).permit(:title, :text)  
  end
end
