require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :ingredients => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input[name=?]", "recipe[title]"

      assert_select "input[name=?]", "recipe[ingredients]"

      assert_select "input[name=?]", "recipe[image_url]"
    end
  end
end
