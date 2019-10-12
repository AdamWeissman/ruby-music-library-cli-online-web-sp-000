module Concerns::Findable

  def find_by_name(fname)
    self.all.detect {|song| self.name == fname}
  end
  
  def find_or_create_by_name(fname)
    self.find_by_name(fname) || self.create(fname)
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