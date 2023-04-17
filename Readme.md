- Conception :
> https://angel-pastor.notion.site/Conception-UML-07464bc6e0044fa2b91baa1a8639b19e

- Creation webapp
```powershell
HOTEL-ANGEL> symfony new GestionHotel --version="6.2.*" --webapp
```
- Installation du bundle
```powershell
HOTEL-ANGEL> composer require --dev symfony/maker-bundle
```

- Creation de la base de donnée:
sur phpMyAdmin on créer la table gestionhotel de interclassement : "utf8_general_ci"
****

-ajout des fixtures:
    composer require --dev orm-fixtures