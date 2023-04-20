#script (lua)

clingo = require("clingo")


function setm_(l1, l2)
	l1 = tostring(l1)
	l2 = tostring(l2)

	local List1 = stringToTable(l1)
	local List2 = stringToTable(l2)

	local output = {}
	local map = {}
  
	for _, v in ipairs(List2) do
		map[v] = true
	end

	for _, v in ipairs(List1) do
		if not (map[v]) then
			table.insert(output, v)
		end
	end
	
	table.sort(output)
	output = tableToString(output)

	return tostring(output)
end

function cap_(l1, l2)
	l1 = tostring(l1)
	l2 = tostring(l2)

	local List1 = stringToTable(l1)
	local List2 = stringToTable(l2)

	local output = {}
	local map = {}
  
	for _, v in ipairs(List1) do
		map[v] = true
	end

	for _, v in ipairs(List2) do
		if map[v] then
			table.insert(output, v)
		end
	end
	
	table.sort(output)
	output = tableToString(output)

	return tostring(output)
end

function cup_(l1, l2)
	l1 = tostring(l1)
	l2 = tostring(l2)

	local List1 = stringToTable(l1)
	local List2 = stringToTable(l2)

	local output = List1
	local map = {}
  
	for _, v in ipairs(List1) do
		map[v] = true
	end

	for _, v in ipairs(List2) do
		if not map[v] then
			table.insert(output, v)
		end
	end
	
	table.sort(output)
	output = tableToString(output)

	return tostring(output)
end


function in_(e, l)
	l = tostring(l)
	e = tostring(e)
	e = string.gsub(e, " ", "")
	e = string.gsub(e, "\"", "")

	if string.find(l,e) then
		return tostring(true)
	else
		return tostring(false)
	end
end

function order(l)
	l = tostring(l)

	List = stringToTable(l)
	table.sort(List)
	output = tableToString(List)
	
	return tostring(output)
end

function insert_(e, l)
	l = tostring(l)
	e = tostring(e)
	e = string.gsub(e, " ", "")
	e = string.gsub(e, "\"", "")

	if string.find(l,e) then
		return l
	end

	List = stringToTable(l)

	table.insert(List, e)
	table.sort(List)

	output = tableToString(List)

	return tostring(output)
end

function stringToTable(str)
	str = string.gsub(str, "%(", "")
	str = string.gsub(str, "%)", "")
	str = string.gsub(str, "\"", "")
	str = string.gsub(str, " ", "")

	local substrings = {}
	for substring in string.gmatch(str, "[^,]+") do
		table.insert(substrings, substring)
	end

	return substrings
end

function tableToString(List)
	out = "("
	out = out..table.concat(List, ", ")
	out = out..")"

	return out
end


#end.