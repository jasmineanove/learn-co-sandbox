class Users
  attr_reader :username, :password, :type 
  attr_writer :username, :password, :type 
  @@all_users = []
  @@tally = 0
  
  def initialize(username, password, type)
    @username = username
    @password = password 
    @type = type
    @@all_users << self #instance method here
    @@tally += 1
  end

  def self.all_users #class method when its outside
    @@all_users
  end
  
  def like(surfer) 
    puts "#{@username}, #{surfer} just liked your post!"
  end 
  
  def self.alert
    @@all_users.each do |user_info|
      if user_info.type == "Private"
        puts "#{user_info.username}, You have a private account, unfourtuately you data has been compromised. Please change your password immediately!"
      else 
        puts "#{user_info.username}, calm down. Youre account is secure."
      end 
    end
  end
  
  def self.tally
    return @@tally
  end
  
end
  

elaine = Users.new("Elaine", "password123", "Public")
caroline = Users.new("Caroline", "yalaci", "Private")
andrew = Users.new("breadboiiii", "candyland", "Public")
ariana_grande = Users.new("arianagrande", "petedavidson", "Public")

Users.alert 
puts Users.tally

puts "Hey. psss."
sleep (1)
puts "Wanna know arianna grandes instagram password?"
ariana = gets.strip.upcase
if "YES" == ariana 
  puts "well, its..."
  puts ariana_grande.password
else 
  puts "your loss"
end

#Notes: Getter and Setter Method Syntax
  # def username
  #   @username
  # end

  # def password
  #   @password
  # end

  # def username=(new_username)
  #   @username = new_username
  # end 
  
  # def password=(new_password)
  #   @password = new_password
 # end 
  
  # def type=(new_type)
  #   @type = new_type
 # end 
  
  # def like(surfer)
  #   puts "#{username}, #{surfer} just liked your post!"
# end
# ~
# class Users
#     attr_reader :username, :password, :type
#     attr_writer :username, :password, :type
  
#   def initialize(username, password, type)
#     @username = username
#     @password = password
#     @type = type
#   end
  
# def comment(message)
#   puts "Your friend just posted. Be the first to comment!"
#   puts "#{username}, you commented, Miss you!"

# end

# elaine = Users.new("Elaine", "password123", "Public")
# caroline = Users.new("caroline", "Caroline123", "Public")
# jasmine = Users.new("jjaassss", "Chiken", "Private")
#end