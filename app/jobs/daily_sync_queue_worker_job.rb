class DailySyncQueueWorkerJob < ApplicationJob
  queue_as :default

  include ActiveModel::Attributes

  attr_accessor(
    :worker_state,
    :worker_type,
    :processing_utc_date,
    :retries,
    :class_version
  )

  # @param crucible [CrucibleUser]
  # @param horde [HordeUser]
  # @return [Hash{Symbol => String}]
  def build_human_asset_data(crucible:, horde:)
    _ = crucible
    _ = horde
    {}
  end

  # # example 1
  # #     method with crucible first, no YARD @type
  # #   underlines horde_user as wrong type
  # #   pop up on queueable says it returns CrucibleUser
  # #
  # # @param crucible_job [DailySyncQueue,nil]
  # # @param horde_job [DailySyncQueue,nil]
  # # @return result [HumanAssetCreateResult]
  # def create_new_human_asset_record(crucible_job, horde_job)
  #   crucible_user = crucible_job&.queueable
  #   horde_user    = horde_job&.queueable
  #
  #   data          = build_human_asset_data(crucible: crucible_user, horde: horde_user)
  # end

  # # example 2
  # #     method with horde first, no YARD @type
  # #   underlines crucible_user as wrong type
  # #   pop up on queueable says it returns HordeUser
  # #
  # # @param crucible_job [DailySyncQueue,nil]
  # # @param horde_job [DailySyncQueue,nil]
  # # @return result [HumanAssetCreateResult]
  # def create_new_human_asset_record(crucible_job, horde_job)
  #   horde_user    = horde_job&.queueable
  #   crucible_user = crucible_job&.queueable
  #
  #   data          = build_human_asset_data(crucible: crucible_user, horde: horde_user)
  # end

  # # example 3
  # #     method with crucible first, with YARD @type
  # #   underlines horde_user as wrong type
  # #   pop up on queueable says it returns CrucibleUser
  # #
  # # @param crucible_job [DailySyncQueue,nil]
  # # @param horde_job [DailySyncQueue,nil]
  # # @return result [HumanAssetCreateResult]
  # def create_new_human_asset_record(crucible_job, horde_job)
  #   # @type [CrucibleUser] crucible_user
  #   crucible_user = crucible_job&.queueable
  #   # @type [HordeUser] horde_user
  #   horde_user    = horde_job&.queueable
  #
  #   data          = build_human_asset_data(crucible: crucible_user, horde: horde_user)
  # end

  # example 4
  #     method with horde first, with YARD @type
  #   underlines crucible_user as wrong type
  #   pop up on queueable says it returns HordeUser
  #
  # @param crucible_job [DailySyncQueue,nil]
  # @param horde_job [DailySyncQueue,nil]
  # @return result [HumanAssetCreateResult]
  def create_new_human_asset_record(crucible_job, horde_job)
    # @type [HordeUser] horde_user
    horde_user    = horde_job&.queueable
    # @type [CrucibleUser] crucible_user
    crucible_user = crucible_job&.queueable

    data          = build_human_asset_data(crucible: crucible_user, horde: horde_user)
  end

  def perform(*args)
    # Do something later
  end
end
