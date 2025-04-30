# frozen_string_literal: true

class History < ApplicationRecord
  belongs_to :entity
  belongs_to :recallable, polymorphic: true

  accepts_nested_attributes_for :entity
  accepts_nested_attributes_for :recallable

  delegate_missing_to :recallable
end
