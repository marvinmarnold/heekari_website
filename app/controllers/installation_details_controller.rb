class InstallationDetailsController < ApplicationController
  before_action :set_installation_detail, only: [:show, :edit, :update, :destroy]

  # GET /installation_details
  # GET /installation_details.json
  def index
    @installation_details = InstallationDetail.all
  end

  # GET /installation_details/1
  # GET /installation_details/1.json
  def show
  end

  # GET /installation_details/new
  def new
    @installation_detail = InstallationDetail.new
  end

  # GET /installation_details/1/edit
  def edit
  end

  # POST /installation_details
  # POST /installation_details.json
  def create
    @installation_detail = InstallationDetail.new(installation_detail_params)

    respond_to do |format|
      if @installation_detail.save
        format.html { redirect_to @installation_detail, notice: 'Installation detail was successfully created.' }
        format.json { render :show, status: :created, location: @installation_detail }
      else
        format.html { render :new }
        format.json { render json: @installation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /installation_details/1
  # PATCH/PUT /installation_details/1.json
  def update
    respond_to do |format|
      if @installation_detail.update(installation_detail_params)
        format.html { redirect_to @installation_detail, notice: 'Installation detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @installation_detail }
      else
        format.html { render :edit }
        format.json { render json: @installation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installation_details/1
  # DELETE /installation_details/1.json
  def destroy
    @installation_detail.destroy
    respond_to do |format|
      format.html { redirect_to installation_details_url, notice: 'Installation detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installation_detail
      @installation_detail = InstallationDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def installation_detail_params
      params.require(:installation_detail).permit(:home_type_id, :num_rooms, :num_ppl, :light_type_id)
    end
end
