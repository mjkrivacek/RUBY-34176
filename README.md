# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


* Boot strapping this sample
  ````bash
  rvm use @ruby-34176
  
  bundle exec rails generate model SyntheticAsset         \
  'preferred_name:string!'                               \
  ;
  
  bundle exec rails generate model HumanAsset             \
  'preferred_name:string!'                    \
  ;
  
  bundle exec rails generate model Entity                 \
  'uuid:binary{16}!:uniq'                     \
  ;

  bundle exec rails generate model History                \
  'entity:references'                         \
  'recallable:references{polymorphic}'        \
  ;

  bundle exec rails generate model Resource               \
  'entity:references'                         \
  'assignable:references{polymorphic}:uniq'   \
  ;
  
  bundle exec rails generate model HordeUser              \
  'displayname:string!'                       \
  ;
  
  bundle exec rails generate model CrucibleUser   \
  'preferredName:string!'                         \
  ;
  
  bundle exec rails generate model DailySyncQueue         \
  'utc_date:datetime!'                                    \
  'daily_sync_result:references                           \
  'queueable:references{polymorphic}:uniq'                \
  ;
  
  bundle exec rails generate job DailySyncQueueWorker \
  ;
  
  
  ````
