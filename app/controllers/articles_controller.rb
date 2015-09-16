class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]
  def index
  end

  def create
    @group = Group.find_by(id: params[:group_id])
    @article = Article.new
    @group.articles << @article
    @version = Version.new(version_params)
    @article.versions << @version
    if @version.save
      @article.save
      flash[:success] = "Your new article was posted."
      redirect_to group_path(@group)
    else
      render 'new'
    end
  end

  def new
    @group = Group.find_by(id: params[:group_id])
    @version = Version.new
  end

  def edit
  end

  def show
    @latest_version = Version.where(article_id: params[:id]).last
  end

  def update
  end

  def destroy
  end

  private
  def version_params
    params.require(:version).permit(:title, :body)
  end


  def find_article
    @article = Article.find(params[:id])
  end

end
