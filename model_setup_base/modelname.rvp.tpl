#########################################################################                                  
:FileType          rvp ASCII Raven rev217 (v3.1)                                                                             
:WrittenBy         Rezgar Arabzadeh                                                                      
:CreationDate      June 2025
#
# RAVEN run of WSC/USGS {props[id]} ({props[name]})                                                  
#------------------------------------------------------------------------                                 
#

# - Soil classes ---------------------------------------------
:SoilClasses
  :Attributes 
  :Units      
   SOIL_PROD     
   SOIL_ROUT
   SOIL_TEMP
   SOIL_GW  
:EndSoilClasses

# ----Soil Profiles--------------------------------------------
#     name,#horizons,{soiltype,thickness}x{#horizons}
#     GR4J_X1 is thickness of first layer (SOIL_PROD)
:SoilProfiles
  DEFAULT_P,      4, SOIL_PROD   ,   par_x01, SOIL_ROUT  ,   0.300, SOIL_TEMP  ,   1.000, SOIL_GW  ,   1.000, 
:EndSoilProfiles

# ----Vegetation Classes---------------------------------------
:VegetationClasses
   :Attributes,       MAX_HT,       MAX_LAI,      MAX_LEAF_COND
        :Units,            m,          none,           mm_per_s
       VEG_ALL,           0.0,          0.0,                0.0
:EndVegetationClasses

# --Land Use Classes------------------------------------------
:LandUseClasses
  :Attributes, IMPERM, FOREST_COV
  :Units     ,   frac,       frac
       LU_ALL,    0.0,        0.0
:EndLandUseClasses

# -Global Parameters  -----------------------------------------
:GlobalParameter RAINSNOW_TEMP       0.0
:GlobalParameter RAINSNOW_DELTA      1.0
:GlobalParameter AIRSNOW_COEFF     par_x02 # [1/d] = 1.0 - CEMANEIGE_X2 = 1.0 - x6
:GlobalParameter AVG_ANNUAL_SNOW    16.9 # [mm]  =       CEMANEIGE_X1 =       x5
:GlobalParameter PRECIP_LAPSE     par_x03
:GlobalParameter ADIABATIC_LAPSE  par_x04

:SoilParameterList
 :Parameters, POROSITY ,  GR4J_X3, GR4J_X2 
 :Units     ,     none ,       mm,    mm/d     
   [DEFAULT],      1.0 ,   par_x06,  par_x05
:EndSoilParameterList

:LandUseParameterList 
 :Parameters, GR4J_X4, MELT_FACTOR 
 :Units     ,       d,      mm/d/C     
   [DEFAULT],   par_x07,        7.73
:EndLandUseParameterList
