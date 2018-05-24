# truffle-docker

## Why?

We don't like to have tools on our computer and we need to reviews externals
smart-contracts. This project allow us to run a dedicated truffle/ganache environment.

## Installation

It's super simple if you already have a docker environment. If you don't have docker
on your computer [install this wonderful tool](https://store.docker.com/search?type=edition&offering=community).

Then you need to clone or download the project.

```bash
git clone https://github.com/lepetitbloc/truffle-docker.git my-project
cd my-project
# Remove the git repository metadata
rm -rf .git/
# Start a brand new repository
git init
git add .
```

## Usage

We don't like to use many tools so Makefile is your friend, run "make"

```bash
Project                     
-------                     
                             
install                        Install and start the project
reset                          Stop and start a fresh install of the project
start                          Start the project
stop                           Stop the project
compile                        Truffle compilation
migrate                        Truffle migration
console                        Run the interactive truffle console

```

If you already have a truffle project, copy your files to `./truffle`. If you don't have
anything, do nothing.

Then run `make install`.

## Todo

It could be nice to update this project with theses features:

- Add environment vars in `docker-compose` and specify a default truffle box
- Rename the default `truffle` directory for a better one.

## Donation

If you have not already understand, we love cryptocurrencies. It's possible to make a donation
for this work at the following addresses:

| Currency         | Address                                    |
| ---------------- | ------------------------------------------ |
| Bitcoin          | 14VRBrDZ47HR1pWjmAnyC5CJCXDkhLeANb         |
| Ethereum         | 0x1accf4c2bd6010100a2aeac36f336fb963a1716a |
| Ethereum Classic | 0x3b33bdcc70f06dad7068594a0cd8fbfd7b203aae |
| Litecoin         | LdH6Sbq5M9p6dqG7GaRvBjoCqJ2CHnz9wr         |
| Dash             | XuPyN4Ns12qaMKzUjffzeKrCjCL4XYwUCY         |
| ZCash            | t1U2e4TV6zmg6gXAByBp59NtBP2HsEvY5T5        |
| Doge             | DKbojeYrguCL2Suh9ujmU49m4QK9DixBXL         |

## Code of conduct

See the [CODE OF CONDUCT](CODE_OF_CONDUCT.md) file.

## Contributing

See the [CONTRIBUTING](CONTRIBUTING.md) file.

## License

truffle-docker is under the [MIT License](LICENSE.md).

## Support

See the [SUPPORT](SUPPORT.md) file.

## Credits

- README, CONTRIBUTING and LICENSE are heavily inspired by [project-template](https://github.com/mnapoli/project-template)
- Issue and Pull Request templates comes from [Open-Source Templates](https://www.talater.com/open-source-templates/#/)
- CODE_OF_CONDUCT come from [Contributor Covenant](https://www.contributor-covenant.org)
