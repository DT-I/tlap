require 'test_helper'

class QuestionOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_option = question_options(:one)
  end

  test "should get index" do
    get question_options_url
    assert_response :success
  end

  test "should get new" do
    get new_question_option_url
    assert_response :success
  end

  test "should create question_option" do
    assert_difference('QuestionOption.count') do
      post question_options_url, params: { question_option: { display_text: @question_option.display_text } }
    end

    assert_redirected_to question_option_url(QuestionOption.last)
  end

  test "should show question_option" do
    get question_option_url(@question_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_option_url(@question_option)
    assert_response :success
  end

  test "should update question_option" do
    patch question_option_url(@question_option), params: { question_option: { display_text: @question_option.display_text } }
    assert_redirected_to question_option_url(@question_option)
  end

  test "should destroy question_option" do
    assert_difference('QuestionOption.count', -1) do
      delete question_option_url(@question_option)
    end

    assert_redirected_to question_options_url
  end
end
