require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post :create, teacher: { birthdate: @teacher.birthdate, certifications: @teacher.certifications, county: @teacher.county, education: @teacher.education, email: @teacher.email, employee_number: @teacher.employee_number, employer: @teacher.employer, employment_date: @teacher.employment_date, fullname: @teacher.fullname, home_address: @teacher.home_address, image: @teacher.image, marital_status: @teacher.marital_status, nationality: @teacher.nationality, phone_1: @teacher.phone_1, phone_2: @teacher.phone_2, subjects: @teacher.subjects, town: @teacher.town }
    end

    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should show teacher" do
    get :show, id: @teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher
    assert_response :success
  end

  test "should update teacher" do
    patch :update, id: @teacher, teacher: { birthdate: @teacher.birthdate, certifications: @teacher.certifications, county: @teacher.county, education: @teacher.education, email: @teacher.email, employee_number: @teacher.employee_number, employer: @teacher.employer, employment_date: @teacher.employment_date, fullname: @teacher.fullname, home_address: @teacher.home_address, image: @teacher.image, marital_status: @teacher.marital_status, nationality: @teacher.nationality, phone_1: @teacher.phone_1, phone_2: @teacher.phone_2, subjects: @teacher.subjects, town: @teacher.town }
    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete :destroy, id: @teacher
    end

    assert_redirected_to teachers_path
  end
end
