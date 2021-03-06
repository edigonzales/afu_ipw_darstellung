# afu_ipw_darstellung

## Datenbank

```
docker-compose build
docker-compose down
docker-compose up
```

```
docker volume prune
```
## QGIS 2.18

```
vagrant up
ssh -X -p 2020 vagrant@127.0.0.1 qgis
```

oder mit _x2go_ (xfc4). 

- Passwort `vagrant`.
- Host-IP (für DB-Connection und Geoserver): `192.168.56.1`

## Datenimport

```
java -jar /Users/stefan/apps/ili2pg-4.4.6/ili2pg-4.4.6.jar --dbhost localhost --dbport 54321 --dbdatabase edit --dbusr admin --dbpwd admin --nameByTopic --strokeArcs --createBasketCol --createDatasetCol --disableValidation --sqlEnableNull --skipReferenceErrors  --createEnumTabs --createFk --createFkIdx --createGeomIdx --defaultSrsCode 2056 --models "SIA405_Base_Abwasser_LV95;VSADSSMINI_2020_LV95" --modeldir "https://vsa.ch/models" --dbschema afu_vsadssmini2020 --schemaimport
```

```
java -jar /Users/stefan/apps/ili2pg-4.4.6/ili2pg-4.4.6.jar --dbhost localhost --dbport 54321 --dbdatabase edit --dbusr admin --dbpwd admin --disableValidation --skipReferenceErrors  --defaultSrsCode 2056 --models SIA405_Base_Abwasser_LV95 --modeldir "https://vsa.ch/models" --dbschema afu_vsadssmini2020 --dataset organisationen --import data/bdf_organisationen.xtf
```

```
java -jar /Users/stefan/apps/ili2pg-4.4.6/ili2pg-4.4.6.jar --dbhost localhost --dbport 54321 --dbdatabase edit --dbusr admin --dbpwd admin --disableValidation --skipReferenceErrors  --defaultSrsCode 2056 --models VSADSSMINI_2020_LV95 --modeldir "https://vsa.ch/models" --dbschema afu_vsadssmini2020 --dataset birmensdorf --replace data/bdf_sew_dss-mini-20_20210212.xtf
```

java -jar /Users/stefan/apps/ili2pg-4.4.6/ili2pg-4.4.6.jar --dbhost localhost --dbport 54321 --dbdatabase edit --dbusr admin --dbpwd admin --disableValidation --skipReferenceErrors  --defaultSrsCode 2056 --models SIA405_Base_Abwasser_LV95 --modeldir "https://vsa.ch/models" --dbschema afu_vsadssmini2020 --dataset organisationen --replace data/bdf_organisationen.xtf
