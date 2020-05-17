# frozen_string_literal: true

class ActivityPub::EncryptedMessageSerializer < ActivityPub::Serializer
  context_extensions :olm

  class DeviceSerializer < ActivityPub::Serializer
    attributes :type, :device_id

    def type
      'Device'
    end

    def device_id
      object
    end
  end

  attributes :type, :message_type, :cipher_text, :message_franking

  has_one :attributed_to, serializer: DeviceSerializer
  has_one :to, serializer: DeviceSerializer

  def type
    'EncryptedMessage'
  end

  def attributed_to
    object.source_device.device_id
  end

  def to
    object.target_device_id
  end

  def message_type
    object.type
  end

  def cipher_text
    object.body
  end
end
