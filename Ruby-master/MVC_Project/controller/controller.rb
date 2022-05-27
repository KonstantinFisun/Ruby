require_relative '../model/model'

class Controller
  def initialize
    @model = Model.new
  end

  def get_list_duty
    @model.get_list_duty
  end
end
