# frozen_string_literal: true

class Resource < ApplicationRecord
  belongs_to :entity
  belongs_to :assignable, polymorphic: true

  delegate_missing_to(:assignable)
end
