# SE21-Virtual-Fund-Trading-System
> This is a virtual fund trading system where you can practice trading skills with virtual money. Real data is used in our system. Have fun with it. 

## Resource Code Repositories
> front-end: https://github.com/amyao/vfts-front-vue-master
> back-end: (wait to be updated)

## A Demo of run through VFTS
> Demo Link: https://drive.google.com/file/d/1B-FMyru1hPhyUMU6oh5_CJ6AXMu3IBBn/view?usp=sharing

## Setups
> Please follow the instructions to set up your system. Make sure that you establish a database and a server before starting the system.

``` bash

## Setup of the database:

Our program is based on a local server so you need to set up a database before running the program. 
Our database has the following settings, please strictly follow the properties for a smooth installation:
	schema file: schema.sql under the root directory.
	host: localhost (or 127.0.0.1)
	portal: 3306
	username: axl
	password: 123456	
You may use other settings as an alternative (not recommended), 
but please make sure that you change the properties at application.properties under the assembly directory 
and all the mybatis-config.xml files located at the two directories: 
java.com.vtfs.trade and src.test.resources of each of the two modules (trade-service and order-service). 
	
## Setup of the server:

Run the main function at assembly/src/main/java.com/vtfsApplication.java to start the server. 
Please note that our program uses JDK of version 15.0.2. 
If you are using IntelliJ IDEA, you can download the package in the Project Structure section. 
Simply click on the SDKs on the left-handed side and click on the ＋ sign on the left corner, 
and you can follow the instructions to download the package.
If you are using the JDK package of other versions, 
you may need to (not recommended) change all the properties coded in the following six pop.xml files：
trade-api, trade-rest, trade-service, user-api, user-rest, user-service, respectively.
Note that the scheduled command is coded under in ScheduledTask.java under directory
trade-service/src/main/java/com.vtfs.trade/service. The line 
@Scheduled(cron = "10 58 12 * * ?")
ensures that all the tasks run at scheduled time (12:58:10) every day. 
At this time, all the orders will be transformed to trades, with your yield calculated and updated. 
We use this setting for simulating a real trade case, but you can change the parameters as you wish for fun. 
Parameters are of the type ss,mm,hh,dd,MM. 

For detailed instructions, please refer to the article:
https://support.huaweicloud.com/roma_faq/fdi-faq-190626001.html 


## Setup of the front end:

See the README.md in front-end repository: https://github.com/amyao/vfts-front-vue-master

```

## More Information

``` bash

## Transaction Rules:

A user can place an order to buy or sell a fund, 
but it takes some time for the order to convert into a trade.
A user can withdraw the order within the time period. 

For example, when you place an order to buy a fund, you will immediately see your order record,
but you may need to wait for a while before you can find the fund in your holding list. 
For more details, please refer to the Q&A section of our website 
and the detailed instructions when you request to buy or sell a fund. 

## Contributors:

This is a group project for Software Engineering 2021 in NYU Shanghai, by Amy, Axl, Sunny and Zixiao.

```
