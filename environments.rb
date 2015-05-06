<<<<<<< HEAD
configure :development do
  set :database, 'sqlite3:db/dev.db'
  set :show_exception, true
end

=======
>>>>>>> 9d328b6ca140b903ee39a26dac215beda9838b3a
configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

  ActiveRecord::Base.establish_connection(
    adapter: db.scheme == 'postgres' ? 'postgresql' : db.scheme,
<<<<<<< HEAD
    host: db.host,
    username: db.user,
    password: db.password,
    database: db.path[1..-1],
    encoding: 'utf8'
  )
end 
=======
    host:    db.host,
    username:db.user,
    password:db.password,
    database:db.path[1..-1],
    encoding: 'utf8'
  )
end
>>>>>>> 9d328b6ca140b903ee39a26dac215beda9838b3a
