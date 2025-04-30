# frozen_string_literal: true

class DailySyncQueue < ApplicationRecord
  belongs_to :queueable, polymorphic: true

  scope :for_day, ->(utc_date) { where(utc_date: utc_date) }
  scope :limit_user_class_to, ->(klass) { where(queueable_type: klass.name) }
  scope :crucible_users, -> { limit_user_class_to(CrucibleUser) }
  scope :horde_users, -> { limit_user_class_to(HordeUser) }
  scope :matching_users, -> { where }

  delegate_missing_to(:queueable)

  # @return [Boolean]
  def processable?
    if id.nil? || new_record?
      CustomLogging.log(:warn, 'empty or unsaved record, skipping')
      return false
    end
    unless daily_sync_result.nil?
      CustomLogging.log(:warn, "we are processing a user for a second time #{inspect}, this seems like a BUG")
    end
    true
  end
end
