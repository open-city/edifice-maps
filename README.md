Edifice Maps
===================

Simple website showcasing maps of Chicago's built environment, made with building data from Edifice db.

We designed the maps using [TileMill](http://mapbox.com/tilemill/) for the Reinventing Chicago Hackathon,
October 6-8 2012 in Chicago.

We borrowed the [site template](http://mapbox.com/reinventgreen/) and map styles from the wonderful folks at [Mapbox.](http://mapbox.com/).

Our tilemill projects are in `maps/`: 

## Buildings areas

`building_areas/`

Every building in Chicago, colored by its footprint area.

## Building demolitions

`demolitions/`

All buildings demolished since 2006.

## Building violations

`violations/`

Every building violation issued by the City of Chicago since 2006.

## Construction Spending

`construction_spending/`

Total construction spending by census block group.

## Land use

`landuse/`

Every building colored by its landuse.
NOT COMPLETE: sql in the directory, table in psql.

## Renovations

`new_renov_permits/`

Every building with renovation since 2006, with a count of renovation and data for most recent renovation.
NOT COMPLETE: SQL is in the directory, data in postgres, no tilemill yet.

## Analysis

`analysis/`

Datasets for analysis and visualization. Currently a csv file of building counts by decade of construction, for a histogram.

## Map website

`index.html`, `site.css`, `site.js`

Simple site to showcase tilemill maps. All the mapping js is in site.js, libraries are in `javascripts/` dir.

## Edifice deck

`splash.html`, `200wacker.json`

Slides for Edifice presentation, splash page and building example.

