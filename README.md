Virus Tracker
=============

**Problem**: The Health Ministry is creating a list of suspected places that is growing exponentially, and people will not be able to read and be quarantined.


**Example**:

- passengers on flight LY381 on February 21, which took off from Israel at 6:00a.m., and passengers on flight LY385 which landed in Israel on February 23 at 4:10p.m.;


- the "Hapirat Ha'adom" (red pirate) toy store in Or Yehuda, on Sunday, February 23 between 6:00-10:00p.m.; on Monday, February 24 between 8:30a.m. and midnight; and on Tuesday, February 25, between 8:30a.m. and midnight;


- at the synagogue on Noga Street in Moshav Irus, on February 24, between the hours of 6:00-7:00a.m.


Anyone who was in these locations less than two meters away from the patient for fifteen minutes or more should immediately quarantine him- or herself for fourteen days and report it via the Health Ministry's website.



**Solution**: A smartphone application sends the GPS position every 5 seconds to a server, and when every new suspected place is published, a geo-query will gather all the GPS positions that were in the suspected places, and tell them to quarantine. Queries are executed inside the telephone, to guarantee privacy.



Think about a "Waze" of the virus spreading, a collaborative mode.

* users can share their datapoint to government
* users with symtoms can press the "red" button and alert authorities
* users will receive instructions from GOV based on their risk level




## Architecture



* MOBILE: should upload geo points on the background, and have an "infected
    button"

* FUNCTIONS: receive the geo-points updated and register in bigquery



## Stack


**Mobile**
* Flutter

**Databases**

* https://tile38.com



## Existing Applications

* https://www.businessinsider.com/wuhan-coronavirus-app-where-is-how-dangerous-number-infections-2020-1#the-app-also-lets-you-look-at-a-map-of-deaths-from-the-coronavirus-4
