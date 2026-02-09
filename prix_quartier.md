# Analyse : Distribution Prix par Quartier Amsterdam (Boxplot)

## Objectif métier
**Statistiques complètes des prix Airbnb** par quartier pour **boxplot** + insights des prix.

## Logique d'analyse
Dataset : `curation_listings` (Amsterdam uniquement)

listings 
-> calcul prix_par_personne()
-> GROUP BY neighbourhood
-> 14 métriques statistiques + % Entire home/apt


## Métriques calculées par quartier
| Métrique | Rôle Boxplot/Stat |
|----------|------------------|
| `avg_prix_location` | Moyenne prix location |
| `median_prix_location` | Médiane (trait boxplot) |
| `Q1_prix_location` / `Q3_prix_location` | Boîtes boxplot |
| `ecart_inter_quartile_location` | longeur de la boîte boxplot |
| `ecart_type_prix_location` | Dispersion totale |
| `min_prix_location` / `max_prix_location` | Moustaches de la boite boxplot |
| `etendue_prix_location` | Plage complète |

## Colonnes principales

* nb_location → Volume quartier
* avg_prix_location → Prix moyen
* median_prix_location → Prix médian (robuste)
* Q1/Q3_prix_location/interquartile → Boxplot boîtes
* ecart_type_prix → Dispersion
* pct_entire_home → % apparts complets



## Utilisation

* Dashboard : Boxplot prix x quartier
* Insight : "Quel quartier a la plus forte dispersion prix ?"
* Comparaison : Prix moyen vs médian (outliers ?)
