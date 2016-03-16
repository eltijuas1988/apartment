require 'rails_helper'

RSpec.describe "condos/show", type: :view do
  before(:each) do
    @condo = assign(:condo, Condo.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "Address",
      :name => "Name",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact/)
  end
end
