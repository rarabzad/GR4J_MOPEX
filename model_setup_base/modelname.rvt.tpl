#########################################################################                                  
:FileType          rvt ASCII Raven rev217 (v3.1)                                                                             
:WrittenBy         Rezgar Arabzadeh                                                                      
:CreationDate      June 2025
#
# RAVEN run of WSC/USGS {props[id]} ({props[name]})
#------------------------------------------------------------------------

# meteorological forcings
:Gauge
  :Latitude   {props[lat_deg]}
  :Longitude  {props[lon_deg]}
  :Elevation  {props[elevation_m]}
  :RedirectToFile data_obs/{props[id]}_meteo_daily.rvt
:EndGauge

# observed streamflow
:RedirectToFile data_obs/{props[id]}_Qobs_daily.rvt

# observation weights
:RedirectToFile data_obs/General-ObsWeights_Qdaily.rvt
