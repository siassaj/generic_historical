module GenericHistorical
  module HasGenericHistory
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def has_generic_history(options = {})

        class_attribute :historical_item_association_name
        self.historical_item_association_name = options[:historical_item] || :historical_item

        class_attribute :historical_items_association_name
        self.historical_items_association_name = options[:historical_items] || :historical_items

        class_attribute :historical_item_class_name
        self.historical_item_class_name = options[:class_name] || 'GenericHistorical::HistoricalItem'

        include InstanceMethods

        has_many self.historical_items_association_name, as: :historical, class_name: self.historical_item_class_name
      end
    end

    module InstanceMethods
      def history
        []
      end
    end
  end
end

ActiveRecord::Base.send :include, GenericHistorical::HasGenericHistory
