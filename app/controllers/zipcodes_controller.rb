class ZipcodesController < ApplicationController
  before_action :set_zipcode, only: [:edit, :update]
  # GET /zipcodes
  # GET /zipcodes.json
  def index
    if params[:search]
      @zipcodes = Zipcode.search(params[:search]).order("created_at DESC")
    else
      @zipcodes = Zipcode.all.order('created_at DESC')
    end
  end

  def edit
  end

  # PATCH/PUT /zipcodes/1
  def update
    respond_to do |format|
      if @zipcode.update(zipcode_params)
        format.html { redirect_to zipcodes_path }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zipcode
      @zipcode = Zipcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zipcode_params
      params.require(:zipcode).permit(:zip, :spot1, :spot2, :spot3, :spot4, :spot5, :price)
    end
end
