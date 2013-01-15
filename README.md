# Gallagher Electoral Disproportionality Data
## 121 Countries, 1945-2011
## Current version: v1

Christopher Gandrud  

Data Updated: 11 January 2013


## What is it?

This is a <strong>.csv</strong> formatted data set of the Least Squares Index of electoral disproportionality for 121 countries between 1945 and 2011. The Least Squares Index is also commonly referred to as the Gallagher Index. The data set combines Michael Gallagher's recently updated data ([here](http://www.tcd.ie/Political_Science/staff/michael_gallagher/ElSystems/Docts/ElectionIndices.pdf)) with some holes (see below) filled in with data made available by John Carey and Simon Hix ([here](http://www.dartmouth.edu/~jcarey/Data_Archive.html)).

## Why did I make this?

There is currently no complete and recently updated Gallagher Index data freely available in a format that is easy to do statistical analysis on. The data on Michael Gallagher's [website](http://www.tcd.ie/Political_Science/staff/michael_gallagher/ElSystems/Docts/ElectionIndices.pdf) has been recently updated (the one I used was from 21 February 2012). However it is only available in PDF format; not exactly the easiest format to merge into an R or Stata file. 

So, after going through the somewhat painstaking work of entering all of this data into a .csv file (and filling in some holes with Carey and Hix's data) I decided to make my efforts publicly available. Hopefully, this will free up some research time for more productive endeavours than copying and pasting data from a PDF file.

## Import into R

To import the file directly into **R** simply use the `source_GitHubData` function. To load the function use the [devtools](https://github.com/hadley/devtools) `source_url` command:

```r
# Load source_GitHubData from GitHub Gist
# The functions' gist ID is 4466237
devtools::source_gist("4466237")
```

Then use the function to download the disproportionality data:

```r
Data <- source_GitHubData(url = "http://bit.ly/Ss6zDO")
```

## More details on the Gallagher Index

The Least Squares or Gallagher Index of electoral disproportionality basically uses the standard least squares method for comparing the relationship between two samples. It compares parties' votes to the legislative seats they are given. Higher numbers on the Gallagher Index indicate that there is a greater disparity between votes and seats, i.e. elections have produced more disproportional outcomes. A Gallagher score of 0 would indicated that the election produced perfectly proportional outcomes.

For more information see: 

> Gallagher, Michael. 1991. “Proportionality, Disproportionality, and Electoral Systems.” Electoral Studies 10(1): 33–41.

> Carey, John M, and Simon Hix. 2011. “The Electoral Sweet Spot: Low-Magnitude Proportional Electoral Systems.” American Journal of Political Science 55(2): 383–397.

## Citation

If you use this data set please cite the two articles by Gallagher and Carey/Hix. It would also be great if you could cite the working paper I created the combined data set for:

> Gandrud, Christopher. 2012. Two Sword Lengths: Losers' Consent and Violence in National Legislatures. Available at SSRN: [http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2044278](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2044278).

## More details on the data.

These notes give specific details about how I combined the two data sets into the one .csv file.

Data is for national overall disproportionality. 

I did not include Northern Ireland, Scotland, Wales, Turkish Cyprus, or Palestine.

### All data is from Gallagher's PDF mentioned with the following exceptions.  
Data for these countries was taken from Hix and Carey (see their [notes](http://www.dartmouth.edu/~jcarey/Data_Archive.html) for further details):

Benin  

Dominican Republic  

Ecuador  

Guatemala before 2011  

India before 2004  

Indonesia for 1999  

Macedonia 2004  

Mauritius before 2010  

Mongolia  

Nepal  

Papua New Guinea  

Philippines  

South Korea before 2004  

Sri Lanka before 2000   

Taiwan 1998  

Thailand before 2011  

Turkey before 2003  

Ukraine before 2003  

Venezuela before 2001  


### For years when there were two elections in one country I kept the latter one. This included:

Fiji uses September election for 1977 (previous election was in September)  

France uses November election for 1946 (previous election was in June)  

Greece uses November election for 1989 (previous election was in June)  

Iceland uses October election for 1959 (previous election was in June)  

Ireland uses November Election for 1983 (previous election was in February)  

Moldova uses July elections for 2009 (previous election was in April)  

St Lucia uses April 30 for 1987 (previous election was in April 6)  

United Kingdom uses October Election for 1974 (previous election was in February)  

The United States data is for House elections. I did not included data on executive disproportionality, though Gallagher includes this in his PDF file.
 

### See [Gallagher](http://www.tcd.ie/Political_Science/staff/michael_gallagher/ElSystems/Docts/ElectionIndices.pdf) and [Carey & Hix](http://www.dartmouth.edu/~jcarey/Data_Archive.html) for further notes.

----

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Disproportionality Data</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/christophergandrud/Disproportionality_Data" property="cc:attributionName" rel="cc:attributionURL">Christopher Gandrud</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US">Creative Commons Attribution 3.0 Unported License</a>.








