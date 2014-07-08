require 'spec_helper'

describe GenericHistorical::HasGenericHistory do
  describe ".has_generic_history" do
    let(:robot) { FactoryGirl.create :robot }

    it "gives a model the ability to have generic history" do
      robot.history.should be_empty
    end

    it "gives a model many historical items" do
      robot.historical_items.should be_empty
    end
  end
end
