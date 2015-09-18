class PayFeesController < ApplicationController
  before_action :set_pay_fee, only: [:show, :edit, :update, :destroy]

  # GET /pay_fees
  # GET /pay_fees.json
  def index
    @pay_fees = PayFee.all
  end

  # GET /pay_fees/1
  # GET /pay_fees/1.json
  def show
  end

  # GET /pay_fees/new
  def new
    @pay_fee = PayFee.new
  end

  # GET /pay_fees/1/edit
  def edit
  end

  # POST /pay_fees
  # POST /pay_fees.json
  def create
    @pay_fee = PayFee.new(pay_fee_params)

    respond_to do |format|
      if @pay_fee.save
        format.html { redirect_to @pay_fee, notice: 'Pay fee was successfully created.' }
        format.json { render :show, status: :created, location: @pay_fee }
      else
        format.html { render :new }
        format.json { render json: @pay_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pay_fees/1
  # PATCH/PUT /pay_fees/1.json
  def update
    respond_to do |format|
      if @pay_fee.update(pay_fee_params)
        format.html { redirect_to @pay_fee, notice: 'Pay fee was successfully updated.' }
        format.json { render :show, status: :ok, location: @pay_fee }
      else
        format.html { render :edit }
        format.json { render json: @pay_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_fees/1
  # DELETE /pay_fees/1.json
  def destroy
    @pay_fee.destroy
    respond_to do |format|
      format.html { redirect_to pay_fees_url, notice: 'Pay fee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay_fee
      @pay_fee = PayFee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_fee_params
      params.require(:pay_fee).permit(:student_name, :adm_no, :form, :stream, :amount, :paid_by, :pay_method, :references)
    end
end
