module Concerns::Findable

  def self.find_by_name(fname)
    all.detect {|song| self.name == fname}
  end
  
  def self.find_or_create_by_name(fname)
    find_by_name(fname) || create(fname)
  end
  
end


=begin

module Concerns::Findable
  def find_by_name(name)
    self.all.detect{|s| s.name == name}
  end

  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end
end

=end 