class AppBuildpack < ApplicationRecord
  belongs_to :app
  belongs_to :buildpack
end
