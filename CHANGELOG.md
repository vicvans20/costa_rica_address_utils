## [0.6.0]

* Updated the Costa Rica datasets to the *División Territorial Administrativa 2026* (IGN / Registro Nacional): 84 cantones and 494 distritos.
* Added cantones `Monteverde` (61201) and `Puerto Jiménez` (61301) on `Puntarenas`, plus the 11 districts created since the datasets were last built.
* Removed the codes they absorbed: `Río Cuarto` (20306), `Monte Verde` (60109) and `Puerto Jiménez` (60702). Codes are not renumbered.
* Fixed six district names: `San Andrés` (12002), `Bolívar` (20308), `Rodríguez` (21205), `Pejivalle` (30403), `Ángeles` (40504) and `Carrandí` (70503).

> Consumers that match addresses by name must remap before upgrading: nine locations changed identity since `0.5.0`.

## [0.5.0]

* Changed datasets form to be uncompressed for more clarity (performance shouldn't be affected)
* Fixed original Costa Rica dataset `locations_dataset.json` zip codes for some districts on `Desamparados` canton
* Updated new Costa Rica dataset `costa_rica_dataset.json` to match original dataset, there were multiple typos on the location names.
  * Apply the same fix of zip codes for `Desamparados` canton
* Added new optional param `new_dataset` on `fetch_address_from_zip` method to use the new Costa Rica dataset and prepare for the eventual migration to the new dataset.
* Added several tests to cover the whole Costa Rica dataset zip code match with the whole locations data per zip code (improve change control of the datasets)

## [0.4.0]

* Move existing logic for main module to its own module called `CostaRica`
* Create new module `Guatemala` for Guatemala address logic
* New method `for_country` to explicitly use methods for each country
* Extract method `build_address_from_provider` as a global method instead of per region to build an address from an external provider (Shopify, Brightpearl, etc)

> To avoid breaking calls of older versions, if the methods are called directly with `CostaRicaAddressUtils` it will automatically use the methods from `CostaRica` module.

## [0.3.2]

* Add missing accents from GT dataset on top level items

## [0.3.0]

* Added GT dataset and new CR dataset with new structure

## [0.1.0] - 2023-02-07

- Initial release
