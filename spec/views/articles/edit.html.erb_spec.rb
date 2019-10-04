require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :body => "MyText",
      :user => nil,
      :recipe => "",
      :abstract => "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "textarea[name=?]", "article[body]"

      assert_select "input[name=?]", "article[user_id]"

      assert_select "input[name=?]", "article[recipe]"

      assert_select "textarea[name=?]", "article[abstract]"
    end
  end
end
