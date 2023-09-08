# OrientDB

## Avvio di OrientDB

Per avviare OrientDB, eseguire i seguenti comandi da una finestra del terminale:

```shell
cd C:/OrientDB/bin
server.bat
```

## Connessione a OrientDB Studio

Una volta che OrientDB è in esecuzione, è possibile accedere a OrientDB Studio tramite il browser all'indirizzo:

```shell
http://localhost:2480
```

## Esecuzione dei file di configurazione .json

Per eseguire i file di configurazione .json per l'importazione dei dati:

### Importazione dei dati Spotify

```shell
cd C:/OrientDB/bin
oetl.bat ./spotifyETL.json
```

### Importazione dei dati Spotify con Eventi Storici

```shell
cd C:/OrientDB/bin
oetl.bat ./eventiyearETL.json
oetl.bat ./eventiSpotifyETL.json
oetl.bat ./eventiStoriciETL.json
```