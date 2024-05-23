require 'mongoid'
require_relative 'contact'

class ContactManager
  def initialize
    # loading configuration manually because this app is not using Ruby on Rails
    Mongoid.load!('config/mongoid.yml', :development)
  end