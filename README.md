# lua-sort
Roblox <b>ModuleScript</b> Require
```lua
local Sort = require(game.Workspace.Sort)
```
* <b>Selection Sort</b> <br>
From the first to the last value, we replace each value with the smallest element that comes after it.

```lua
print("Selection Sort: ",table.concat(Sort.Selection(array,true)," - "))
--Output Selection Sort:  3 - 5 - 6 - 16 - 744

print("Selection Sort: ",table.concat(Sort.Selection(array,false)," - "))
--Output Selection Sort:  744 - 16 - 6 - 5 - 3
```
* <b>Bubble Sort</b> <br>
It starts from the beginning of the array and compare all values with the value before it until the end and changes their places if necessary.
```lua
print("Bubble Sort: ",table.concat(Sort.Bubble(array,true)," - "))
--Output Bubble Sort:  3 - 5 - 6 - 16 - 744

print("Bubble Sort: ",table.concat(Sort.Bubble(array,false)," - "))
--Output Bubble Sort:  744 - 16 - 6 - 5 - 3 
```
* <b>Insertion Sort </b> <br>
This algorithm starts at the 2nd value of the array and replace every value it encounters with the larger values ​​that precede this value until it reaches its final value.
```lua
print("Insertion Sort: ",table.concat(Sort.Insertion(array,true)," - "))
--Output Insertion Sort:  3 - 5 - 6 - 16 - 744 

print("Insertion Sort: ",table.concat(Sort.Insertion(array,false)," - "))
--Output Insertion Sort:  744 - 16 - 6 - 5 - 3
```
* <b>Quick Sort</b> <br>
Selects a pivot value near the middle of the array and shifts values ​​greater than the pivot to the right and values ​​less than the pivot to the left. After doing this process, it selects pivot values ​​separately from the arrays to the left and right of the pivot value and subjects those arrays to this process again. After this process continues recursively, the entire array will be sorted.
```lua
print("Quick Sort: ",table.concat(Sort.Quick(array,1,#array,true)," - "))
--Output Quick Sort:  3 - 5 - 6 - 16 - 744

print("Quick Sort: ",table.concat(Sort.Quick(array,1,#array,false)," - "))
--Output Quick Sort:  744 - 16 - 6 - 5 - 3
```
> **Tests used 500,000-element array.**  

Algorithm | Sequential Array (ms) | Rev. Sequential Array (ms) | Rnd. Sequential (ms)
------------- | ------------- | ------------- | -------------
Selection Sort  | 583334 | 511961 | 516530
Insertion Sort  | 10 | 407946 | 234287
Bubble Sort | 10 | 1536317 | 2062972
Quick Sort | 60 | 90 | 160
