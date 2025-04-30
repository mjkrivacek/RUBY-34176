# frozen_string_literal: true

module V7UUID
  extend ActiveSupport::Concern

  included do
    before_create :generate_uuid_v7
    attribute :uuid, MySQLBinUUID::Type.new
  end

  private

  def generate_uuid_v7
    return if self.class.attribute_types['uuid'].type != :uuid

    self.uuid ||= SecureRandom.uuid_v7
  end
end
