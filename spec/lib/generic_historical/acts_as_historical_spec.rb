require 'spec_helper'

describe GenericHistorical::ActsAsHistorical do

  describe ".acts_as_historical" do
    let(:upgrade) { FactoryGirl.create :upgrade }

    it "gives the historical model many historical_items" do
      upgrade.historical_items.should be_empty
    end
  end

end
