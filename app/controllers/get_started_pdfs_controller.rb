class GetStartedPdfsController < ApplicationController
  before_action :set_get_started_pdf, only: [:show, :edit, :update, :destroy]

  # GET /get_started_pdfs
  # GET /get_started_pdfs.json
  def index
    @get_started_pdfs = GetStartedPdf.all
  end

  # GET /get_started_pdfs/1
  # GET /get_started_pdfs/1.json
  def show
  end

  # GET /get_started_pdfs/new
  def new
    @get_started_pdf = GetStartedPdf.new
  end

  # GET /get_started_pdfs/1/edit
  def edit
  end

  # POST /get_started_pdfs
  # POST /get_started_pdfs.json
  def create
    @get_started_pdf = GetStartedPdf.new(get_started_pdf_params)

    respond_to do |format|
      if @get_started_pdf.save
        format.html { redirect_to @get_started_pdf, notice: 'Get started pdf was successfully created.' }
        format.json { render :show, status: :created, location: @get_started_pdf }
      else
        format.html { render :new }
        format.json { render json: @get_started_pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /get_started_pdfs/1
  # PATCH/PUT /get_started_pdfs/1.json
  def update
    respond_to do |format|
      if @get_started_pdf.update(get_started_pdf_params)
        format.html { redirect_to @get_started_pdf, notice: 'Get started pdf was successfully updated.' }
        format.json { render :show, status: :ok, location: @get_started_pdf }
      else
        format.html { render :edit }
        format.json { render json: @get_started_pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_started_pdfs/1
  # DELETE /get_started_pdfs/1.json
  def destroy
    @get_started_pdf.destroy
    respond_to do |format|
      format.html { redirect_to get_started_pdfs_url, notice: 'Get started pdf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_started_pdf
      @get_started_pdf = GetStartedPdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def get_started_pdf_params
      params.require(:get_started_pdf).permit(:title, :content)
    end
end
