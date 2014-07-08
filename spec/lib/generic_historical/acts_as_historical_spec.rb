require 'spec_helper'

describe GenericHistorical::ActsAsHistorical do

  describe ".acts_as_historical" do
    let(:r) { Report.new }

    it "gives the historical model many historical_items" do
      expect(r.historical_items).to be_empty
    end
  end

end
