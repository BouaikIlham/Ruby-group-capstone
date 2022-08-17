class Label
  attr_accessor :title, :color

  def initialize(title, _color)
    @id = Random.rand(1..1000)
    @title = title
    @color = coloe
    @items = []
  end

  def add_item(item)
    item.label = item
    @items << item
  end
end
