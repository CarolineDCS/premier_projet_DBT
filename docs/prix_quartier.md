# Analyse : Distribution Prix par Quartier à Amsterdam 

## Objectif métier
**Statistiques complètes des prix Airbnb** par quartier d'Amsterdam pour créé un  **boxplot** + insights des prix.

## Logique d'analyse
Dataset : [listings](../Airbnb_data/tree/main/listings.csv) (Amsterdam uniquement)

listings 
-> calcul du prix par personne possible par location
-> GROUP BY quartier
-> 14 métriques statistiques + pourcentage de logement de type 'Entire home/apt'


## Métriques calculées par quartier
| Métrique | Rôle Boxplot/Stat |
|----------|------------------|
| `avg_prix_location` | Moyenne du prix de location |
| `median_prix_location` | Médiane du prix de location (trait boxplot) |
| `Q1_prix_location` / `Q3_prix_location` | Q1 et Q3 : Boîtes boxplot |
| `ecart_inter_quartile_location` | écart interquartile : longeur de la boîte boxplot |
| `ecart_type_prix_location` | Dispersion totale |
| `min_prix_location` / `max_prix_location` | Moustaches de la boite boxplot |
| `etendue_prix_location` | Plage complète |

## Colonnes principales

* nb_location → Volume par quartier
* avg_prix_location → Prix moyen par quartier
* median_prix_location → Prix médian par quartier (plus robuste)
* Q1/Q3_prix_location/interquartile → Boxplot boîtes
* ecart_type_prix → Dispersion autour de la moyen
* pct_entire_home → % apparts complets



## Utilisation

* Dashboard : Boxplot prix par quartier quartier
* Insight : "Quel quartier a la plus forte dispersion prix ?"
* Comparaison : Prix moyen vs médian (présence ou non d'outliers ?)
