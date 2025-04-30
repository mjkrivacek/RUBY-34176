# frozen_string_literal: true

class HumanAsset < ApplicationRecord
  has_one :resource, as: :assignable
  has_many :histories, as: :recallable

  def employee_number
    value = self[:employee_number]
    return value if value.present?

    CustomLogging.log(:debug, "no existing employee number for '#{self[:preferred_name]}' using '0'")
    '0'
  end

  def self.data_fields
    @data_fields ||= (HumanAsset.attribute_names - %w[id created_at updated_at]).map(&:to_sym).freeze
  end
end
