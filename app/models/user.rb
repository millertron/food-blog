class User < ApplicationRecord
  has_secure_password
  enum status: { registered: 'registered', active: 'active', deactivated: 'deactivated' }, _prefix: :status
end
