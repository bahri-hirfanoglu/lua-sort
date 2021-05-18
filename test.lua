local Sort = require(game.Workspace.Sort)
local array = {6,3,16,744,5}


print("Bubble Sort: ",table.concat(Sort.Bubble(array,true)," - "))
--Output Bubble Sort:  3 - 5 - 6 - 16 - 744
print("Bubble Sort: ",table.concat(Sort.Bubble(array,false)," - "))
--Output Bubble Sort:  744 - 16 - 6 - 5 - 3 




print("Selection Sort: ",table.concat(Sort.Selection(array,true)," - "))
--Output Selection Sort:  3 - 5 - 6 - 16 - 744
print("Selection Sort: ",table.concat(Sort.Selection(array,false)," - "))
--Output Selection Sort:  744 - 16 - 6 - 5 - 3




print("Insertion Sort: ",table.concat(Sort.Insertion(array,true)," - "))
--Output Insertion Sort:  3 - 5 - 6 - 16 - 744 
print("Insertion Sort: ",table.concat(Sort.Insertion(array,false)," - "))
--Output Insertion Sort:  744 - 16 - 6 - 5 - 3




print("Quick Sort: ",table.concat(Sort.Quick(array,1,#array,true)," - "))
--Output Quick Sort:  3 - 5 - 6 - 16 - 744
print("Quick Sort: ",table.concat(Sort.Quick(array,1,#array,false)," - "))
--Output Quick Sort:  744 - 16 - 6 - 5 - 3
