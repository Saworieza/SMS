require 'test_helper'

class PayFeesControllerTest < ActionController::TestCase
  setup do
    @pay_fee = pay_fees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_fees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_fee" do
    assert_difference('PayFee.count') do
      post :create, pay_fee: { adm_no: @pay_fee.adm_no, amount: @pay_fee.amount, form: @pay_fee.form, paid_by: @pay_fee.paid_by, pay_method: @pay_fee.pay_method, references: @pay_fee.references, stream: @pay_fee.stream, student_name: @pay_fee.student_name }
    end

    assert_redirected_to pay_fee_path(assigns(:pay_fee))
  end

  test "should show pay_fee" do
    get :show, id: @pay_fee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_fee
    assert_response :success
  end

  test "should update pay_fee" do
    patch :update, id: @pay_fee, pay_fee: { adm_no: @pay_fee.adm_no, amount: @pay_fee.amount, form: @pay_fee.form, paid_by: @pay_fee.paid_by, pay_method: @pay_fee.pay_method, references: @pay_fee.references, stream: @pay_fee.stream, student_name: @pay_fee.student_name }
    assert_redirected_to pay_fee_path(assigns(:pay_fee))
  end

  test "should destroy pay_fee" do
    assert_difference('PayFee.count', -1) do
      delete :destroy, id: @pay_fee
    end

    assert_redirected_to pay_fees_path
  end
end
