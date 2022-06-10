'''Scripts to import archive data into the database'''
from data.archive.import_2009 import import_2009_data
import scripts as dc

year = 2009
import_2009_data()

# create bar charts
dc.year_chart(year, max_round=1, save=True)
dc.year_chart(year, max_round=2, save=True)
dc.year_chart(year, max_round=3, save=True)
dc.year_chart(year, max_round='Champions', save=True)

# create latex files
for playoff_round in range(1, 5):
    dc.make_latex_file(year, playoff_round)
