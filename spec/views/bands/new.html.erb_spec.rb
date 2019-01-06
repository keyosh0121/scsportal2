require 'rails_helper'

RSpec.describe "bands/new", type: :view do
  before(:each) do
    assign(:band, Band.new())
  end

  it "renders new band form" do
    render

    assert_select "form[action=?][method=?]", bands_path, "post" do
    end
  end
end
