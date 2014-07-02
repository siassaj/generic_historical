require 'spec_helper'

describe GenericReporting::HasGenericReports do
  describe ".has_generic_reports" do
    let(:r) { Reportable.new }

    it "gives a model the ability to have generic reports" do
      r.reports.should be_empty
    end

    it "gives a model many report items" do
      r.report_items.should be_empty
    end
  end
end
