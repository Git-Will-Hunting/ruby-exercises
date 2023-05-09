def bubble_sort(array)
    n = array.length
    unsorted = true
    passes = 0
    while unsorted
        for i in 0..(n-2) do
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1] , array[i]
                unsorted = true
            else
                unsorted = false
            end
            passes += 1
            puts "#{passes}  passes"
        end
        n -= 1
    end
print array
end

bubble_sort([6,5,3,1,8,7,2,4])