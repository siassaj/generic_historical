require 'spec_helper'

describe GenericReporting::ActsAsReport do

  describe ".acts_as_report" do
    let(:r) { Report.new }

    it "gives the report many report_items" do
      r.report_items.should be_empty
    end
  end

end
