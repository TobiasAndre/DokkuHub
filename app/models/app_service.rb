class AppService < ApplicationRecord
  belongs_to :app
  has_many :services, dependent: :destroy
end
