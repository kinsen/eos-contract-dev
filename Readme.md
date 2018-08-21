# README

Scaf for develop EOS contract use VSCode

## HOW TO USE?

- create project
  > $ git clone git@github.com:kinsen/eos-contract-dev.git `ProjectName`

- update `CMakeLists.txt` set **ProjectName** to your project name.
- create a dir under `contracts`

## Install shell

```bash
$ curl -o /usr/local/bin/eos-contract https://raw.githubusercontent.com/kinsen/eos-contract-dev/master/shell.sh && chmod +x /usr/local/bin/eos-contract
```

## How to gen abi?

- select the contract folder, such like `hello`.
- ⇧⌘P
- Run Task
- Generate ABI



## Refs

[HOW TO SETUP VS CODE AND CLION FOR EOS DAPP DEVELOPMENT](https://infinitexlabs.com/setup-ide-for-eos-development/)

[infiniteXLabs/default-template](https://github.com/infiniteXLabs/default-template)

[EOS 开发终极神器－vscode (你绝对找不到的干货)](https://eosfans.io/topics/323)