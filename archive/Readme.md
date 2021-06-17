# BWMosher's note

- Hi so I'm gonna just plop mine on top of the readme provided by the city
- There's a human-readable data file called `../variants/variant-epi-data-readable.csv`
	- It has the dates and percentages sequenced (from `../variants/cases-sequenced.csv`)
	- I didn't do anything else to it, data the same as the city.
- There's a folder called `../variants/visualization/` with my files in there
	- `../variants/visualization/all-weeks-plotted.p` is gnuplot code. It's free software.
	- `../variants/visualization/all-weeks-plotted.png` is the resulting image

---

# Archive/ 
This folder contains files that are no longer updated. See below for a crosswalk of old files to the same data in new locations.  

| Prior file name(s) | New file name(s) | New file location | 
|----------------------------------------------------------------|--------------------------------------------------------------------------|-------------------| 
| boro.csv | by-boro.csv | Totals/ | 
| case-hosp-death.csv | data-by-day.csv | Trends/ | 
| tests-by-zcta | data-by-modzcta.csv | Totals/ | 
| boro/boroughs-case-hosp-death.csv | data-by-day.csv | Trends/ | 
| boroughs-by-age.csv, boroughs-by-race.csv, boroughs-by-sex.csv | group-data-by-boro.csv, group-case-by-boro.csv, group-hosp-by-boro,csv, group-deaths-by-boro.csv | Totals/ | 
| deaths/probable-confirmed-dod.csv | data-by-day.csv | Totals/ | 
| sydromic_data.csv | covid-like-illness.csv | Trends/ | 
| recent-4-week-citywide.csv | Similar data available in now-summary.csv | Latest/ | 
| recent-4-week-by-modzcta.csv | Similar data available in caserate-by-modzcta.csv, testrate-by-modzcta.csv, percentpositive-by-modzcta.csv | Trends/ | 
