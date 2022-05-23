path = File.dirname(__FILE__) # Получили путь к папке
require "#{path}/Department.rb"
require "yaml"
require "yaml/store"
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

def dep_info(list_)
  list_.each{|x| puts(x)}
end

  def post_in_file
    "\"" + @post.join("\", \"") + "\""
  end

def write_to_txt(file, post)
  File.open(file, "w") do |f|
    post.each do |x|
      f.puts "\"#{x.name}\", #{x.phone}, (#{x.post_in_file})"
    end
  end
end
def write_to_yaml(file, list_)
  File.open(file,"w") do |f|
    f.puts YAML.dump(list_)
  end

  def read_from_YAML(file)
  store = YAML::Store.new file
  list_ = ""
  File.open(file, 'r') do |f|
    while (line = f.gets)
      list_ += line
    end
  end
  store.load(list_)
end

  def main
  list_ = read_from_txt("Department.txt")
    list_ = read_from_YAML("Dep_write.yaml")
    write_to_yaml("Dep_write.yaml", list_)
  dep_info(list)
     list_.push(Department.new("Максим", "89659420158", "SMM специалист"))
     
  write_to_txt("Department.txt", list_)
     
end

if __FILE__ == $0
    main
end


