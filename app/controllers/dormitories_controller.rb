class DormitoriesController < ApplicationController
  before_action :set_dormitory, only: [:show, :edit, :update, :destroy]

  # GET /dormitories
  # GET /dormitories.json
  def index
    @dormitories = Dormitory.all
  end

  # GET /dormitories/1
  # GET /dormitories/1.json
  def show
  end

  # GET /dormitories/new
  def new
    @dormitory = Dormitory.new
  end

  # GET /dormitories/1/edit
  def edit
  end

  # POST /dormitories
  # POST /dormitories.json
  def create
    @dormitory = Dormitory.new(dormitory_params)

    respond_to do |format|
      if @dormitory.save
        format.html { redirect_to @dormitory, notice: 'Dormitory was successfully created.' }
        format.json { render :show, status: :created, location: @dormitory }
      else
        format.html { render :new }
        format.json { render json: @dormitory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dormitories/1
  # PATCH/PUT /dormitories/1.json
  def update
    respond_to do |format|
      if @dormitory.update(dormitory_params)
        format.html { redirect_to @dormitory, notice: 'Dormitory was successfully updated.' }
        format.json { render :show, status: :ok, location: @dormitory }
      else
        format.html { render :edit }
        format.json { render json: @dormitory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dormitories/1
  # DELETE /dormitories/1.json
  def destroy
    @dormitory.destroy
    respond_to do |format|
      format.html { redirect_to dormitories_url, notice: 'Dormitory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dormitory
      @dormitory = Dormitory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dormitory_params
      params.require(:dormitory).permit(:name, :description, :matron)
    end
end
