require 'test_helper'

class PayOthersControllerTest < ActionController::TestCase
  setup do
    @pay_other = pay_others(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_others)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_other" do
    assert_difference('PayOther.count') do
      post :create, pay_other: { adm_no: @pay_other.adm_no, amount: @pay_other.amount, form: @pay_other.form, paid_by: @pay_other.paid_by, pay_method: @pay_other.pay_method, payment_for: @pay_other.payment_for, references: @pay_other.references, stream: @pay_other.stream, student_name: @pay_other.student_name }
    end

    assert_redirected_to pay_other_path(assigns(:pay_other))
  end

  test "should show pay_other" do
    get :show, id: @pay_other
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_other
    assert_response :success
  end

  test "should update pay_other" do
    patch :update, id: @pay_other, pay_other: { adm_no: @pay_other.adm_no, amount: @pay_other.amount, form: @pay_other.form, paid_by: @pay_other.paid_by, pay_method: @pay_other.pay_method, payment_for: @pay_other.payment_for, references: @pay_other.references, stream: @pay_other.stream, student_name: @pay_other.student_name }
    assert_redirected_to pay_other_path(assigns(:pay_other))
  end

  test "should destroy pay_other" do
    assert_difference('PayOther.count', -1) do
      delete :destroy, id: @pay_other
    end

    assert_redirected_to pay_others_path
  end
end
