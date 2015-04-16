class GetStartedsController < ApplicationController
  before_action :set_get_started, only: [:show, :edit, :update, :destroy]

  # GET /get_starteds
  # GET /get_starteds.json
  def index
    @get_starteds = GetStarted.all
  end

  # GET /get_starteds/1
  # GET /get_starteds/1.json
  def show
  end

  # GET /get_starteds/new
  def new
    @get_started = GetStarted.new
  end

  # GET /get_starteds/1/edit
  def edit
  end

  # POST /get_starteds
  # POST /get_starteds.json
  def create
    @get_started = GetStarted.new(get_started_params)

    respond_to do |format|
      if @get_started.save
        format.html { redirect_to @get_started, notice: 'Get started was successfully created.' }
        format.json { render :show, status: :created, location: @get_started }
      else
        format.html { render :new }
        format.json { render json: @get_started.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /get_starteds/1
  # PATCH/PUT /get_starteds/1.json
  def update
    respond_to do |format|
      if @get_started.update(get_started_params)
        format.html { redirect_to @get_started, notice: 'Get started was successfully updated.' }
        format.json { render :show, status: :ok, location: @get_started }
      else
        format.html { render :edit }
        format.json { render json: @get_started.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_starteds/1
  # DELETE /get_starteds/1.json
  def destroy
    @get_started.destroy
    respond_to do |format|
      format.html { redirect_to get_starteds_url, notice: 'Get started was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_started
      @get_started = GetStarted.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def get_started_params
      params.require(:get_started).permit(:title, :content, :link, :image)
    end
end
