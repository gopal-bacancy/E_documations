class EMainsController < ApplicationController
  before_action :set_e_main, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index,:show]
  # GET /e_mains or /e_mains.json
  def index
    @e_mains = EMain.all
  end

  # GET /e_mains/1 or /e_mains/1.json
  def show
  end

  # GET /e_mains/new
  def new
    @e_main = EMain.new
  end

  # GET /e_mains/1/edit
  def edit
  end

  # POST /e_mains or /e_mains.json
  def create
    @e_main = EMain.new(e_main_params)

    respond_to do |format|
      if @e_main.save
        format.html { redirect_to @e_main, notice: "E main was successfully created." }
        format.json { render :show, status: :created, location: @e_main }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @e_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_mains/1 or /e_mains/1.json
  def update
    respond_to do |format|
      if @e_main.update(e_main_params)
        format.html { redirect_to @e_main, notice: "E main was successfully updated." }
        format.json { render :show, status: :ok, location: @e_main }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @e_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_mains/1 or /e_mains/1.json
  def destroy
    @e_main.destroy
    respond_to do |format|
      format.html { redirect_to e_mains_url, notice: "E main was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_main
      @e_main = EMain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def e_main_params
      params.fetch(:e_main, {})
    end
end
