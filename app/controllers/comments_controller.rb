class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id]) 
    @article.comments.create(comment_params)


    redirect_to new_article_path 
  end


  private

  def comment_params
    params.require(:comment).permit(:author, :body)  
  end
end
