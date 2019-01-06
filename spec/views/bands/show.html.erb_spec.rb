require 'rails_helper'

RSpec.describe "bands/show", type: :view do
  before(:each) do
    @band = assign(:band, Band.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
