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

## License and attribution

This repository and data exports are published under the CC BY 4.0 license.
