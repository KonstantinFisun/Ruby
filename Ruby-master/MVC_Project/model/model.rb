require '../duty_list.rb'
require '../reward_list.rb'
require '../duty.rb'
require '../reward.rb'
require 'yaml'

class Model
  def initialize

  end

  def get_list_duty
    lst = Duty_list.read_from_YAML("C:/Users/Admin/Desktop/Ruby-master/MVC_Project/duty_list")
    lst
  end

  def set_list_duty
  end
end