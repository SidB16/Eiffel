note
	description: "sort18 application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			array:ARRAY[INTEGER]
		do
			array := <<8, 1,6, 10, 3, 0, 14, 5, 6 ,3, 1, 2, 3, 4,6, 7, 2>>
			insertionSort(array)
			print(array)
		end
feature 	--Sorting alogs

	insertionSort(data:ARRAY[INTEGER]) --void i.e. this procedure is a command- it does not return anything.
	local
		n, i, j, currentE, buffer:INTEGER
		do
			--Stragtegy: walk up and compare down.
			n := data.count
			from
				i:=2
			until
				i > n
			loop
				currente:= data.at (i)
					j:=i
				from

				until
					j = 1 or data.at (j) > data.at (j-1)
				loop
				--Approach 1:
				--Note: This approach yeilds logically incorrect functionally.
				--Eventhough syntatically its corrects and complis w/o errors.

					--data[j] = data[j-1]
					--j := j-1

				--Why?
				--Strictly my opinion based off intuition, Eiffel is old.
				--Thus, to it data[j] = data[j-1] does not have the same meaning as in Java.
				--Think about it...

				--Approach 2:
					buffer:= data.at (j)
					data.put (data.at (j-1), j)
					data.put (buffer, j-1)
					j := j-1


				end
				data.put (currentE, j)
				i:=i +1
			end

		end

end
