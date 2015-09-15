class VersionsController < ApplicationController
  before_action :find_article, only: [:index, :create, :new]
  before_action :find_version, only: [:show]

  def index
  end

  def create
  end

  def new
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
end
