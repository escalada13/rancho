require 'spec_helper'

describe "Htscdts" do
  describe "GET /htscdts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get htscdts_path
      response.status.should be(200)
    end
  end
end
