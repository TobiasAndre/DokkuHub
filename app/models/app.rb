class App < ApplicationRecord
  has_many :app_services, dependent: :destroy
  has_many :app_buildpacks, dependent: :destroy
  has_many :app_variables, dependent: :destroy
end
