class ArticlesController < ApplicationController
    def index
        @articles = Article.paginate(page: params[:page], per_page: 5)
    end
    
    def new
        if current_user.nil?
            flash[:notice] = "Kindly login to create an article"
        else
            @article = Article.new
        end
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.user_id = current_user.id
        if @article.save
            flash[:notice] = "Article created successfully."
            redirect_to @article
        else
            render "new", status: :unprocessable_entity
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Article deleted successfully."
        redirect_to articles_path
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Article updated successfully."
            redirect_to @article
        else
            render "edit", status: :unprocessable_entity
        end
    end
end