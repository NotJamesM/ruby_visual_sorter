class Sorter
  def initialize()
    @data = generateRandomData
  end

  def show_data
    @data.each_with_index do |val, index|
      puts "Index:#{index}\t\tValue: #{val}"
    end
  end

  #Implementation of a bubblesort algorithm
  def bubbleSort
    @data.each do |i|
      @data.each_with_index do |val, index|
        unless @data[index + 1].nil?
          if val > @data[index+1]
            temp = val
            @data[index] = @data[index + 1]
            @data[index + 1] = temp
          end
        end
      end
    end
  end

  private
  def generateRandomData()
    random = Random.new
    Array.new(50) { |i| i = random.rand(50) }
  end
end