# DatabaseInterface
Database Interface course exercises completed in Oulu University of Applied Science

# Database Interface Course Exercises
## Exercise 1

### Kirjoita SQL-koodi, joka

1. Tulostaa kaikkien autojen tiedot. 
2. Tulostaa kaikkien autojen tiedot vuosimallin mukaan järjestettynä (vanhin ensin).
3. Tulostaa kaikki autot, joiden vuosimalli on 2020.
4. Tulostaa kaikki autot, joiden brand name sisältää merkin "i"
5. Luo tietokannasta ER-kaavio

## Exercise 2

### Kirjoita SQL kysely, joka

1. Näyttää kaikkien omistajien tiedot (owner-taulu)
2. Näyttää kaikkien omistajien etunimen ja sukunimen
3. Näyttää niiden omistajien tiedot, joiden osoite on Kotkantie 1
4. Näyttää niiden autojen tiedot, joiden vuosimalli on suurempi kuin 2017
5. Näyttää niiden autojen tiedot, joiden vuosimalli on välillä 2017-2019
6. Näyttää autojen tiedot järjestettynä vuosimallin mukaan kasvavaan järjestykseen
7. Näyttää autojen tiedot järjestettynä vuosimallin mukaan laskevaan järjestykseen
8. Näyttää niiden omistajien tiedot, joiden sukunimi alkaa "S"-kirjaimella

## Exercise 3

### Kirjoita SQL kysely, joka näyttää:
1. Kuinka monta autoa tietokannassa on
2. Kuinka monta omistajaa tietokannassa on
3. Mikä on tietokannan autojen keskimääräinen vuosimalli
4. Mikä on tietokannan autojen vähimmäis- ja enimmäisvuosimalli
5. Autojen lukumäärät merkeittäin
6. Palauttaa omistajan nimet ja heidän autonsa merkin ja mallin. Tuloksen pitäisi olla seuraavanlainen:

        idowner  firstname lastname      cars of the person

        1          Jim      Smith            Audi A4
        2	   Ann	    Smith            Audi A4
        3	   Bob	    Jones            Audi A6
        4	   Lisa	    Simpson	     BMW 530
        5	   Mary	    Wilson           BMW 320,Citroen C5
        6	   Jack	    Wilson	     BMW 320,Citroen C5
        7	   Tom	    Daniels	     Volvo V70
        8	   Ally	    Jones	     Volvo S60
        9	   Rita	    Ramon	     Kia Rio,Kia Niro
        10	   Matt	    Ramon	     Kia Rio,Kia Niro