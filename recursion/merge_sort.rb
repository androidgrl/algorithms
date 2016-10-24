def merge(array, p, q, r)
  low_half = []
  high_half = []
  i = 0
  j = 0
  k = p

  while k <= q do
    low_half[i] = array[k]
    i += 1
    k += 1
  end

  while k <= r do
    high_half[j] = array[k]
    j += 1
    k += 1
  end

  i = 0
  j = 0
  k = p

  while (i < low_half.length) && (j < high_half.length) do
    if low_half[i] < high_half[j]
      array[k] = low_half[i]
      i += 1
    else
      array[k] = high_half[j]
      j += 1
    end
    k += 1
  end

  while i < low_half.length do
    array[k] = low_half[i]
    i += 1
    k += 1
  end

  while j < high_half.length do
    array[k] = high_half[j]
    j += 1
    k += 1
  end
end

def merge_sort(array, p, r)
  if p < r
    q = ((p + r)/2).floor
    merge_sort(array, p, q)
    merge_sort(array, q + 1, r)
    merge(array, p, q, r)
  end
end


array = [14, 7, -3, 12, 9, 11, 6, 2]
merge_sort(array, 0, array.length-1)
p array
