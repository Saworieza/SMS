class PayOthersController < ApplicationController
  before_action :set_pay_other, only: [:show, :edit, :update, :destroy]

  # GET /pay_others
  # GET /pay_others.json
  def index
    @pay_others = PayOther.all
  end

  # GET /pay_others/1
  # GET /pay_others/1.json
  def show
  end

  # GET /pay_others/new
  def new
    @pay_other = PayOther.new
  end

  # GET /pay_others/1/edit
  def edit
  end

  # POST /pay_others
  # POST /pay_others.json
  def create
    @pay_other = PayOther.new(pay_other_params)

    respond_to do |format|
      if @pay_other.save
        format.html { redirect_to @pay_other, notice: 'Pay other was successfully created.' }
        format.json { render :show, status: :created, location: @pay_other }
      else
        format.html { render :new }
        format.json { render json: @pay_other.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pay_others/1
  # PATCH/PUT /pay_others/1.json
  def update
    respond_to do |format|
      if @pay_other.update(pay_other_params)
        format.html { redirect_to @pay_other, notice: 'Pay other was successfully updated.' }
        format.json { render :show, status: :ok, location: @pay_other }
      else
        format.html { render :edit }
        format.json { render json: @pay_other.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_others/1
  # DELETE /pay_others/1.json
  def destroy
    @pay_other.destroy
    respond_to do |format|
      format.html { redirect_to pay_others_url, notice: 'Pay other was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay_other
      @pay_other = PayOther.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_other_params
      params.require(:pay_other).permit(:student_name, :adm_no, :form, :stream, :amount, :payment_for, :paid_by, :pay_method, :references)
    end
end
