require 'test_helper'

class MemosControllerTest < ActionController::TestCase
  setup do
    @memo = memos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memo" do
    assert_difference('Memo.count') do
      post :create, memo: { student_academy: @memo.student_academy, student_course: @memo.student_course, student_credit: @memo.student_credit, student_degree: @memo.student_degree, student_id: @memo.student_id, student_major: @memo.student_major, student_name: @memo.student_name, student_password: @memo.student_password }
    end

    assert_redirected_to memo_path(assigns(:memo))
  end

  test "should show memo" do
    get :show, id: @memo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memo
    assert_response :success
  end

  test "should update memo" do
    patch :update, id: @memo, memo: { student_academy: @memo.student_academy, student_course: @memo.student_course, student_credit: @memo.student_credit, student_degree: @memo.student_degree, student_id: @memo.student_id, student_major: @memo.student_major, student_name: @memo.student_name, student_password: @memo.student_password }
    assert_redirected_to memo_path(assigns(:memo))
  end

  test "should destroy memo" do
    assert_difference('Memo.count', -1) do
      delete :destroy, id: @memo
    end

    assert_redirected_to memos_path
  end
end