class Buildpack < ApplicationRecord
  has_many :app_buildpacks, dependent: :destroy
  has_many :apps, through: :app_buildpacks
end
