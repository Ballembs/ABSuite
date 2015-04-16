class NewFeaturesController < ApplicationController
  before_action :set_new_feature, only: [:show, :edit, :update, :destroy]

  # GET /new_features
  # GET /new_features.json
  def index
    @new_features = NewFeature.all
  end

  # GET /new_features/1
  # GET /new_features/1.json
  def show
  end

  # GET /new_features/new
  def new
    @new_feature = NewFeature.new
  end

  # GET /new_features/1/edit
  def edit
  end

  # POST /new_features
  # POST /new_features.json
  def create
    @new_feature = NewFeature.new(new_feature_params)

    respond_to do |format|
      if @new_feature.save
        format.html { redirect_to @new_feature, notice: 'New feature was successfully created.' }
        format.json { render :show, status: :created, location: @new_feature }
      else
        format.html { render :new }
        format.json { render json: @new_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_features/1
  # PATCH/PUT /new_features/1.json
  def update
    respond_to do |format|
      if @new_feature.update(new_feature_params)
        format.html { redirect_to @new_feature, notice: 'New feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_feature }
      else
        format.html { render :edit }
        format.json { render json: @new_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_features/1
  # DELETE /new_features/1.json
  def destroy
    @new_feature.destroy
    respond_to do |format|
      format.html { redirect_to new_features_url, notice: 'New feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_feature
      @new_feature = NewFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_feature_params
      params.require(:new_feature).permit(:name, :content)
    end
end
