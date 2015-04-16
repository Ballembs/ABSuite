class UnisysNewsController < ApplicationController
  before_action :set_unisys_news, only: [:show, :edit, :update, :destroy]

  # GET /unisys_news
  # GET /unisys_news.json
  def index
    @unisys_news = UnisysNews.all
  end

  # GET /unisys_news/1
  # GET /unisys_news/1.json
  def show
  end

  # GET /unisys_news/new
  def new
    @unisys_news = UnisysNews.new
  end

  # GET /unisys_news/1/edit
  def edit
  end

  # POST /unisys_news
  # POST /unisys_news.json
  def create
    @unisys_news = UnisysNews.new(unisys_news_params)

    respond_to do |format|
      if @unisys_news.save
        format.html { redirect_to @unisys_news, notice: 'Unisys news was successfully created.' }
        format.json { render :show, status: :created, location: @unisys_news }
      else
        format.html { render :new }
        format.json { render json: @unisys_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unisys_news/1
  # PATCH/PUT /unisys_news/1.json
  def update
    respond_to do |format|
      if @unisys_news.update(unisys_news_params)
        format.html { redirect_to @unisys_news, notice: 'Unisys news was successfully updated.' }
        format.json { render :show, status: :ok, location: @unisys_news }
      else
        format.html { render :edit }
        format.json { render json: @unisys_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unisys_news/1
  # DELETE /unisys_news/1.json
  def destroy
    @unisys_news.destroy
    respond_to do |format|
      format.html { redirect_to unisys_news_index_url, notice: 'Unisys news was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unisys_news
      @unisys_news = UnisysNews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unisys_news_params
      params.require(:unisys_news).permit(:title, :link, :category, :description, :image)
    end
end
