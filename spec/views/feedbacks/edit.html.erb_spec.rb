require 'rails_helper'

RSpec.describe "feedbacks/edit", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      user: nil,
      content: "MyText"
    ))
  end

  it "renders the edit feedback form" do
    render

    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do

      assert_select "input[name=?]", "feedback[user_id]"

      assert_select "textarea[name=?]", "feedback[content]"
    end
  end
end
