require_relative 'fur/init'
require_relative 'fur/store'
require_relative 'fur/back'
require_relative 'fur/forward'
require_relative 'fur/status'

module Fur
  def self.run
    if command
      send command
    else
      puts "Fur is a version control system for mammals"
    end
  end

  def self.command
    ARGV.first
  end

  def self.init
    Init.new.run
  end

  def self.store
    Store.create.run
  end

  def self.back
    Back.new.run
  end

  def self.forward
    Forward.new.run
  end

  def self.status
    Status.new.run
  end
end