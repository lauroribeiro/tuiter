class TuitesController < ApplicationController
  before_action :set_tuite, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /tuites or /tuites.json
  def index
    @tuites = Tuite.all.order("created_at DESC")
    @tuite = Tuite.new
  end

  # GET /tuites/1 or /tuites/1.json
  def show
  end

  # GET /tuites/new
  def new
    @tuite = Tuite.new
  end

  # GET /tuites/1/edit
  def edit
  end

  # POST /tuites or /tuites.json
  def create
    @tuite = Tuite.new(tuite_params)

    respond_to do |format|
      if @tuite.save
        format.html { redirect_to root_path, notice: "Tuite was successfully created." }
        format.json { render :show, status: :created, location: @tuite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tuite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuites/1 or /tuites/1.json
  def update
    respond_to do |format|
      if @tuite.update(tuite_params)
        format.html { redirect_to @tuite, notice: "Tuite was successfully updated." }
        format.json { render :show, status: :ok, location: @tuite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tuite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuites/1 or /tuites/1.json
  def destroy
    @tuite.destroy
    respond_to do |format|
      format.html { redirect_to tuites_url, notice: "Tuite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuite
      @tuite = Tuite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tuite_params
      params.require(:tuite).permit(:tuite)
    end
end
