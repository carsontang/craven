require 'spec_helper'

describe "reviews/index" do
  before(:each) do
    assign(:reviews, [
      stub_model(Review,
        :dish_id => 1,
        :user_id => 2,
        :rating => 3,
        :up_vote_count => 4,
        :down_vote_count => 5,
        :review => "MyText"
      ),
      stub_model(Review,
        :dish_id => 1,
        :user_id => 2,
        :rating => 3,
        :up_vote_count => 4,
        :down_vote_count => 5,
        :review => "MyText"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
