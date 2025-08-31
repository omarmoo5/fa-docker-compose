# Front Accounting using Docker Compose
self-host [FrontAccounting](https://frontaccounting.com/) with no effort

## Quickstart
1- Clone this Repo
```bash
git clone https://github.com/omarmoo5/fa-docker-compose.git --depth 1 && cd ./fa-docker-compose
```
2- Clone FA Official Repo
```bash
git clone https://github.com/FrontAccountingERP/FA --depth 1 && sudo chown -R 33 ./FA
```
3- Create env file
```bash
cp ./.env.example ./.env && nano ./.env
```
4- Run the app
```bash
docker compose up -d
```
5- [Visit Here](http://localhost:81)
