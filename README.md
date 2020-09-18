# Covid19-Data-Austria

This repository contains an almost complete compilation of the CSVs related to the COVID-19 Outbreak in Austria which were provided by the Austrian Ministry of Health.
The ministry's data is updated every hour, but - for the most part - does NOT contain any old entries which means that it is overwritten every hour. This is not an acceptable format for most purposes, so this repository aims to provide a timeline of the data.

For checking the data's integrity, please refer to the originals' backups at archive.org ( https://web.archive.org/web/*/https://info.gesundheitsministerium.at/data/data.zip and https://web.archive.org/web/*/https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html )

## Directory Structure

/tsv/hourly_csv contains the data which was obtained from collecting and restructuring the ministry's hourly zip-files ( https://info.gesundheitsministerium.at/data/data.zip )

/tsv/website contains the data which was obtained from collecting the twice-daily updates of the ministry's website ( https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html )

/tsv/ampel contains data relating to the 'Corona-Ampel'.

/dump contains a recently updated database dump.

/queries contains the SQL queries used for generating the tsv files.

## Format

A full SQL dumpfile is provided for people who have access to an SQL server. For others, there are a couple of TAB-separated TSVs hopefully satisfying most demands. The TSVs are compatible with Libreoffice Calc/Excel and similar spreadsheet programs.

## Updates

The TSVs are going to be updated on a daily basis. The dumpfile is probably updated about once a week.

## Credits

Original data has been provided by the Austrian Ministry of Health under a [CC-BY license](https://creativecommons.org/licenses/by/4.0/deed). It was downloaded from [the ministry's website](https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html) and [the ministry's dashboard](https://info.gesundheitsministerium.at/data/data.zip)
See also: [Open Data](https://www.data.gv.at/covid-19/)

Some of the older data from the ministry's website may be based on contributions to the [Wikipedia article]( https://de.wikipedia.org/wiki/COVID-19-Pandemie_in_%C3%96sterreich).

Data for the  'Corona-Ampel' comes from [Corona-Ampel][https://corona-ampel.gv.at/datendownload/] (CC-BY 4.0) Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz (BMSGPK)

The data for the municipalities comes from [Statistik Austria open.data][https://data.statistik.gv.at/] (CC-BY 4.0). It has been slightly adapted (mainly Vienna's entries).

## License
This compilation is licensed under the CC-BY-SA 4.0 license.
[License Terms](LICENSE.txt)

## Contribute
If you find any error in the data or the queries, please contact me.
