require 'rails_helper'

RSpec.describe "bands/edit", type: :view do
  before(:each) do
    @band = assign(:band, Band.create!())
  end

  it "renders the edit band form" do
    render

    assert_select "form[action=?][method=?]", band_path(@band), "post" do
    end
  end
end
