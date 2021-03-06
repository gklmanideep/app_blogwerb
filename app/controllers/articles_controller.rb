class ArticlesController < ApplicationController

before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
   
  
  
  end

  def index
    @articles = Article.all
  
  end

  def new
    @articles = Article.new
   
  end

  def create
    @article =Article.new(params_set)

    if @article.save
     flash[:notice] = "Article was creates sucessfully"
     redirect_to @article
    else
      render 'new'
    end
  end

  def edit
  

  end

  def  update
   
    if @article.update(params_set)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
   
    @article.destroy
    redirect_to articles_path(@article)
  end

  private
  def set_article

  @article = Article.find(params[:id])
  end

  def params_set
    params.require(:article).permit(:title, :descriptin)
  end




  # def create
  #   @article = Article.new(article_params)

  #   respond_to do |format|
  #     if @article.save
  #       format.html { redirect_to @article, notice: 'Article was successfully created.' }
  #       format.json { render :show, status: :created, location: @article }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  # before_action :set_article, only: [:show, :edit, :update, :destroy]

  # # GET /articles
  # # GET /articles.json
  # def index
  #   @articles = Article.all
  # end

  # # GET /articles/1
  # # GET /articles/1.json
  # def show
  # end

  # # GET /articles/new
  # def new
  #   @article = Article.new
  # end

  # # GET /articles/1/edit
  # def edit
  # end

  # # POST /articles
  # # POST /articles.json
  # def create
  #   @article = Article.new(article_params)

  #   respond_to do |format|
  #     if @article.save
  #       format.html { redirect_to @article, notice: 'Article was successfully created.' }
  #       format.json { render :show, status: :created, location: @article }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /articles/1
  # # PATCH/PUT /articles/1.json
  # def update
  #   respond_to do |format|
  #     if @article.update(article_params)
  #       format.html { redirect_to @article, notice: 'Article was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @article }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /articles/1
  # # DELETE /articles/1.json
  # def destroy
  #   @article.destroy
  #   respond_to do |format|
  #     format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_article
  #     @article = Article.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def article_params
  #     params.require(:article).permit(:title, :descriptin)
  #   end
end
