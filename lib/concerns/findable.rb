module Concerns::ModuleName

  def self.find_by_name(fname)
    all.detect {|song| self.name == fname}
  end
  
  def self.find_or_create_by_name(fname)
    find_by_name(fname) || create(fname)
  end
  
end
