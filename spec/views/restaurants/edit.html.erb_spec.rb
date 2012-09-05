require 'spec_helper'

describe "restaurants/edit" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant,
      :name => "MyString",
      :category => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => 1
    ))
  end

  it "renders the edit restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path(@restaurant), :method => "post" do
      assert_select "input#restaurant_name", :name => "restaurant[name]"
      assert_select "input#restaurant_category", :name => "restaurant[category]"
      assert_select "input#restaurant_street", :name => "restaurant[street]"
      assert_select "input#restaurant_city", :name => "restaurant[city]"
      assert_select "input#restaurant_state", :name => "restaurant[state]"
      assert_select "input#restaurant_zipcode", :name => "restaurant[zipcode]"
    end
  end
end
