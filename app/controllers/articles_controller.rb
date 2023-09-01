class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "usama", password: "123", except: [:index, :show]
  def default_url_options
    { locale: I18n.locale }
  end
 
 
  def index
    @articles = Article.all
  end
 

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:success] = "Successfully Added"
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:success] = "Successfully Updated"
      redirect_to root_path
      
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body,:status)
    end
end




  