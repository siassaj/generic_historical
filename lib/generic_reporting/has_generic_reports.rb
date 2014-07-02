module GenericReporting
  module HasGenericReports
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def has_generic_reports(options = {})

        class_attribute :report_item_association_name
        self.report_item_association_name = options[:report_item] || :report_item

        class_attribute :report_items_association_name
        self.report_items_association_name = options[:report_items] || :report_items

        class_attribute :report_item_class_name
        self.report_item_class_name = options[:class_name] || 'GenericReporting::ReportItem'

        include InstanceMethods

        has_many self.report_items_association_name, as: :reportable, class_name: self.report_item_class_name
      end
    end

    module InstanceMethods
      def reports
        []
      end
    end
  end
end

ActiveRecord::Base.send :include, GenericReporting::HasGenericReports
