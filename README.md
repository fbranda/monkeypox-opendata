# Monkeypox

## Contents

This repository contains data extracted from the [ECDC-WHO/Europe surveillance bulletin](https://monkeypoxreport.ecdc.europa.eu/) and [Ministry of Health of Italy](https://www.salute.gov.it/portale/malattieInfettive/dettaglioSchedeMalattieInfettive.jsp?lingua=italiano&id=254&area=Malattie%20infettive&menu=indiceAZ&tab=1) bulletins starting from the 17 June 2022. 

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
