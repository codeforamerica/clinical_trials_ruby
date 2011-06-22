# -*- encoding: utf-8 -*-
require 'helper'

describe ClinicalTrials do
  describe ".client" do
    it "should be a ClinicalTrials::Client" do
      ClinicalTrials.client.should be_a ClinicalTrials::Client
    end
  end
end