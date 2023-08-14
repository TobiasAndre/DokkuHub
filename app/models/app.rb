class App < ApplicationRecord
  has_many :app_services, dependent: :destroy
  has_many :app_buildpacks, dependent: :destroy
  has_many :app_variables, dependent: :destroy

  def icon
    if app_buildpacks.count.positive?
      app_buildpacks.first.buildpack.name.downcase
    else
      'gear.png'
    end
  end
end
