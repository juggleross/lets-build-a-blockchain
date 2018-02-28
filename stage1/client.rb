require_relative 'haseebcoin'
require 'faraday'
require 'pry'

URL = 'http://localhost'
PORT = 4567

def create_user(name)
  Faraday.post("#{URL}:#{PORT}/users", name: name).body
end

def get_balance(user)
  Faraday.get("#{URL}:#{PORT}/balance", user: user).body
end

def transfer(from, to, amount)
  Faraday.post("#{URL}:#{PORT}/transfers", from: from, to: to, amount: amount).body
end

def increase_balance(name, amount)
  Faraday.post("#{URL}:#{PORT}/increase_balance", name: name, amount: amount).body
end

