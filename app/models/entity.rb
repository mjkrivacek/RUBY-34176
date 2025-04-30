# frozen_string_literal: true

class Entity < ApplicationRecord
  include V7UUID

  has_one  :resource
  has_many :histories

  accepts_nested_attributes_for :resource
  accepts_nested_attributes_for :histories

  delegate_missing_to(:resource)
end
