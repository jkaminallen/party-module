module PartyGoer
  attr_accessor :drinks

  def initialize
    @drinks = 0
  end

  def drink
    @drinks += 1
    if @drinks >= 4
      false
    else
      true
    end
  end

  def sing
    "singing"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end
end

class Launcher
  include PartyGoer

  def self.invited?
    true
  end
end

class PersonalizedHavocError < StandardError; end
