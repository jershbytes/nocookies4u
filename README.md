<p align="center">
  <a href="" rel="noopener">
 <img width=10% height=10% src="https://github.com/coloredbytes/homepage/blob/main/images/dracula_icons/pihole.png?raw=true" alt="Project logo"></a>
</p>

<h3 align="center"> nocookies4u </h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/coloredbytes/nocookies4u.svg)](https://github.com/coloredbytes/nocookies4u/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/coloredbytes/nocookies4u.svg)](https://github.com/coloredbytes/nocookies4u/pulls) <br>
[![GitHub Forks](https://img.shields.io/github/forks/coloredbytes/nocookies4u)](https://github.com/coloredbytes/nocookies4u/fork)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> Pi-Hole & Unbound install script.
    <br>
</p>


## 🤔 Why?

I've used An ADBlocker for years and as of recently started using it as my recursive DNS as well. I thought what better way than to make a script that setups up the Unbound portion and add some extra tools I use with it.

## :gear: Instructions

- Make sure dependencies are installed.

```shell
# Ubuntu/Debian
sudo apt install git curl
```

- Clone the repo
```shell
git clone https://github.com/coloredbytes/nocookies4u.git
```

- Run the script
```shell
./install.sh
```

## What the script does.

- Installs Pi-Hole & Unbound based off [docs](https://docs.pi-hole.net/guides/dns/unbound/) here.

- Installs a white list based off this [project](https://github.com/anudeepND/whitelist.git).

## 🎉 Acknowledgements

Thanks to [omgrubberduck](https://github.com/omgrubberduck) for showing me the whitelist project.
