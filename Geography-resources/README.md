# BWMosher's note

- Hi so I'm gonna just plop mine on top of the readme provided by the city
- There's a human-readable data file called `../variants/variant-epi-data-readable.csv`
	- It has the dates and percentages sequenced (from `../variants/cases-sequenced.csv`)
	- I didn't do anything else to it, data the same as the city.
- There's a folder called `../variants/visualization/` with my files in there
	- `../variants/visualization/all-weeks-plotted.p` is gnuplot code. It's free software.
	- `../variants/visualization/all-weeks-plotted.png` is the resulting image

---

# Geo files
This folder contains additional resources for data provided by MODZCTA (modified ZIP code tabulation area) - geographic files for modified ZIP Code Tabulation Area geographies (MODZCTA). 

It can be challenging to map data that are reported by ZIP Code. A ZIP Code doesn’t actually refer to an area, but rather a collection of points that make up a mail delivery route. Furthermore, there are some buildings that have their own ZIP Code, and some non-residential areas with ZIP Codes. To deal with the challenges of ZIP Codes, the Health Department uses ZCTAs which solidify ZIP codes into units of area. Often, data reported by ZIP code are actually mapped by ZCTA. The ZCTA geography was developed by the U.S. Census Bureau. 
 
Modified ZCTA combines census blocks with smaller populations to allow more stable estimates of population size for rate calculation. 

The file ZCTA-to-MODZCTA.csv is a crosswalk showing which MODZCTA a ZIP code (or ZCTA) belongs to. 

## If you can't find your ZIP Code:
If you don't see your ZIP Code, it's probably because it's bundled into a ZCTA or a MODZCTA with others. [Look up your ZIP Code to see what MODZCTA it is in](https://nychealth.github.io/covid-maps/modzcta-geo/about.html). 
