--Jeffrey Carino
--hw4.lua

		--2. Basic Functions (20 Points)

		  --2a. Exponents (10 Points)
function pow(a,b)
    x = 0
    sum = 1
    while x < b do
    	sum = sum*a
	x = x+1
    end
    return sum
end

--print(pow(2,2))

		--2b. Array Summation (10 Points)
array = {1, 300, 3, 40, 5}
function sigma(a)
    sum = 0
    size = #a
    while size > 0 do
        sum = sum + a[size]
	size = size - 1
    end
    return sum
end

--print(sigma(array))

		--3. Advanced Functions(20 Points)

		--3a. Longest String (10 Points)
function longestString(string1, string2, string3, string4)
    size1 = #string1
    size2 = #string2
    size3 = #string3
    size4 = #string4
    
    if(size1 >= size2) and (size1 >= size3) and (size1 >= size4) then
    	return string1
    elseif(size2 >= size1) and (size2 >= size3) and (size2 >= size4) then
        return string2
    elseif(size3 >= size1) and (size3 >= size2) and (size3 >= size4) then
        return string3
    else
	return string4
    end
end

--print(longestString("oreos","tree", "treehouse", "superheros"))

		--3b. Quadratic Formula (10 Points)
function quadratic(a,b,c)
  sqr_root = math.sqrt(b * b - 4 * a * c)
  bottom = 2 * a
  return (-b + sqr_root)/bottom, (-b - sqr_root)/bottom
end

--print(quadratic(2,5,3))

		--4. Sorting the Turing Award Winners (40 Points)

		--4a. Reading in the file (10 Points)
years = {}
names = {}
colleges = {}
ARs = {}

   for l in io.lines("turing.tsv") do
      local y,n,c,a = l:match '(%C+)%c+(%C+)%c+(%C+)%c+(%C+)'
      table.insert(years,y)
      table.insert(names,n)
      table.insert(colleges,c)
      table.insert(ARs,a)
   end

		--4b. Sort the Table by Area of Research (15 Points)

   function sort(years,names,colleges,ARs)
       table.sort(ARs)
       for v = 1, #ARs, 1 do
       	   print(ARs[v])
       end
   end

   sort(years,names,colleges,ARs)