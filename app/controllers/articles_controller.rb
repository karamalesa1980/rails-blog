class ArticlesController < ApplicationController
   before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

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
     @article.author = current_user.username
     @article.save
    if @article.save
      redirect_to @article #Происходит на стороне браузера
    else
      render action: 'new'
    end   
  end

  def edit
    @article = Article.find(params[:id])
    redirect_to root_path, notice: 'Вы не являетесь автором этой статьи!' unless current_user.username == @article.author 
  end


  def update
    @article = Article.find(params[:id])

     if @article.update(article_params)
      redirect_to @article
         
    else
      render action: 'edit'
    end
  end
  def destroy
    @article = Article.find(params[:id])
    redirect_to root_path, notice: 'Вы не являетесь автором этой статьи!' unless current_user.username == @article.author 
     if current_user.username == @article.author
       @article.destroy
       redirect_to articles_path
     end
    
    
  end
  
  

private

  def article_params
    params.require(:article).permit(:title, :text, :author, :picture)  
  end
end
