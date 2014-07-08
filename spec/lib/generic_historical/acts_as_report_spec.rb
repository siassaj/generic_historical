require 'spec_helper'

describe GenericHistorical::ActsAsReport do

  describe ".acts_as_report" do
    let(:r) { Report.new }

    it "gives the report many report_items" do
      expect(r.report_items).to be_empty
    end
  end

end
