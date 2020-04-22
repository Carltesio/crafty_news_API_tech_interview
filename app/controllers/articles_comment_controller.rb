class ArticlesCommentController < ApplicationController
    before_action :authenticate_user!, only: %i[create]

    def create
        article = Article.find(params[:article_id])
        comment = article.comments.create(comment_params)
        render json: { message: "you added a comment" }
        redirect_to article_path(@article)
      end
   
    
      private
        def comment_params
          params.require(:comment).permit(:body)
        end
    end
