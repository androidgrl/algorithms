def swap(array, first, second)
  value = array[first]
  array[first] = array[second]
  array[second] = value
end

def partition(array, p, r)
  q = p
  i = p
  while i < r
    if array[i] <= array[r]
      swap(array, q, i)
      q += 1
    end
    i += 1
  end
  swap(array, r, q)
  return q
end

def quick_sort(array, p, r)
  if p < r
    index = partition(array, p, r)
    quick_sort(array, p, index - 1)
    quick_sort(array, index + 1, r)
  end
end

array = [5, 2, 8, 16, 12]
quick_sort(array, 0, 4)
p array
