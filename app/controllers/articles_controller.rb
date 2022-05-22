class ArticlesController < ApplicationController

def index
@articles = Article.all
end

#this is showing as per id we will enter
def show
@article = Article.find(params[:id])
end

def new
@article = Article.new
end

def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    #render plain: @article.inspect
    @article.save
    redirect_to article_path(@article)

end

end


#find(params[:id])