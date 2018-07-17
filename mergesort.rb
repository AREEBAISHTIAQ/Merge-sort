def mergeSort(ar)
	if ar.size > 1
		left, right = mergeSort(ar[0..ar.size/2-1]), mergeSort(ar[ar.size/2..-1])
		return sort(left,right)
	end
	ar
end

def sort(l, r, mergedList = [])
	while l.size > 0 && r.size > 0  
		mergedList << (l[0] < r[0] ? l.shift : r.shift)  
	end
	mergedList += l.size == 0 ? r : l
	mergedList
end

ar = [38,27,43,3,-9,82,10,15,107,39,455,6,22,11]

puts mergeSort(ar)