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
#' @format A simple features dataframe with 1100 rows and 25 variables:
#' \describe{
#'   \item{Province}{Names of provinces in Spain as factor}
#'   \item{CCAA}{Names of Autonomous Communities in Spain as factor}
#'   \item{ID_INE}{National Institute of Statistics unique identifier of the provinces}
#'   \item{Date}{Date}
#'   \item{Cases}{Number of COVID-19 cases reported in the province by date}
#'   \item{Incidence}{Incidence of COVID-19 cases per 100,000 population in the province by date}
#'   \item{Population}{Population in the province in 2020}
#'   \item{Older}{Percentage of population 65 and older in the provice in 2020}
#'   \item{Median_Age}{Median age of population in the province in 2020}
#'   \item{Male2Female}{Ratio of male to female population in the province in 2020}
#'   \item{Area}{Area of the province}
#'   \item{Altitude}{Altitude of the province}
#'   \item{Coast}{A dummy variable that indicates whether the province is in the coast; 1: YES}
#'   \item{Meteo_Station}{Identifier of meteorological station representative of the province used to retrieve climatic variables}
#'   \item{Max_Temp}{Maximum temperature registered by the meteorological station representative of the province in Celsius}
#'   \item{Min_Temp}{Minimum temperature registered by the meteorological station representative of the province in Celsius}
#'   \item{Mean_Temp}{Mean temperature registered by the meteorological station representative of the province in Celsius}
#'   \item{Mean_Temp_lag8}{8-day average of the mean temperature, calculated using the values between date-minus-12-days and date-minus-5-days in Celsius}
#'   \item{Mean_Temp_lag11}{11-day average of the mean temperature, calculated using the values between date-minus-12-days and date-minus-2-days in Celsius}
#'   \item{Mean_Temp_lag11w}{Wegihted 11-day average of the mean temperature, calculated using the values between date-minus-12-days and date-minus-2-days in Celsius}
#'   \item{Sunshine_Hours}{Hours of sunshine registered by the meteorological station representative of the province in hours}
#'   \item{Sunshine_Hours_lag8}{8-day average of sunshine hours, calculated using the values between date-minus-12-days and date-minus-5-days in hours}
#'   \item{Sunshine_Hours_lag11}{11-day average of sunshine hours, calculated using the values between date-minus-12-days and date-minus-2-days in hours}
#'   \item{Sunshine_Hours_lag11w}{Weighted 11-day average of sunshine hours, calculated using the values between date-minus-12-days and date-minus-2-days in hours}
#'   \item{Precipitation}{Precipitation registered by the meteorological station representative of the province}
#'   \item{Precipitation_lag8}{8-day average of the precipitation, calculated using the values between date-minus-12-days and date-minus-5-days}
#'   \item{Precipitation_lag11}{11-day average of the precipitation, calculated using the values between date-minus-12-days and date-minus-2-days}
#'   \item{Precipitation_lag11w}{Weighted 11-day average of the precipitation, calculated using the values between date-minus-12-days and date-minus-2-days}
#'   \item{Humidity}{Calculated humidity}
#'   \item{Humidity_lag8}{8-day average of the humidity, calculated using the values between date-minus-12-days and date-minus-5-days}
#'   \item{Humidity_lag11}{11-day average of the humidity, calculated using the values between date-minus-12-days and date-minus-2-days}
#'   \item{Humidity_lag11w}{Weighted 11-day average of the humidity, calculated using the values between date-minus-12-days and date-minus-2-days}
#'   \item{geometry}{geometry of the simple features object}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name covid19_spain
#' @usage data(covid19_spain)
#' @source Population and demographic data: Instituto Nacional de Estadistica http://www.ine.es/
#' @source Climatic data: Agencia Estatal de Meteorologia http://www.aemet.es/
#' @source
#'   COVID-19 data:
#'
#'   Ministerio de Sanidad, Consumo y Bienestar Social: https://www.mscbs.gob.es/profesionales/saludPublica/ccayes/alertasActual/nCov-China/situacionActual.htm y gabinete de prensa del Ministerio de Sanidad.
#'
#'   Departamento de Seguridad Nacional: https://www.dsn.gob.es/gl/current-affairs/press-room
#'
#'   Instituto de Salud Carlos III. Situación de COVID-19 en España https://covid19.isciii.es/
#'
#'   BOE: Crisis Sanitaria COVID-19 https://www.boe.es/biblioteca_juridica/codigos/codigo.php?id=355&modo=2&nota=0&tab=2
#'
#'   Ministerio de Transportes, Movilidad y Agenda Urbana https://www.mitma.gob.es/transporte-terrestre/punto-de-informacion-de-servicios-de-restauracion
#'
#'   Data collected by datadista https://github.com/datadista/datasets/tree/master/COVID%2019
#' @examples
#'  data(covid19_spain)
#'  summary(covid19_spain)
"covid19_spain"
