Stop Corona Virus
=================



How to use AI + Blockchain to stop corona virus?


Upload last phone calls from every person that was contamined, and based on the
day the first symtopms appeard, trace back for the last 12 days [the time the
virus take to incubate] all the people that maybe had a contact with the
infected person. The ideia is to create a rank for every app user, indicating
the probability that he was infected.

Instead of using massive quarantine, governments will be able to isolate people
that have a real chance to be infected.

Using neural nets to train the model, and blockchain to keep all data private,
so every smartphone creates a encrypted profile, and send the data to this smart
contract.

Geo position is also an amazing input.

Think about a "Waze" of the virus spreading, a collaborative mode.



## Inputs

Virus should spread diferently from place to place, so the training data should
come from as much as different places.

* Date and time the person was contacted
* Work address
* Home address
* Family and best friends list
* Trace back last geo position (from Apple/Google)
* Above data from all infected people, their network/contacts.



## Model

Should predict the proability of the user to be infected, and based on the
threshoud, this person should be quarantined, using ABM (agent based modeling),
we should also forecast the power of the virus dispersion.

Having the GPS track history, we can also cross over, and forecast who met who, and where, so it 
would also help to calibrate the risk model.


## Ouputs

* Probability of being infected.
* Probability of infect other people
* Network of people that he know is under high risk (so he can contact them)
* Map of the "Virus Probability Presence" in real time, so people would avoid
going to such a places


## Architecture

We upload geo-position every 3 minutes to bigquery, using flutter, and when an 
user get infected, we download his data and the related data (last 12 days from the day 
he was infected) to the tile38 db, and from there we make several geo fence queries
to determine who was in contact with him. Having the next infected people that
had contact with him will help to calibrate the algorithm that will create the
risk rank (to send messages to others)


* MOBILE: should upload geo points on the background, and have an "infected
    button"

* FUNCTIONS: receive the geo-points updated and register in bigquery



## Stack


**Mobile**
* Flutter

**Databases**

* https://tile38.com


**Blockchain**
* [geodb](https://geodb.com/en/) - to run the queries on geo data and test the
    model
* [ipfs-geo](https://github.com/daijiale/ipfs-geo/blob/master/README.md) - to
    store geo info in a decentralized db


## Existing Applications

* https://www.businessinsider.com/wuhan-coronavirus-app-where-is-how-dangerous-number-infections-2020-1#the-app-also-lets-you-look-at-a-map-of-deaths-from-the-coronavirus-4
