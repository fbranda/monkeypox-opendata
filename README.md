# Monkeypox

## Contents

This repository contains data extracted from the [ECDC-WHO/Europe surveillance](https://monkeypoxreport.ecdc.europa.eu/) and [Ministry of Health of Italy](https://www.salute.gov.it/portale/malattieInfettive/dettaglioSchedeMalattieInfettive.jsp?lingua=italiano&id=254&area=Malattie%20infettive&menu=indiceAZ&tab=1) bulletins starting from the 17 June 2022. 

## Repository structure
```

monkeypox-opendata/
├── ECDC-WHO/
│   ├── Clinical-description/
│   │   ├── symptoms_latest.csv
│   │   ├── timeseries_symptoms.csv
│   │
│   ├── Demographics
│   │   ├── age_sex_cases_latest.csv
│   │   ├── timeseries_age_sex_cases.csv
│   │
│   ├── Epicurves
│   │   ├── epicurve_by_country.csv
│   │   ├── epicurve_by_notification_date.csv
│   │   ├── epicurve_by_typedate.csv
│   │
│   ├── IHR-summary
│   │   ├── table_IHR_Tessy_latest.csv
│   │   ├── timeseries_table_IHR_Tessy.csv
│   │
│   ├── Microbiological-analyses
│   │   ├── microbiological_analysis_latest.csv
│   │   ├── timeseries_microbiological_analysis.csv
│   │
│   ├── Outcome-HIV_status-HCW
│   │   ├── datasummary_outcome_latest.csv
│   │   ├── timeseries_datasummary_outcome.csv
│   │
│   ├── Plots
│   │   ├── ...
│   │
│   ├── Sexual-orientation
│   │   ├── sexualorientation_latest.csv
│   │   ├── timeseries_sexualorientation.csv
│   │
│   ├── Summary-table
│   │   ├── datasummary_latest.csv
│   │   ├── timeseries_datasummary.csv
│   │
├── Italy/
│   ├── Plots/
│   │   ├── ...
│   │
│   ├── monkeypox_italy.csv
│   ├── monkeypox_region.csv
│   │
├── R/
│   ├── estimates/
│   │   ├── Austria.csv
│   │   ├── Belgium.csv
│   │   ├── ...
│   │
│   ├── plots/
│   │   ├── Serial Interval/
│   │       ├── SI_CDF.pdf
│   │       ├── SI_PDF.pdf
│   │       ├── SI_mean.pdf
│   │       ├── SI_std.pdf
│   │   ├── Austria.pdf
│   │   ├── Belgium.pdf
│   │   ├── ...
│   │
│   │   ├── Rt.R
```

## ECDC-WHO data schema

### Clinical-description: symptoms_latest.csv

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| symptoms     | String       | Description of the type of symptoms |
| cases    |  Integer       |  Weekly number of new confirmed cases   |
| percent   | Float | Distribution of symptoms among those reporting at least one type of symptom  |

### Clinical-description: timeseries_symptoms.csv

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| symptoms     | String       | Description of the type of symptoms |
| cases    |  Integer       |  Weekly number of new confirmed cases   |
| percent   | Float | Distribution of symptoms among those reporting at least one type of symptom  |

### Demographics: age_sex_cases_latest.csv

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| age     | String       | Age of cases of Monkeypox  |
| sex    |  String       |  Gender of cases of Monkeypox  |
| cases   | Integer | Weekly number of new confirmed cases  |

### Demographics: timeseries_age_sex_cases.csv

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| age     | String       | Age of cases of Monkeypox  |
| sex    |  String       |  Gender of cases of Monkeypox  |
| cases   | Integer | Weekly number of new cases  |

### Epicurves: epicurve_by_country.csv

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| Date     | String | Day of symptom onset (or earliest of day of diagnosis or notification if missing)  |
| Country     | String    | Place of notification   |
| Cases    |  String       |  Number of new cases  |

### Epicurves: epicurve_by_notification_date.csv

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| Date of Notification     | String    |  Day of notification case |
| Cases    |  Integer       |  Number of new cases  |


### Epicurves: epicurve_by_typedate.csv

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| Date      | String    |  Day of symptom onset (or earliest of day of diagnosis or notification if missing)  |
| Type of Date      | String    |  1. Onset (i.e., the date of onset of any symptoms); 2. Notification (i.e., the date when the case report is notified for the first time to the place of notification); 3. Diagnosis (i.e., the first date of clinical or laboratory diagnosis)   |
| Cases    |  Integer       |  Number of new cases  |


### IHR-summary: table_IHR_Tessy_latest.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| country     | String | Bulletin reference week |
| IHR     | Integer       | Number of cases identified through IHR and official public resources |
| TESSy    |  Integer       |  Number of cases reported through TESSy |

### IHR-summary: timeseries_table_IHR_Tessy.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| country     | String | Place of notification  |
| IHR     | Integer       | Number of cases identified through IHR and official public resources |
| TESSy    |  Integer       |  Number of cases reported through TESSy |

### Microbiological-analyses: microbiological_analysis_latest.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| specimen     | String | Specimen types with positive test result used for diagnosis of Monkeypox  |
| cases     | Integer       | Number of cases by specimen type |


### Microbiological-analyses: timeseries_microbiological_analysis.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| specimen     | String | Specimen types with positive test result used for diagnosis of Monkeypox  |
| cases     | Integer       | Number of cases by specimen type |


### Outcome-HIV_status-HCW: datasummary_outcome_latest.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| outcome     | String | Summary of outcome, HIV status of cases, and cases of Monkeypox among health workers  |
| yes/no     | Integer       | Distribution of confirmed cases by outcome |
| no     | Integer       | Distribution of unconfirmed cases by outcome |
| total     | Integer       | yes + no |


### Outcome-HIV_status-HCW: timeseries_datasummary_outcome.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| outcome     | String | Summary of outcome, HIV status of cases, and cases of Monkeypox among health workers  |
| yes/no     | Integer       | Distribution of confirmed cases by outcome |
| no     | Integer       | Distribution of unconfirmed cases by outcome |
| total     | Integer       | yes + no |


### Sexual-orientation: sexualorientation_latest.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| sexual_orientation     | String | Type of reported sexual orientations among cases of Monkeypox |
| cases     | Integer | Distribution of confirmed cases by sexual orientation  |


### Sexual-orientation: timeseries_sexualorientation.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| sexual_orientation     | String | Type of reported sexual orientations among cases of Monkeypox |
| cases     | Integer | Distribution of confirmed cases by sexual orientation  |


### Summary-table: datasummary_latest.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| country     | String | Place of notification |
| confirmed_cases     | Integer | Number of laboratory-confirmed Monkeypox infection |
| probable_cases     | Integer | Number of cases of persons with an unexplained rash on any part of their body AND one or more other symptom(s) of Monkeypox infection with symptom |
| total_cases     | Integer | confirmed_cases+probable_cases |
| total_deaths     | Integer | Confirmed deaths of Monkeypox |

### Summary-table: timeseries_datasummary.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data_bulletin     | String | Bulletin reference week |
| country     | String | Place of notification |
| confirmed_cases     | Integer | Number of laboratory-confirmed Monkeypox infection |
| probable_cases     | Integer | Number of cases of persons with an unexplained rash on any part of their body AND one or more other symptom(s) of Monkeypox infection with symptom |
| total_cases     | Integer | confirmed_cases+probable_cases |
| total_deaths     | Integer | Confirmed deaths of Monkeypox |


## Italy data schema

### monkeypox_italy.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data     | String | Bulletin reference day |
| cases     | Integer | Number of new confirmed cases |
| cumulative     | Integer | Total of confirmed cases since the first bulletin  |
| travel-related cases abroad	     | Integer | Distribution of confirmed cases by travel history  |
| median_age	| Integer | Distribution of confirmed cases by age  |
| male	| Integer | Distribution of confirmed cases by male gender  |
| female	| Integer | Distribution of confirmed cases by female gender  |


### monkeypox_region.csv
| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data     | String | Bulletin reference day |
| region     | Integer | Place of notification |
| cases     | Integer | Number of new confirmed cases |
| cumulative     | Integer | Total of confirmed cases since the first bulletin  |



## Getting the data

**Direct download (CSV)**: https://raw.githubusercontent.com/fbranda/monkeypox-opendata/main/ECDC-WHO/Epicurves/epicurve_by_country.csv

**Python** (requires `pandas`):
```python
import pandas as pd
df = pd.read_csv("https://raw.githubusercontent.com/fbranda/monkeypox-opendata/main/ECDC-WHO/Epicurves/epicurve_by_country.csv")
```

**R** (requires `httr`):
```r
library(httr)
df <- read.csv(text=content(GET("https://raw.githubusercontent.com/fbranda/monkeypox-opendata/main/ECDC-WHO/Epicurves/epicurve_by_country.csv")))
```
## Contributions
1) [Branda F, Pierini M, Mazzoli S. Monkeypox: EpiMPX surveillance system and open-data with a special focus on European
and Italian epidemic. Journal of Clinical Virology Plus 2022;p. 100114.](https://www.sciencedirect.com/science/article/pii/S2667038022000539)

2) [Bayesian framework for Monkeypox R0 early estimation in Europe](https://github.com/maxdevblock/Monkeypox_R0_Europe)

3) [Branda F, Pierini M, Mazzoli S. Monkeypox: Early Estimation of Basic Reproduction Number R0 in Europe. Journal of Medical Virology](https://onlinelibrary.wiley.com/doi/10.1002/jmv.2827)


## License and attribution

This repository and data exports are published under the CC BY 4.0 license.
