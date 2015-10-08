class VersionsController < ApplicationController
  before_action :find_article, only: [:index, :create, :new]
  before_action :find_version, only: [:show]

  def index
  end

  def create
    @version = Version.new(version_params)
    @article = Article.find_by(id: params[:article_id])
    @group = Group.find_by(id: @article.group_id)
    @version.article_id = @article.id
    p version_params
    if @version.save
      flash[:success] = "Your article was edited successfully."
      redirect_to group_path(@group)
    else
      flash[:error] = "Invalid entry."
      render 'new'
    end
  end

  def new
    p params
    @article = Article.find_by(id: params[:article_id])
    @version = @article.versions.last
  end

  def show
  end

  private
  def find_article
    @article = Article.find(params[:article_id])
  end

  def find_version
    @version = Version.find(params[:id])
  end

  def version_params
    params.require(:version).permit(:title, :body)
  end
end
