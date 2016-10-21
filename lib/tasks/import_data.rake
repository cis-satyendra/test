namespace :data do
	desc "import the data file"
	task import: :environment do
		workbook = RubyXL::Parser.parse("/home/cis/outcomes.xlsx")
		workbook.worksheets.each do |worksheet|
			worksheet.each do |row|
				unless row.index_in_collection == 0
					Datum.create(grade: worksheet.sheet_name,
											topic: row.cells[0].value,
											description: row.cells[6].value,
											standard: row.cells[4].value,
											priority: row.cells[3].value)
				end
			end
		end
	end
end
