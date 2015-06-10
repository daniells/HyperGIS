# HyperGIS
#### [Hypertag.js](http://hypertag.io/quickstart.html) + [Leaflet.js](http://leafletjs.com/index.html) + Etc
##### Experiments and ongoing projects in Web GIS

Licenses & Hosting
------------------
This project namespace is hosted [on GitHub](https://github.com/daniells/HyperGIS) and [also on C9.io](https://ide.c9.io/somanova/hypergis) which serves the pages when its Apache instance doesn't go down.

Any code I wrote here is under a [CC ShareAlike license](http://creativecommons.org/licenses/by-sa/4.0) (unless otherwise noted) and you can reuse it.  Just leave the author comments in the top of the files.

Other libraries are under thier own licenses and you will need to read those files to see what they are.  [Hypertag.js](http://hypertag.io) is under a GPLv3 license, and it has supporting libraries under other OSS licenes.

Leaflet may not be under quite the [license](https://github.com/Leaflet/Leaflet/blob/master/LICENSE) you think it is.

Non-Apology
-----------
If you found this by accident, I'm sorry all my GIS projects aren't divided into nice clean repos for you.  I'm working on several things at once and doing things this way gives me the ability to reuse code and make improvements to core widgets without having to update several individual repos.

You're free to play with any of this.  Just don't expect it to be mature software you can use commercially with no debugging.

Available Projects
==================
These are projects in a mostly-working state.

[Hyperleaf](http://hypergis-somanova.c9.io/hyperLeaf/HyperLeaf.hyp "Hosted on C9")
--------------------------------------------------------------------------------------------------------------
Hyperleaf.hyp is a hypertag template that wraps a Leaflet map and gives it a view-based API.  

Documentation for Hyperleaf is forthcoming.  Development is always ongoing.  But it's always in a working state at this URL.

HyperLeaf is under an MIT license.

####Features
There are two classes of Hyperleaf features: dynamic and reload-based.  
Dynamic features update the map in-situ, using Leaflet's API.
Reload-based features use Hypertag's .reload() method to completely reinstantiate the map.
These two approaches give you different functionality, and let you choose between granular and refresh dynamics in your applicaiton.

##### Reload-based features
* **map_center**: set this property on the Hyperleaf invocation to a [lat,lon] and the map will center there when it loads
* **map_scale**: set this between 1-18 for the zoom level on load
* **fit_world**: if true, the map loads with the world in view
* **geojson_source**: if passed GeoJSON or an Ajax URL to geojson the map will load with those features on the map
* **use_geojson_bounds**: if true the map zooms to include all geojson features in its viewport
* **click_sets_coordinate**: if true clicking the map will set(self, clicked_coord) so other Hypertags can listen() to it and respond
* **map_markers**: passed a coord, a list of coords, or a list of objects with options, the map loads with those markers visible on the map

##### Dynamic features
* **boundsNow\(obj\)** Given an object or array this will zoom the map to the outer extent of all coordinates hiding inside it
* **collectionBoundsNow\(\)**  This will zoom the map to the extent of the bounds on the self.collection_bounds proeprty. That property is a good place to have a list of all the fitbouds objects you've accumulated.* 

##### Utility Features
* **_esri_feature_type_to_leaflet_layer_factory\[num\]\(data\)**   given the number of an ESRI shp feature type this will return the corresponding Leaflet layer type generated using data
* **convertEN2NE\(array\)**   Flip traditional lat/lon to x,y in an list of coordinates.  Converts in-place.
* **copyEN2NE\(array\)**      The same thing but returns a copy without modifying the original array.
* **centroid\(boundary\)**    Given a polyline or polygon, returns the centroid.  If the data was munged returns false.
* **findOuterBoundsInData\(obj or array)**  Given any sort of obejct or array caontaining coordinates, searches recursively and returns the outer bounds of that data.

[Latitude and Longitude Coordinate Converter](http://hypergis-somanova.c9.io/latlon/index.html "Hosted on C9")
--------------------------------------------------------------------------------------------------------------
99.99999% of GIS software only accepts decimal coordinates.  But you have coordintes in Degree-Minutes-Seconds from some historical source.  Or maybe it's degrees + decimal minutes.  

You know how to convert them, of course, but it's a pain.  You can find some online tool but they have sperate fields for each coordinate component, and you have to click click click clickclickclickclick to convert just one.  And you have twenty more to go!

This is the luxury Lat/Lon Coordinate-Convter.  Just paste and click the button.  The magic of regular expressions breaks it down and javascript converts them. A Leaflet-powered map zooms to the coordinate location to verify it's correct.  You can even click on that map for high-precision coordinates in your area-of interest.

##### Coming Soon:

* Sliding pane for a batch converter that converts a chunk of coordinates at once
* Sliding pane for a KML and GPX to GeoJson converter.
* Application refresh button that reintalizes the page without a page reload.
* Single-file omnibus version you can download and run at home.

[Escape Converter](http://hypergis-somanova.c9.io/escape/EscapeConverter.html "Hosted on C9")
--------------------------------------------------------------------------------------------------------------
Escaping a string for hardcoding messages into Javascript is irritating.  There's always a character you forgot, and debugging a large text block becomes so fraught with annoyances you start making UI design chocies around the problem, where some dynamically-loaded exposition really would have been appropriate.

With this escape converter you can just type or paste your message into the <textarea> and click **Text To String**  

In Progress
===========

GoldMap
-------
A tourist-information map for [Golden.com](http://golden.com)