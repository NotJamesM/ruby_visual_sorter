require_relative 'sorting'

s = Sorter.new

Shoes.app(title: "Sorting Demo",
  width: 500, height: 500, resizable: true ) do
  background white
  stroke black
  fill blue
  # rect 0,0, 5, 7
  # rect 0,30, 5, 19
  # rect 0,10, 5, 15
  # rect 0,15, 5, 3
  # rect 0,20, 5, 5
  puts "test"
  data = s.data
  rect_array = Array.new
  stack do
    data.each_with_index do |val, index|
      rect_array.push(rect index * 10, self.height - val - 150, 5, val)
    end
    para "Each rectangle represent a number in the array"
    button "click" do
      s.bubbleSort
      data.each_with_index do |val,i|
        rect_array[i].height = val
        rect_array[i].top = self.height - val - 150
      end
    end
  end
end