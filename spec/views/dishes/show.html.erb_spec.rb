require 'spec_helper'

describe "dishes/show" do
  before(:each) do
    @dish = assign(:dish, stub_model(Dish,
      :name => "Name",
      :category => "Category",
      :price => "9.99",
      :rating => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Category/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
  end
end
