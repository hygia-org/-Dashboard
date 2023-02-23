# Superset

## **Environment check**

Check if docker exists, if not then [install it](https://docs.docker.com/engine/install/ubuntu/)
`docker -v `

Check if docker-compose exists, if not then [install it](https://docs.docker.com/compose/install/)
`docker-compose -v `


## 1.1 **Run metabase local**

Create networks for containers

` docker network create superset`

In the root folder, run the command, run superset application.

`make up  `


## 1.2 **Load database**

**Data exemple**  

we can load the data in 2 ways, with example data or your data

**Load sample database**

`restore-example`

**My Data**

`make restore file_path  nrows`

help using command

`make restore-help`

Example

`make restore file_path=./data/yours_data.csv nrows=100`


## **Attention**

By default, the connection to the database is made automatically and the panel is already assembled. After going up check the horizontal scroll bar


## **Create new dataset**

![](https://raw.githubusercontent.com/francisco1code/Files/main/gif/dataset.gif)

## **Create new chats**

![](https://raw.githubusercontent.com/francisco1code/Files/main/gif/chat.gif)


## **Create new Dashboard**

![](https://raw.githubusercontent.com/francisco1code/Files/main/gif/dashboard.gif)




