require 'spec_helper'

describe "restaurants/new" do
  before(:each) do
    assign(:restaurant, stub_model(Restaurant,
      :name => "MyString",
      :category => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => 1
    ).as_new_record)
  end

  it "renders new restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path, :method => "post" do
      assert_select "input#restaurant_name", :name => "restaurant[name]"
      assert_select "input#restaurant_category", :name => "restaurant[category]"
      assert_select "input#restaurant_street", :name => "restaurant[street]"
      assert_select "input#restaurant_city", :name => "restaurant[city]"
      assert_select "input#restaurant_state", :name => "restaurant[state]"
      assert_select "input#restaurant_zipcode", :name => "restaurant[zipcode]"
    end
  end
end
