# frozen_string_literal: true

require_relative 'secure_users.rb'
class Student
  include Secure
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
                  email address: #{@email}"
  end

end

mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com",
                      "password1")
john = Student.new("John", "Doe", "john1", "john1@example.com",
                   "password2")

hashed_password = mashrur.create_hash_digest(mashrur.password)

puts hashed_password