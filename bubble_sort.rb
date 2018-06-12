arr = [4,3,78,2,0,2]
def bubble_sort(arr)
	n = arr.length

	loop do
		swapped = false

		(n-1).times do |i|
			p i
			if arr[i] > arr[i+1]
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swapped = true
			end
		end
		break if !swapped
	end

	return arr	
end

p bubble_sort(arr)