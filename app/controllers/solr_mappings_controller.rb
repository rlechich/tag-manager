class SolrMappingsController < ApplicationController
  before_action :set_solr_mapping, only: [:show, :edit, :update, :destroy]

  # GET /solr_mappings
  # GET /solr_mappings.json
  def index
    @solr_mappings = SolrMapping.all
  end

  # GET /solr_mappings/1
  # GET /solr_mappings/1.json
  def show
  end

  # GET /solr_mappings/new
  def new
    @solr_mapping = SolrMapping.new
  end

  # GET /solr_mappings/1/edit
  def edit
  end

  # POST /solr_mappings
  # POST /solr_mappings.json
  def create
    @solr_mapping = SolrMapping.new(solr_mapping_params)

    respond_to do |format|
      if @solr_mapping.save
        format.html { redirect_to @solr_mapping, notice: 'Solr mapping was successfully created.' }
        format.json { render action: 'show', status: :created, location: @solr_mapping }
      else
        format.html { render action: 'new' }
        format.json { render json: @solr_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solr_mappings/1
  # PATCH/PUT /solr_mappings/1.json
  def update
    respond_to do |format|
      if @solr_mapping.update(solr_mapping_params)
        format.html { redirect_to @solr_mapping, notice: 'Solr mapping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @solr_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solr_mappings/1
  # DELETE /solr_mappings/1.json
  def destroy
    @solr_mapping.destroy
    respond_to do |format|
      format.html { redirect_to solr_mappings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solr_mapping
      @solr_mapping = SolrMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solr_mapping_params
      params.require(:solr_mapping).permit(:solrfield, :solrvalue, :tag_id)
    end
end
