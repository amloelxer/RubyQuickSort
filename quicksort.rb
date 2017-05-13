
class QuickSort

  def initialize
    @array_to_be_sorted = [5,4,2,9,3,10,11,12]
  end

  def swap_numbers_by_index(firstIndex, secondIndex)
    firstTempNumber = @array_to_be_sorted[firstIndex]
    @array_to_be_sorted[firstIndex] = @array_to_be_sorted[secondIndex]
    @array_to_be_sorted[secondIndex] = firstTempNumber
  end

  def run
    puts "the value of the array before quicksort is #{@array_to_be_sorted.inspect}"
    quicksort(0, @array_to_be_sorted.length - 1)
    puts "the value of the array after quicksort is #{@array_to_be_sorted.inspect}"
  end

  def quicksort(lowerIndex, higherIndex)
     i = lowerIndex
     j = higherIndex
     pivotNumber = @array_to_be_sorted[lowerIndex + (higherIndex - lowerIndex)/2].to_i
     puts "the pivot number is #{pivotNumber}"
     while i <= j do
       while @array_to_be_sorted[i].to_i < pivotNumber do
         i+=1
       end

       while @array_to_be_sorted[j].to_i > pivotNumber do
         j-=1
       end

       if i <= j
         swap_numbers_by_index(i,j)
         i+=1
         j-=1
       end
     end

     if lowerIndex < j
       quicksort(lowerIndex, j)
     end

     if i < higherIndex
       quicksort(i, higherIndex)
     end
  end
end

quicksortTester = QuickSort.new
quicksortTester.run
