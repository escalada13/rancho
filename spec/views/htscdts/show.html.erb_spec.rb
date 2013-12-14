require 'spec_helper'

describe "htscdts/show" do
  before(:each) do
    @htscdt = assign(:htscdt, stub_model(Htscdt,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Htsus/)
    rendered.should match(/Author/)
    rendered.should match(/Verified/)
    rendered.should match(/Inv Description/)
    rendered.should match(/Gen Eng Desc/)
    rendered.should match(/Gen Esp Desc/)
    rendered.should match(/Early Triggers/)
    rendered.should match(/Legal Authority/)
    rendered.should match(/La Link/)
    rendered.should match(/Other Link/)
    rendered.should match(/MyText/)
    rendered.should match(/Confidence/)
    rendered.should match(/Image/)
  end
end
