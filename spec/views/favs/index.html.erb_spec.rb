require 'spec_helper'

describe "favs/index" do
  before(:each) do
    assign(:favs, [
      stub_model(Fav,
        :name => "Name",
        :url => "Url",
        :user_id => 1
      ),
      stub_model(Fav,
        :name => "Name",
        :url => "Url",
        :user_id => 1
      )
    ])
  end

  it "renders a list of favs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
