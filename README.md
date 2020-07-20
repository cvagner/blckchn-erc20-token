# BLCKCHN-ERC20-TOKEN

[Blockchain ERC-20 Token](https://github.com/cvagner/blckchn-erc20-token) - Token ERC-20 Ethereum

L'objectif de cet exemple est de montrer comment **créer des tokens ERC-20 dans Ethereum**. Ces derniers sont standardisés si bien qu'il est possible de les manipuler à travers un portefeuille tel que Metamask, un portefeuille physique ou encore un smart contract.

Pour simplifier la création du Token BlckchnToken, nous utilisons la librairie _openzeppelin-solidity_.

## Démarrage rapide

Avec sa propre blockchain Ethereum de tests / développements [Ganache](https://www.trufflesuite.com/ganache).

### Blockchain Ganache

Après avoir téléchargé le binaire [Ganache](https://www.trufflesuite.com/ganache), ici déposé dans `~/bin` :

```shell
# Nettoyage éventuel d'une ancienne configuration
rm -rf ~/.config/Ganache/
# Lancement de la blockchain (suivre les instructions)
~/bin/ganache-*-linux-x86_64.AppImage
```

### Configuration Metamask

* Configurer et choisir le réseau "development" : http://localhost:7545
* Importer le premier compte de Ganache à partir de la clé privée (cliquer sur la clé à côté du compte dans Ganache) et le sélectionner

### Déploiement des Smart Contracts

```shell
cd ~/projets/atolcd/blckchn-erc20-token/smart-contracts
truffle migrate --network development
truffle migrate --network development --reset
```

## Pour continuer : sur une blockchain publique

Exemple avec le réseau testnet [Goerli](https://goerli.etherscan.io/).

### Configuration

#### Wallet infura

[Infura](https://infura.io/) est une API qui permet d'accéder au réseau Ethereum.
Se créer un compte, un projet puis récupérer le `PROJECT ID`.

#### Fichier de configuration
Créer le fichier `smart-contracts/.env` avec le contenu suivant :
```
export METAMASK_MNEMONIC="Le mnemonic Metamask (Paramètres, Sécurité et confidentialité, Révéler les mots Seed)"
export INFURA_PROJECT_ID="Le PROJECT ID Infura"
```

### Déploiement des Smart Contracts

Exécuter les commandes suivantes :
```shell
cd ~/projets/atolcd/blckchn-erc20-token/smart-contracts
source .env
truffle migrate --network goerli
#truffle migrate --network goerli --reset
```

### Transfert de BLCK

#### Faire apparaitre ses BLCK dans son portefeuille Metamask

Dans Metamask :
* Ajouter un jeton,
* Jeton personnalisé,
* Adresse du contrat de jeton
** 0x6748846A033242bb8A4042595C326E182231A6A1 pour le réseau Goerli

L'adresse du Token BlckchnToken est indiquée lors du déploiement. On la retouve par la suite dans le fichier _build/contracts/BlckchnToken.json_ et avec la commande :
```shell
truffle networks

Network: goerli (id: 5)
  BlckchnToken: 0x6748846A033242bb8A4042595C326E182231A6A1
  Migrations: 0x696F4e63e0468725534d1a147261d0920611Eb9b
```

#### Transférer des BLCK via son portefeuille Metamask

Le transfert de BLCK est réalisé en trois opérations :
* Basculer sur les tokens BLCK (menu de gauche)
* Cliquer sur envoyer
* Renseigner l'adresse du destinataire
