require 'rails_helper'

RSpec.describe "condos/new", type: :view do
  before(:each) do
    assign(:condo, Condo.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :name => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders new condo form" do
    render

    assert_select "form[action=?][method=?]", condos_path, "post" do

      assert_select "input#condo_latitude[name=?]", "condo[latitude]"

      assert_select "input#condo_longitude[name=?]", "condo[longitude]"

      assert_select "input#condo_address[name=?]", "condo[address]"

      assert_select "input#condo_name[name=?]", "condo[name]"

      assert_select "input#condo_contact[name=?]", "condo[contact]"
    end
  end
end
