local Sort = {}
--Selection Sort
-- @t [table]
-- @type true|false (false: desc | true: asc)
function Sort.Selection(t,ty)
	if ty == nil then ty = true end
	for i,v in pairs(t) do
		local m = i;
		for j = i + 1, #t, 1 do
			if ty then
				if(t[j] < t[m]) then
					m = j
				end
			else
				if(t[j] > t[m]) then
					m = j
				end
			end
		end
		local tmp = t[i]
		t[i] = t[m]
		t[m] = tmp
	end	
	return t
end

--Insertion Sort
-- @t [table]
-- @type true|false (false: desc | true: asc)
function Sort.Insertion(t,ty)
	if ty == nil then ty = true end
	for i = 2, #t, 1 do
		local val = t[i]
		local j = i - 1
		if ty then
			while j >= 1 and t[j] > val do
				t[j + 1] = t[j]
				j = j - 1
			end
		else
			while j >= 1 and t[j] < val do
				t[j + 1] = t[j]
				j = j - 1
			end
		end
		t[j + 1] = val
	end
	return t
end

--Bubble Sort
-- @t [table]
-- @type true|false (false: desc | true: asc)
function Sort.Bubble(t,ty)
	if ty == nil then ty = true end
	local sw = false
	repeat
		sw = false
		for i = 2, #t, 1 do
			if (t[i-1] > t[i] and ty) or (t[i-1] < t[i] and ty == false) then
				local tmp = t[i]
				t[i] = t[i-1]
				t[i - 1] = tmp
				sw = true
			end
		end
	until sw == false
	return t
end

--Quick Sort
-- @t [table]
-- @left pivot
-- @right pivot
-- @type true|false (false: desc | true: asc) default: true
function Sort.Quick(t,left,right,ty)
	if ty == nil then ty = true end
	if left == nil then left = 1 end
	if right == nil then right = #t end
	if left < right then
		local pivot = Partition(t,left,right,ty)
		if pivot > 1 then
			Sort.Quick(t,left,pivot - 1,ty)
		end
		if pivot + 1 < right then
			Sort.Quick(t,pivot + 1, right,ty)
		end
	end
	return t
end

function Partition(t,left,right,ty)
	local pivot = t[left]
	while true do
		while (t[left] < pivot and ty) or (t[left] > pivot and ty == false) do
			left += 1
		end
		while (t[right] > pivot and ty) or (t[right] < pivot and ty == false) do
			right -= 1
		end
		if left < right then
			local temp = t[right]
			t[right] = t[left]
			t[left] = temp
		else
			return right
		end
	end
end
return Sort
