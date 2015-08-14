
# Merge two sorted arrays

def merge_sorted_arrays(a,b)
  
  n = a.length + b.length
  c = Array.new(n)
  i = 0
  j = 0
  for k in 0..n-1
    if a[i].nil?
      c[k] = b[j]
      j += 1
    elsif b[j].nil?
      c[k] = a[i]
      i += 1
    elsif a[i] < b[j]
      c[k] = a[i]
      i += 1
    elsif b[j] < a[i]
      c[k] = b[j]
      j += 1
    end
  end

  c
  
end


# Merge Sort
# Seems to work on all array lengths except 0 or 1

def merge_sort(array)
  n = array.length
  if n >= 2
    a = array[0..n/2-1]
    b = array[n/2..n-1]
    if a.length >= 2 then a = merge_sort(a) end
    if b.length >= 2 then b = merge_sort(b) end
  end
  merge_sorted_arrays(a,b)
end
