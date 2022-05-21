
  reg_name = /^"[\w| |,|.]+/
  reg_phone = /8\-?([0-9]{3})\-?([ .-]?)([0-9]{3})\2([0-9]{4})/
  reg_post = /\(["[\w| |,|.|']+"]*\)$/
  post = []
  File.open(file,"r") do |f|
    while (line = f.gets)
      name = reg_name.match(line).to_s
      name[0]=''
      phone = reg_phone.match(line).to_s
      duty = reg_post.match(line).to_s
      pp = Department.find_post(duty)
      pos = Department.new(name, phone)
      (0..pp.length-1).each { |x| pos.add_post(pp[x]) }
      post.append(pos)
    end
  end
  post
end

def departments_info(departments)
  departments.each{|x| puts(x)}
end

  def main
  list = read_from_txt("Department.txt")
  dep_info(list)
end

if __FILE__ == $0
    main
end


