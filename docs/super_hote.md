# Analyse : Répartition Super Hôtes par Quartier d'Amsterdam

## Objectif métier
**Classement des quartiers** d'Amsterdam par **pourcentage de Super Hôtes** pour identifier les **zones premium**.

## Logique d'analyse
**Dataset** : 
* [hosts airbnb](https://github.com/CarolineDCS/Airbnb_data/blob/main/hosts.csv) (Amsterdam uniquement)
*  [listings airbnb](https://github.com/CarolineDCS/Airbnb_data/blob/main/listings.csv) (Amsterdam uniquement)

* Par quartier : pourcentage de Super Hôtes + rang croissant ( pourcentage de super hotes du plus petit au plus grand)

 
## détail des CTE 
| CTE | Rôle |
|-----|------|
| `caracteristiques_super_hote` |  pourcentage + rang par quartier** |
| `caracteristiques_au_niveau_de_la_ville` | pourcentage + rang sur l'ensemble des données d'Amsterdam |

## Métriques calculées

* pct_super_host = {{ pct_distribution(nb_super_host, nb_host) }}
* sales_rank = RANK() OVER (ORDER BY pct_super_host ASC)



## Résultat final (5 colonnes)
| Colonne | Signification |
|---------|---------------|
| `neighbourhood` | 'Ville entière' + quartiers Amsterdam |
| `nb_super_host` | Nombre de Super Hôtes |
| `nb_host` | Nombre total d'hôtes |
| `pct_super_host` | pourcentage de Super Hôtes |
| `sales_rank` | 1 = le moins de Super Hôtes, N = le plus de Super Hôtes |

## Utilisation

* Dashboard : "map Super Hôtes Amsterdam"
* Insight : Où se concentrent les Super Hôtes ?
