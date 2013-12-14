require 'spec_helper'

describe "htscdts/index" do
  before(:each) do
    assign(:htscdts, [
      stub_model(Htscdt,
        :htsus => "Htsus",
        :author => "Author",
        :verified => "Verified",
        :inv_description => "Inv Description",
        :gen_eng_desc => "Gen Eng Desc",
        :gen_esp_desc => "Gen Esp Desc",
        :early_triggers => "Early Triggers",
        :legal_authority => "Legal Authority",
        :la_link => "La Link",
        :other_link => "Other Link",
        :comments => "MyText",
        :confidence => "Confidence",
        :image => "Image"
      ),
      stub_model(Htscdt,
        :htsus => "Htsus",
        :author => "Author",
        :verified => "Verified",
        :inv_description => "Inv Description",
        :gen_eng_desc => "Gen Eng Desc",
        :gen_esp_desc => "Gen Esp Desc",
        :early_triggers => "Early Triggers",
        :legal_authority => "Legal Authority",
        :la_link => "La Link",
        :other_link => "Other Link",
        :comments => "MyText",
        :confidence => "Confidence",
        :image => "Image"
      )
    ])
  end

  it "renders a list of htscdts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Htsus".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Verified".to_s, :count => 2
    assert_select "tr>td", :text => "Inv Description".to_s, :count => 2
    assert_select "tr>td", :text => "Gen Eng Desc".to_s, :count => 2
    assert_select "tr>td", :text => "Gen Esp Desc".to_s, :count => 2
    assert_select "tr>td", :text => "Early Triggers".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Authority".to_s, :count => 2
    assert_select "tr>td", :text => "La Link".to_s, :count => 2
    assert_select "tr>td", :text => "Other Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Confidence".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
