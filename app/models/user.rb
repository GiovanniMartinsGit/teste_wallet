class User < ApplicationRecord
  has_many :wallet_entries, dependent: :destroy
end
