class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end
end
