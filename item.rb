class Item
  attr_accessor :name, :status

  def initialize(name, status = "not packed")
    @name = name
    @status = status
  end

  def pack
    self.status = "packed"
  end

  def to_s
    "#{@name}"
  end

  def name_status_to_s
    "#{@name} is #{status}"
  end
end
