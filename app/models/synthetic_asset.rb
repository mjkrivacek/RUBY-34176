# frozen_string_literal: true

class SyntheticAsset < ApplicationRecord
  has_one :resource, as: :assignable
  has_many :histories, as: :recallable

  after_initialize(:add_data_fakers)

  def employee_number
    '0'
  end

  def add_data_fakers
    HumanAsset.columns.each do |column_name|
      potential_attrib = column_name.name.to_sym
      next if respond_to?(potential_attrib.to_sym)

      define_singleton_method(potential_attrib.to_sym) do
        "UNDEFINED for #{preferred_name}"
      end
    end
  end
end
