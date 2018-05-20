class ResourceCategoriesController < ApplicationController
  before_action :set_resource_category, only: [:show, :edit, :update, :destroy]

  # GET /resource_categories
  # GET /resource_categories.json
  def index
    @resource_categories = ResourceCategory.all
  end

  # GET /resource_categories/1
  # GET /resource_categories/1.json
  def show
  end

  # GET /resource_categories/new
  def new
    @resource_category = ResourceCategory.new
  end

  # GET /resource_categories/1/edit
  def edit
  end

  # POST /resource_categories
  # POST /resource_categories.json
  def create
    @resource_category = ResourceCategory.new(resource_category_params)

    respond_to do |format|
      if @resource_category.save
        format.html { redirect_to @resource_category, notice: 'Resource category was successfully created.' }
        format.json { render :show, status: :created, location: @resource_category }
      else
        format.html { render :new }
        format.json { render json: @resource_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_categories/1
  # PATCH/PUT /resource_categories/1.json
  def update
    respond_to do |format|
      if @resource_category.update(resource_category_params)
        format.html { redirect_to @resource_category, notice: 'Resource category was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_category }
      else
        format.html { render :edit }
        format.json { render json: @resource_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_categories/1
  # DELETE /resource_categories/1.json
  def destroy
    @resource_category.destroy
    respond_to do |format|
      format.html { redirect_to resource_categories_url, notice: 'Resource category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_category
      @resource_category = ResourceCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_category_params
      params.require(:resource_category).permit(:name, :slug)
    end
end
