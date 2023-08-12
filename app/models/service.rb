class Service < ApplicationRecord
  enum service_type: { 
    postgres: 'service',
    redis: 'redis',
    memcached: 'memcached',
    mongodb: 'mongodb',
    elasticsearch: 'elasticsearch',
    rabbitmq: 'rabbitmq',
    mysql: 'mysql' 
  }
end
