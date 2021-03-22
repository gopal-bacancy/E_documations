class GovDocsController < ApplicationController
  before_action :set_gov_doc, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index,:show]


  # GET /gov_docs or /gov_docs.json
  def index
    @gov_docs = current_user.gov_docs
  end

  # GET /gov_docs/1 or /gov_docs/1.json
  def show
  end

  # GET /gov_docs/new
  def new
    @gov_doc = GovDoc.new
  end

  # GET /gov_docs/1/edit
  def edit
  end

  # POST /gov_docs or /gov_docs.json
  def create
    @gov_doc = current_user.gov_docs.new(gov_doc_params)
    respond_to do |format|
      if @gov_doc.save
        format.html { redirect_to gov_docs_path, notice: "Gov doc was successfully created." }
        format.json { render :show, status: :created, location: @gov_doc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gov_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gov_docs/1 or /gov_docs/1.json
  def update
    respond_to do |format|
      if @gov_doc.update(gov_doc_params)
        format.html { redirect_to @gov_doc, notice: "Gov doc was successfully updated." }
        format.json { render :show, status: :ok, location: @gov_doc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gov_doc.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /gov_docs/1 or /gov_docs/1.json
  def destroy
    @gov_doc.destroy
    respond_to do |format|
      format.html { redirect_to gov_docs_url, notice: "Gov doc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gov_doc
      @gov_doc = GovDoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gov_doc_params
      params.require(:gov_doc).permit(:documentname, :documentid,:documents,:user_id)   
    end
end
