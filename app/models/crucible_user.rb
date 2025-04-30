class CrucibleUser < ApplicationRecord
  has_one :daily_sync_queue, as: :queueable
end
