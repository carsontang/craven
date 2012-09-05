require 'spec_helper'

describe "restaurants/show" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant,
      :name => "Name",
      :category => "Category",
      :street => "Street",
      :city => "City",
      :state => "State",
      :zipcode => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Category/)
    rendered.should match(/Street/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/1/)
  end
end
