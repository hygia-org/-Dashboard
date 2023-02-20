# Superset

## **Environment check**

Check if docker exists, if not then [install it](https://docs.docker.com/engine/install/ubuntu/)
`docker -v `

Check if docker-compose exists, if not then [install it](https://docs.docker.com/compose/install/)
`docker-compose -v `


## **Run metabase local**

Create networks for containers

` docker network create superset`

In the root folder, run the command, run superset application.

`make up  `

## **Attention**

By default, the connection to the database is made automatically and the panel is already assembled. After going up check the horizontal scroll bar


## **Create new dataset**

![](https://raw.githubusercontent.com/francisco1code/Files/main/gif/dataset.gif)

## **Create new chats**

![](https://raw.githubusercontent.com/francisco1code/Files/main/gif/chat.gif)


## **Create new Dashboard**

![](https://raw.githubusercontent.com/francisco1code/Files/main/gif/dashboard.gif)




