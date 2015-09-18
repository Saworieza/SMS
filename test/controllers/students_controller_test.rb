require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { address: @student.address, adm_date: @student.adm_date, adm_no: @student.adm_no, birthdate: @student.birthdate, class_teacher: @student.class_teacher, county: @student.county, email: @student.email, form: @student.form, fullname: @student.fullname, gender: @student.gender, image: @student.image, nationality: @student.nationality, phone_1: @student.phone_1, phone_2: @student.phone_2, stream: @student.stream, town: @student.town }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { address: @student.address, adm_date: @student.adm_date, adm_no: @student.adm_no, birthdate: @student.birthdate, class_teacher: @student.class_teacher, county: @student.county, email: @student.email, form: @student.form, fullname: @student.fullname, gender: @student.gender, image: @student.image, nationality: @student.nationality, phone_1: @student.phone_1, phone_2: @student.phone_2, stream: @student.stream, town: @student.town }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
