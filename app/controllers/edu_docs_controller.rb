class EduDocsController < ApplicationController
  before_action :set_edu_doc, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index,:show]
  # GET /edu_docs or /edu_docs.json
  def index
    @edu_docs = current_user.edu_docs
  end

  # GET /edu_docs/1 or /edu_docs/1.json
  # GET /edu_docs/new
  def new
    @edu_doc = EduDoc.new
  end

  # GET /edu_docs/1/edit


  # POST /edu_docs or /edu_docs.json
  def create
    @edu_doc = current_user.edu_docs.new(edu_doc_params)

    respond_to do |format|
      if @edu_doc.save
        format.html { redirect_to edu_docs_path, notice: "Edu doc was successfully created." }
        format.json { render :index, status: :created, location: @edu_docs }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @edu_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edu_docs/1 or /edu_docs/1.json
  def update
    respond_to do |format|
      if @edu_doc.update(edu_doc_params)
        format.html { redirect_to @edu_doc, notice: "Edu doc was successfully updated." }
        format.json { render :index, status: :ok, location: @edu_doc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @edu_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edu_docs/1 or /edu_docs/1.json
  def destroy
    @edu_doc.destroy
    respond_to do |format|
      format.html { redirect_to edu_docs_url, notice: "Edu doc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edu_doc
      @edu_doc = EduDoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def edu_doc_params

      params.require(:edu_doc).permit(:documentname, :documentid,:documents,:user_id)
    end
end
