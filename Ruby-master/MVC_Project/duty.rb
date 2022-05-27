class Duty
  attr_accessor :name, :days, :number, :reward_list
  def initialize (name, number, days, reward_list=[] )
    @name = name
    @number = number
    @days = days
    @reward_list = reward_list
  end

  def to_s
    "Фамилия: #{@name}\nИмя: #{@number}\nОтчество:#{@days}\nНомер телефона: #{@reward_list}\n"
  end

  def number= number
    if number =~ /\d{,5}/
      @number = number
    else
      raise "Некорректное число дней!"
    end
  end

  def reward_list= reward_list
    @reward_list = Reward_list.new(reward_list)
  end

  def reward_list
    @reward_list
  end
end
