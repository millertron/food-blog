require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :body => "MyText",
      :user => nil,
      :recipe => "",
      :abstract => "MyText"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "textarea[name=?]", "article[body]"

      assert_select "input[name=?]", "article[user_id]"

      assert_select "input[name=?]", "article[recipe]"

      assert_select "textarea[name=?]", "article[abstract]"
    end
  end
end
