require 'spec_helper'

describe GenericHistorical::HasGenericHistory do
  describe ".has_generic_history" do
    let(:r) { Reportable.new }

    it "gives a model the ability to have generic history" do
      r.history.should be_empty
    end

    it "gives a model many historical items" do
      r.historical_items.should be_empty
    end
  end
end
