# Covid19-Data-Austria

This repository contains an almost complete compilation of the CSVs related to the COVID-19 Outbreak in Austria which were provided by the Austrian Ministry of Health.
The ministry's data is updated every hour, but - for the most part - does NOT contain any old entries which means that it is overwritten every hour. This is not an acceptable format for most purposes, so this repository aims to provide a timeline of the data.

## Directory Structure

/tsv/hourly_csv contains the data which was obtained from collecting and restructuring the ministry's hourly zip-files ( https://info.gesundheitsministerium.at/data/data.zip )

tsv/website contains the data which was obtained from collecting the twice-daily updates of the ministry's website ( https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html )

dump/ contains a recently updated database dump.

## Format

A full SQL dumpfile is provided for people who have access to an SQL server. For others, there are a couple of TAB-separated TSVs hopefully satisfying most demands.

## Credits

Original data has been provided by the Austrian Ministry of Health under a CC-BY license. It was downloaded from https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html and https://info.gesundheitsministerium.at/data/data.zip
See also: https://www.data.gv.at/covid-19/

## License
This compilation is licensed under the CC-BY-SA 4.0 license.
[License Terms](LICENSE.txt)
