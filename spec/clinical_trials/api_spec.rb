require 'helper'

describe ClinicalTrials::Client::Api do

  before do
    @client = ClinicalTrials::Client.new
  end
  
  describe ".search" do
    before do
      stub_get("search?term=%22lyme+disease%22&displayxml=true").
        to_return(:status => 200, :body => fixture("search.xml"))
    end
      
    it "should return the correct item" do
      test = @client.search("lyme disease")
      a_get("search?term=%22lyme+disease%22&displayxml=true").should have_been_made
      test.clinical_study.order.should == 1
    end
  end
  
end