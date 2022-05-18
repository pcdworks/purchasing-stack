



# Purchasing

<img src="./purchasing.png" style="zoom: 100%;" />

## Setup

```bash
# create the volumes
./scripts/mkvolumes.sh
# generate variables
./scripts/mkenvironment.sh
# setup the containers
./scripts/setup.sh
```



## Configuration

### Initial

```bash
# run the migrations
./scripts/migrate.sh
```

### Proxy

* Scheme `http`
* Forward Hostname / IP `purchasing`
* Forward Port `3000`

### IPA Setup

```bash
# create binddn record
./script/mkbinddn.sh
# Add binddn to IPA instance
./script/installbinddn.sh
# Add groups to IPA instance
./script/installgroups.sh

```



## Scripts

### installbinddn.sh

Install the binddn record into the FreeIPA instance

### mkbinddn.sh

Creates a binddn record for FreeIPA

### installgroups.sh

Install FreeIPA groups

### migrate.sh

Migrate the database

### mkvolumes.sh

Creates volumes used for storage by the container

### mkenvironment.sh

Creates environment variables for use by the containers, don't run this script more than once otherwise it'll overwrite the variables.env file

### setup.sh

Creates the containers, volumes, and networks in the stack

### update.sh

Pull the latest container images for the stack

### upgrade.sh

Pull the latest container images for the stack and then set the stack down and bring it back up with the new images

### setdown.sh

Removes all containers and networks in the stack, but leaves the volumes intact.

