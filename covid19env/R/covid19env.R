#' covid19env: A package with datasets for analysis of environmental correlates of COVID-19.
#'
#' This package includes datasets used for the analysis
#' of the environmental correlates of COVID-19 with their
#' respective documentation.
#'
#' @docType package
#' @name covid19env
#' @author Fernando A. Lopez, Antonio Paez, School of Geography and Earth Sciences, McMaster University \email{paezha@@mcmaster.ca}
#' @references \url{https://github.com/paezha/Reproducible-Research-Workflow}
NULL

#' COVID-19 Data for Spain.
#'
#' A dataset containing COVID-19 information for Spain, including
#' environmental correlates and some control variables.
#'
#' @format A simple features dataframe with 1150 rows and 25 variables:
#' \describe{
#'   \item{Province}{Names of provinces in Spain as factor}
#'   \item{CCAA}{Names of Autonomous Communities in Spain as factor}
#'   \item{ID_INE}{National Institute of Statistics unique identifier of the provinces}
#'   \item{Date}{Date}
#'   \item{Cases}{Number of COVID-19 cases reported in the province by date}
#'   \item{Incidence}{Incidence of COVID-19 cases per 100,000 population in the province by date}
#'   \item{Older}{Percentage of population 65 and older in the provice in 2020}
#'   \item{Median_Age}{Median age of population in the province in 2020}
#'   \item{Male2Female}{Ratio of male to female population in the province in 2020}
#'   \item{Area}{Area of the province}
#'   \item{Altitude}{Altitude of the province}
#'   \item{Coast}{A dummy variable that indicates whether the province is in the coast; 1: YES}
#'   \item{Meteo_Station}{Identifier of meteorological station representative of the province used to retrieve climatic variables}
#'   \item{Max_Temp}{Maximum temperature registered by the meteorological station representative of the province}
#'   \item{Min_Temp}{Minimum temperature registered by the meteorological station representative of the province}
#'   \item{Mean_Temp}{Mean temperature registered by the meteorological station representative of the province}
#'   \item{Mean_Temp_lag}{8-day average of the mean temperature, calculated using the values between date-minus-12-days and date-minus-5-days}
#'   \item{Sunshine_Hours}{Hours of sunshine registered by the meteorological station representative of the province}
#'   \item{Sunshine_Hours_lag}{8-day average of sunshine hours, calculated using the values between date-minus-12-days and date-minus-5-days}
#'   \item{Precipitation}{Precipitation registered by the meteorological station representative of the province}
#'   \item{Precipitation_lag}{8-day average of the precipitation, calculated using the values between date-minus-12-days and date-minus-5-days}
#'   \item{Humidity}{Calculated humidity}
#'   \item{Humidity_lag}{8-day average of the humidity, calculated using the values between date-minus-12-days and date-minus-5-days}
#'   \item{geometry}{geometry of the simple features object}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name covid19_spain
#' @usage data(covid19_spain)
#' @source Energy Consumption Data Source: CIA Factbook, Refined Oil Products Consumption (https://www.cia.gov/library/publications/the-world-factbook/rankorder/2246rank.html) Accessed: September 5, 2017
#' @source CO2 Emissions Data Source: EC Emissions Database for Global Atmospheric Research (http://edgar.jrc.ec.europa.eu/overview.php?v=CO2ts1990-2015) Accessed: September 5, 2017
#' @source GDP Data Source: Wikipedia (https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)_per_capita) Accessed: September 5, 2017
#' @examples
#'  data(covid19_spain)
#'  summary(covid19_spain)
"covid19_spain"
