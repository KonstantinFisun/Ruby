path = File.dirname(__FILE__) 
require "#{path}/Department.rb"

class Department_list
  def initialize(*list_)
    @departments = list_
  end
end
