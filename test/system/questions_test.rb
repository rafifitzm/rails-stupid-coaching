require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h5", text: "Ask The Coach a Question"
    take_screenshot
  end

  test "saying Hello gives an I don't care response" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Submit"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "Asking the coach a question gives a stupid question response" do
    visit ask_url
    fill_in "question", with: "What?"
    click_on "Submit"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "The coach is happy with I am going to work" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Submit"

    assert_text "Great!"
    take_screenshot
  end
end
