module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods

  end

  module ClassMethods
    attr_accessor :instances, :instances_list
  end


module InstanceMethods
  def register_instance
    self.class.instances ||= 0
    self.class.instances +=1
    self.class.instances_list ||= []
    self.class.instances_list << self
  end
end

end
