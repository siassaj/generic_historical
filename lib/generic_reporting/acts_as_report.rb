module GenericReporting
  module ActsAsReport
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_report(options = {})

        include InstanceMethods

        class_attribute :report_item_association_name
        self.report_item_association_name = options[:report_item] || :report_item

        class_attribute :report_items_association_name
        self.report_items_association_name = options[:report_items] || :report_items

        class_attribute :report_item_class_name
        self.report_item_class_name = options[:class_name] || 'GenericReporting::ReportItem'


        has_many self.report_items_association_name, as: :report, class_name: self.report_item_class_name

      end

    end


    module InstanceMethods
    end
  end
end

ActiveRecord::Base.send :include, GenericReporting::ActsAsReport
