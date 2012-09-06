require 'spec_helper'

describe "dishes/new" do
  before(:each) do
    assign(:dish, stub_model(Dish,
      :name => "MyString",
      :category => "MyString",
      :price => "9.99",
      :rating => 1
    ).as_new_record)
  end

  it "renders new dish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dishes_path, :method => "post" do
      assert_select "input#dish_name", :name => "dish[name]"
      assert_select "input#dish_category", :name => "dish[category]"
      assert_select "input#dish_price", :name => "dish[price]"
      assert_select "input#dish_rating", :name => "dish[rating]"
    end
  end
end
