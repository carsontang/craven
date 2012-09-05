require 'spec_helper'

describe "restaurants/index" do
  before(:each) do
    assign(:restaurants, [
      stub_model(Restaurant,
        :name => "Name",
        :category => "Category",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zipcode => 1
      ),
      stub_model(Restaurant,
        :name => "Name",
        :category => "Category",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zipcode => 1
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
