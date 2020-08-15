class RaticlesController < ApplicationController
  before_action :set_raticle, only: [:show, :edit, :update, :destroy]

  # GET /raticles
  # GET /raticles.json
  def index
    @raticles = Raticle.all
  end

  # GET /raticles/1
  # GET /raticles/1.json
  def show
  end

  # GET /raticles/new
  def new
    @raticle = Raticle.new
  end

  # GET /raticles/1/edit
  def edit
  end

  # POST /raticles
  # POST /raticles.json
  def create
    @raticle = Raticle.new(raticle_params)

    respond_to do |format|
      if @raticle.save
        format.html { redirect_to @raticle, notice: 'Raticle was successfully created.' }
        format.json { render :show, status: :created, location: @raticle }
      else
        format.html { render :new }
        format.json { render json: @raticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raticles/1
  # PATCH/PUT /raticles/1.json
  def update
    respond_to do |format|
      if @raticle.update(raticle_params)
        format.html { redirect_to @raticle, notice: 'Raticle was successfully updated.' }
        format.json { render :show, status: :ok, location: @raticle }
      else
        format.html { render :edit }
        format.json { render json: @raticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raticles/1
  # DELETE /raticles/1.json
  def destroy
    @raticle.destroy
    respond_to do |format|
      format.html { redirect_to raticles_url, notice: 'Raticle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raticle
      @raticle = Raticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raticle_params
      params.require(:raticle).permit(:title, :author, :text)
    end
end
