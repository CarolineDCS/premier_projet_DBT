# Analyse : Prix location proposée par un Super Hôte vs Prix location proposée Non-Super Hôte

## Objectif métier
**Comparaison statistique des prix** entre Super Hôtes et hôtes normaux pour valider ou invalider l'hypothèse : **"Super Hôte propose des locations avec des prix plus élevés ?"**

## Logique d'analyse
**Dataset** : 
* [hosts airbnb](https://github.com/CarolineDCS/Airbnb_data/blob/main/hosts.csv) (Amsterdam uniquement)
*  [listings airbnb](https://github.com/CarolineDCS/Airbnb_data/blob/main/listings.csv) (Amsterdam uniquement)

Super Hôte (TRUE/FALSE)
-> INNER JOIN sur host_id entre les listings et les hotes
-> GROUP BY par type d'hote (Super Hote ou pas)
-> 8 métriques prix + pourcentage Entire home/apt 


## Métriques comparatives (super hôte/ pas super hôte)

| Métrique | Super Hôte | Non-Super Hôte |
|----------|------------|----------------|
| `nb_hote` | Total hôtes | Total hôtes |
| `nb_location` | Total listings | Total listings |
| `pct_entire_home` | % apparts complets | % apparts complets |
| `prix_median` | **Médiane prix** | Médiane prix |
| `prix_moyen` | **Moyenne prix** | Moyenne prix |
| `ecart_type_du_prix` | **Dispersion** | Dispersion |
| `prix_minimum` | Prix mini | Prix mini |
| `prix_maximum` | Prix maxi | Prix maxi |

## Hypothèses à tester

* Le prix médian d'une location proposé par un Super Höte est-il plus élevé ?
* Les Super Hôtes propose-t-il plus de locations Entire home/apt qui expliquerait une différence de prix ?
* Les prix des locations proposées par Super Hôtes sont-ils plus stables (moins d'écart-type) que ceux des locations proposées par des non Super Hôte ?

## Utilisation

* Graphiques :

  *  Bar chart : prix_moyen x type_d_hote

   * Boxplot : Distribution prix par type d'hôte
   * Insight : Stratégie tarifaire Super Hôte premium ?
