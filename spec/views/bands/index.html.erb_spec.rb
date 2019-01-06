require 'rails_helper'

RSpec.describe "bands/index", type: :view do
  before(:each) do
    assign(:bands, [
      Band.create!(),
      Band.create!()
    ])
  end

  it "renders a list of bands" do
    render
  end
end
