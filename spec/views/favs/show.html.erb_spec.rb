require 'spec_helper'

describe "favs/show" do
  before(:each) do
    @fav = assign(:fav, stub_model(Fav,
      :name => "Name",
      :url => "Url",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/1/)
  end
end
