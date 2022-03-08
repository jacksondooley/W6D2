require 'byebug'

class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
        define_method("#{name}") { self.instance_variable_get("@#{name}")}
        define_method("#{name}=") { |blank| self.instance_variable_set("@#{name}", blank)}
    end
    # debugger
    # i = 0
    # while i < names.length
    #   name = names[i]
    #     if name[-1] == '='
          # define_method("#{name}") { self.instance_variable_set("@#{name}", names[i + 1])}
    #       i += 2
    #     end
    # end
  end
end
