class AppBuildpack < ApplicationRecord
  belongs_to :app
  has_many :buildpacks, dependent: :destroy
end
