# snail-sort
Given an `n x n` array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

## Examples

```ruby
array = [[1,2,3],
         [4,5,6],
         [7,8,9]]
snail_sort(array) #=> [1,2,3,6,9,8,7,4,5]
```

```ruby
array = [[1,2,3],
         [8,9,4],
         [7,6,5]]
snail_sort(array) #=> [1,2,3,4,5,6,7,8,9]
```

