require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :body => "MyText",
        :user => nil,
        :recipe => "",
        :abstract => "MyText"
      ),
      Article.create!(
        :body => "MyText",
        :user => nil,
        :recipe => "",
        :abstract => "MyText"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
