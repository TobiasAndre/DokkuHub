# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
[
  { name: 'Ruby', buildpack: 'https://github.com/heroku/heroku-buildpack-ruby.git' },
  { name: 'Node.js', buildpack: 'https://github.com/heroku/heroku-buildpack-nodejs.git' },
  { name: 'Python', buildpack: 'https://github.com/heroku/heroku-buildpack-python.git' },
  { name: 'Java', buildpack: 'https://github.com/heroku/heroku-buildpack-java.git' },
  { name: 'PHP', buildpack: 'https://github.com/heroku/heroku-buildpack-php.git' },
  { name: 'Go', buildpack: 'https://github.com/heroku/heroku-buildpack-go.git' },
  { name: 'Closure', buildpack: 'https://github.com/heroku/heroku-buildpack-clojure.git' },
  { name: 'Scala', buildpack: 'https://github.com/heroku/heroku-buildpack-scala.git' }
].each do |buildpack|
  Buildpack.find_or_create_by(buildpack)
end

[
  { name: 'Postgres', service_type: 'postgres' },
  { name: 'Redis', service_type: 'redis' },
  { name: 'Memcached', service_type: 'memcached' },
  { name: 'MongoDB', service_type: 'mongodb' },
  { name: 'Elasticsearch', service_type: 'elasticsearch' },
  { name: 'RabbitMQ', service_type: 'rabbitmq' },
  { name: 'MySQL', service_type: 'mysql' }
].each do |service|
  Service.find_or_create_by(service)
end
