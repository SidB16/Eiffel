note
	description: "sort18OOP application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ES_SUITE

create
	make

feature {NONE} -- Initialization

	make
		do
			print ("Hello Eiffel World!%N")
			add_test (create {TESTS_SORT}.make)
			show_browser
			run_espec
		end

end
