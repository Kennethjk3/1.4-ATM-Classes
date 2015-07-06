require 'csv'
require './user.rb'

class CsvLoader

  def load_users
      @@users = []
      CSV.foreach('./users.csv', headers: true) do |row|
        u = User.new
        u.name = row["Name"]
        u.pin = row["Pin"]
        u.balance = row["Balance"].to_i
        @@users.push(u)
      end
      @@users
  end

end



# the result of load_users is an array of User
# [ User('josh', 2222, 232323.23), User('ken', 22, 3123.23), User('joseph', 12, 2323.23) ]
# for example

# c = CsvLoader.new
# users = c.load_users

# now i can do anything i want with the users

# users.foreach check |user|
#   puts user.name
#   puts user.pin
# end
