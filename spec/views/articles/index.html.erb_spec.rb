require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        name: "Name",
        description: "MyText"
      ),
      Article.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
