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

## Super useful hints

<details>
  <summary> Visualization </summary>

  ![snail image](snail.png?raw=true "Snail Sort")
</details>

<details>
 <summary> Array functions </summary>

 ### Array.flatten
 Flattens an array by 1 level
 ```ruby
 [[1, 2, 3], [4, 5, 6]].flatten #=> [1, 2, 3, 4, 5, 6]
 ```
 ### Array.shift
 **takes** the first element from an array and returns the taken element (it mutates the original array, which is particularly useful for the snail sort)
 ```ruby
 a = [[1, 2, 3], [4, 5, 6]]
 a.shift #=> [1, 2, 3]
 a #=> [[4, 5, 6]]
 ```
 ### Array.transpose
 Transposes the rows and collumns of an array
 ```ruby
 a = [[1,2], [3,4], [5,6]]
 a.transpose   #=> [[1, 3, 5], [2, 4, 6]]
 ```

 ### Array.reverse
 Reverse the order in an array
 ```ruby
 a = [[1,2], [3,4], [5,6]]
 a.reverse   #=> [[5, 6], [3, 4], [1, 2]]
 ```
</details>

<details>
  <summary> Rotate a 2D array </summary>

  To rotate a 2D array, you can combine the `transpose` and `reverse` methods
  ```ruby
  a = [
   [1, 2, 3]
   [4, 5, 6]
  ]
  a.transpose.reverse
  #=> [
    [3, 6]
    [2, 5]
    [1, 4]
  ]
  ```
  **This is a non mutating operation**
</details>

<details>
  <summary> Solution hint </summary>

  Create a result array `result = []`
  - Take and remove the top values of the array.
  - We want to remove the top values so that we don't repeat any values in our result.
  - Since we want to spiral around the 2D array, we can just **rotate** it and repeat the process of taking the top values.
  - What we'l be left with is an array of arrays that contain the elements in the order that we want, so now we can just **flatten** it.
</details>



