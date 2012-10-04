require 'spec_helper'

describe "reviews/edit" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :dish_id => 1,
      :user_id => 1,
      :rating => 1,
      :up_vote_count => 1,
      :down_vote_count => 1,
      :review => "MyText"
    ))
  end

  it "renders the edit review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path(@review), :method => "post" do
      assert_select "input#review_dish_id", :name => "review[dish_id]"
      assert_select "input#review_user_id", :name => "review[user_id]"
      assert_select "input#review_rating", :name => "review[rating]"
      assert_select "input#review_up_vote_count", :name => "review[up_vote_count]"
      assert_select "input#review_down_vote_count", :name => "review[down_vote_count]"
      assert_select "textarea#review_review", :name => "review[review]"
    end
  end
end
