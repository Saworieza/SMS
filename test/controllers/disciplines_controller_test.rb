require 'test_helper'

class DisciplinesControllerTest < ActionController::TestCase
  setup do
    @discipline = disciplines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disciplines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline" do
    assert_difference('Discipline.count') do
      post :create, discipline: { action_taken: @discipline.action_taken, adm_no: @discipline.adm_no, details: @discipline.details, email_address: @discipline.email_address, email_message: @discipline.email_message, email_subject: @discipline.email_subject, form: @discipline.form, incident: @discipline.incident, incident_date: @discipline.incident_date, references: @discipline.references, student: @discipline.student }
    end

    assert_redirected_to discipline_path(assigns(:discipline))
  end

  test "should show discipline" do
    get :show, id: @discipline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discipline
    assert_response :success
  end

  test "should update discipline" do
    patch :update, id: @discipline, discipline: { action_taken: @discipline.action_taken, adm_no: @discipline.adm_no, details: @discipline.details, email_address: @discipline.email_address, email_message: @discipline.email_message, email_subject: @discipline.email_subject, form: @discipline.form, incident: @discipline.incident, incident_date: @discipline.incident_date, references: @discipline.references, student: @discipline.student }
    assert_redirected_to discipline_path(assigns(:discipline))
  end

  test "should destroy discipline" do
    assert_difference('Discipline.count', -1) do
      delete :destroy, id: @discipline
    end

    assert_redirected_to disciplines_path
  end
end
