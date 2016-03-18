class CondosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_condo, only: [:show, :edit, :update, :destroy]

  # GET /condos
  # GET /condos.json
  def index
    @condos = Condo.all
  end

  # GET /condos/1
  # GET /condos/1.json
  def show
    @condo = Condo.find(params[:id])
    @hash = Gmaps4rails.build_markers(@condo) do |condo, marker|
      marker.lat condo.latitude
      marker.lng condo.longitude
      marker.infowindow condo.address
    end
  end

  # GET /condos/new
  def new
    @condo = Condo.new
  end

  # GET /condos/1/edit
  def edit
  end

  # POST /condos
  # POST /condos.json
  def create
    @condo = Condo.new(condo_params)

    respond_to do |format|
      if @condo.save
        format.html { redirect_to @condo, notice: 'Condo was successfully created.' }
        format.json { render :show, status: :created, location: @condo }
      else
        format.html { render :new }
        format.json { render json: @condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condos/1
  # PATCH/PUT /condos/1.json
  def update
    respond_to do |format|
      if @condo.update(condo_params)
        format.html { redirect_to @condo, notice: 'Condo was successfully updated.' }
        format.json { render :show, status: :ok, location: @condo }
      else
        format.html { render :edit }
        format.json { render json: @condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condos/1
  # DELETE /condos/1.json
  def destroy
    @condo.destroy
    respond_to do |format|
      format.html { redirect_to condos_url, notice: 'Condo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condo
      @condo = Condo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condo_params
      params.require(:condo).permit(:latitude, :longitude, :address, :name, :contact, :image)
    end
end
