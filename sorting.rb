class Sorter
  def initialize()
    @data = generateRandomData
  end

  def bubbleSort
    @data.each_with_index do |n|
      puts n
    end
  end

  private
  def generateRandomData()
    random = Random.new
    puts "Hello"
    Array.new(50) { |i| i = random.rand(50)  }
  end
end