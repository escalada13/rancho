require 'spec_helper'

describe "htscdts/new" do
  before(:each) do
    assign(:htscdt, stub_model(Htscdt,
      :htsus => "MyString",
      :author => "MyString",
      :verified => "MyString",
      :inv_description => "MyString",
      :gen_eng_desc => "MyString",
      :gen_esp_desc => "MyString",
      :early_triggers => "MyString",
      :legal_authority => "MyString",
      :la_link => "MyString",
      :other_link => "MyString",
      :comments => "MyText",
      :confidence => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new htscdt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", htscdts_path, "post" do
      assert_select "input#htscdt_htsus[name=?]", "htscdt[htsus]"
      assert_select "input#htscdt_author[name=?]", "htscdt[author]"
      assert_select "input#htscdt_verified[name=?]", "htscdt[verified]"
      assert_select "input#htscdt_inv_description[name=?]", "htscdt[inv_description]"
      assert_select "input#htscdt_gen_eng_desc[name=?]", "htscdt[gen_eng_desc]"
      assert_select "input#htscdt_gen_esp_desc[name=?]", "htscdt[gen_esp_desc]"
      assert_select "input#htscdt_early_triggers[name=?]", "htscdt[early_triggers]"
      assert_select "input#htscdt_legal_authority[name=?]", "htscdt[legal_authority]"
      assert_select "input#htscdt_la_link[name=?]", "htscdt[la_link]"
      assert_select "input#htscdt_other_link[name=?]", "htscdt[other_link]"
      assert_select "textarea#htscdt_comments[name=?]", "htscdt[comments]"
      assert_select "input#htscdt_confidence[name=?]", "htscdt[confidence]"
      assert_select "input#htscdt_image[name=?]", "htscdt[image]"
    end
  end
end
