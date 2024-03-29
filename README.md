## FISH 6003 Major assignment

### Background:
This is the project folder for the MAJOR ASSIGNMENT in the Winter 2020 semester.

### Dataset:

These data were obtained from Murillo-Posada et al., 2019. This raw data was made available at   https://peerj.com/articles/7278/#supp-10 as part of their publication with PeerJ.  
  
This dataset contains Catch Per Unit Effort (CPUE, kg-tail / (diver x hour)) data of two species of spiny lobster, *Panurlirus gracilis* and *P. penicillatus* in the Galapagos Marine Reserve (GMR). This study was conducted to evaluate the factors that influence the catch of these spiny lobsters. As such, this dataset contains information on the port of origin of fishers, the month and year fishing occurred, sea surface temperature, the islands and region within the Reserve where fishing occurred, lat/lon coordinates, diving hours, and CPUE. The metadata is presented in a table below. These data were obtained during the study using a) semi-structured interviews with fishers at the main landing ports and data gathered; and b) data gathered from onboard observers who participated in the fishing trips.  
  
The *P. gracilis* dataset contains 3186 observations and 16 variables.  
The *P. penicillatus* dataset contains 5086 observations and 16 variables.  
These datasets were combined for the purposes of this assignment, and an extra variable was added for "species".    
  
  
### Constraints of use:  
There are no use constraints on this data.


### Research questions:  
  
Which measured variables influence CPUE of spiny lobsters in the GMR?  
  
Do these variables influence CPUE of each species differently?  
  
Is the CPUE of each species influenced by the time of day fishing occurs, and are they influenced in the same way?  
  
  
  
## R project file structure

COMMAND_FISH6003_Major  
|  
|- COMMAND_FISH6003_Major.Rproj 	
|  
|- README.pdf 	    # You're reading it.  
|  
|- data/                
|  +- DatasetS1.csv    # Raw data for *Panulirus gracilis*  
|  +- DatasetS2.csv    # Raw data for *Panulirus penicillatus*  
|  
|- part2/   
|  +- LASTNAME_MajorPart2_Fillable.rmd # Template RMarkdown file for Part 2  
|  
|- part3/   
|  +- LASTNAME_Major_Assignment_Part3_fillable.rmd # Template RMarkdown file for Part 3  
|  
|- R/                        
|  +- 6003Functions.R  # Script containing a few convenience functions  
|  
|- analysis/            
|  +- 001_DataSetup.R   # Code to produce tidy dataset  
|  +- 002_Exploration.R # Data exploration goes here  
|  +- 003_Analysis.R # Analysis code goes here  
|  
|- source_paper/  
|  +-  Murillo-Posada et al. - 2019.pdf # Paper where the data came from  
|  
  
## Metadata
This table contains descriptions of all variables present in the dataset.  

Variable            |	Definition	          |            Units / Categories |	Sources
-----------------------|-----------------------|-------------------------------|------------------
HOME_PORT	|	Port of origin of fishermen. | In Galapagos there are three main ports: Ayora, Baquerizo, Villamil 	
MONTH	    |	Fishing months: Fishing is done for four months a year: September to December. | Sep, Oct, Nov, Dec	 
YEAR			| The years considered for the study	|	2002,2003, 2004, 2005, 2006, 2007, 2008	 
SST			  | Sea Surface Temperature		| °C |	Obtained by the onboard observers and from satellite data (MODIS)  
FISHING_SCHEDULE |	Fishing is done during the night or during the day	|	Daytime or nighttime	  
DATA_SOURCE		| Fishing Monitoring System: With Observers on board and Landings	| Observers, Landing	
MACROZONE		| The islands are divided into macrozones when there are areas of different abundance and distribution |	Darwin, Española, Fernandina, Floreana, Genovesa, Isabela, Isabela Norte y Este, Isabela Oeste, Isabela Sur, Marchena, Pinta, Pinzon, Rabida, San Cristobal N y O, San Cristobal S y E, Santa Cruz, Santa Fe, Santiago, Wolf	 
ILAND		|	Islands where the fishery is carried out	| Darwin, Española, Fernandina, Floreana, 																Genovesa, Isabela, Marchena, Pinta, Pinzón, Rábida, San Cristóbal, Santa Cruz, Santa Fe, Santiago, Wolf	 
REGION		|	Fishing Region: Galapagos was divided into three large fishing areas 	| West, North, Centre-South	 
DISTANCE	|	Distance from the fishing site to the nearest Fishing Port |	Km	| Distance measured in the Google Earth,from each home port to the ground  
LAT		| 	Coordinates of latitude	| Degree |	Obtained by the onboard observers *in-situ*. Fishing ground annotated through interviews were associated to their coordinates registered for fishing observers previously.  
LON		|	Coordinates of longitude	| Degree	|  
DIVERS |	In the Galapagos Islands fishing is done with the Hooka diving modality, and the diver is the minimum sampling unit		 	| Diver  
DIVING HOURS	| 	The number of hours that divers fish for lobster	| Hours	 
CPUE		|	Observed values of a CPUE (indicator of relative abundance)	| Kg- tail / (diver x hour)	  
SPECIES | Species of spiny lobster of the genus *Panulirus* sp. captured during fishing | *gracilis*, *penicillatus*  
			  
Sources: the Galapagos National Park Serivice.			


