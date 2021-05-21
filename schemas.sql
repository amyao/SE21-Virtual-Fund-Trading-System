-- --------------------------------------------------------

CREATE DATABASE IF NOT EXISTS db;

use db;

--
-- Table structure for table `User_Entity`
--
CREATE TABLE If Not Exists `USER_ENTITY` (
    `uuid` varchar(64) NOT NULL,
    `username` varchar(20) NOT NULL,
    `pwd` varchar(64) DEFAULT NULL,
    `payPwd` varchar(20) DEFAULT NULL,
    `questionIndex` int(20) DEFAULT NULL,
    `answer` varchar(64) DEFAULT NULL,
    primary key(uuid),
    unique key(uuid)
) ENGINE=InnoDB;

--
-- Table structure for table `Account_Entity`
--
CREATE TABLE If Not Exists `ACCOUNT_ENTITY` (
    `uuid` varchar(64) NOT NULL,
    `startingBalance` decimal(15,5) DEFAULT 10000,
    `accountBalance` decimal(15,5) DEFAULT NULL,
    `assets` decimal(15,5) DEFAULT NULL,
    `yesterdayYield` decimal(15,5) DEFAULT NULL,
    `holdingYield` decimal(15,5) DEFAULT NULL,
    `totalYield` decimal(15,5) DEFAULT NULL,
    primary key (uuid)
    ) ENGINE=InnoDB;

 
--
-- Table structure for table `Holding_Entity`
--
CREATE TABLE If Not Exists `HOLDING_ENTITY` (
    `uuid` varchar(64) NOT NULL,
    `fundId` varchar(20) NOT NULL,
    `holdingShares` decimal(15,5) DEFAULT NULL,
    `startHoldingDate` TIMESTAMP DEFAULT NULL,
    `transactionPrice` decimal(15,5) DEFAULT NULL
    ) ENGINE=InnoDB;

--
-- Table structure for table `selfListed`
--
CREATE TABLE If Not Exists `selfListed` (
    `uuid` varchar(64) NOT NULL,
    `fundId` varchar(20) NOT NULL,
    unique index(`uuid`, `fundId`)
    ) ENGINE=InnoDB;

--
-- Table structure for table `yieldHistory`
--
CREATE TABLE If Not Exists `yieldHistory` (
    `uuid` varchar(64) NOT NULL,
    `fundId` varchar(20) NOT NULL,
    `yieldRecord` decimal(15,5) DEFAULT NULL,
    `date` TIMESTAMP DEFAULT NULL,
    unique index(`uuid` ,`fundId`,`date`)
    ) ENGINE=InnoDB;

--
-- Table structure for table `TRADE_ENTITY`
--
CREATE TABLE If Not Exists `TRADE_ENTITY` (
   `uuid` varchar(64) NOT NULL,
   `orderId` varchar(64) NOT NULL,
   `fundId` varchar(20) DEFAULT NULL,
   `tradeType` int(10) DEFAULT NULL COMMENT '0-buy; 1-sell',
   `tradeShares` decimal(15,5) DEFAULT NULL,
   `tradePrice` decimal(15,5) DEFAULT NULL,
   `orderDate` TIMESTAMP DEFAULT NULL,
   `tradeDate` TIMESTAMP DEFAULT NULL,
    primary key (orderID)
) ENGINE=InnoDB;

--
-- Table structure for table `ORDER_ENTITY`
--
CREATE TABLE If Not Exists `ORDER_ENTITY` (
    `uuid` varchar(64) NOT NULL,
    `orderId` varchar(64) NOT NULL,
    `fundId` varchar(20) DEFAULT NULL,
    `orderType` int(10) DEFAULT NULL,
    `sellingShares` decimal(15,5) DEFAULT NULL,
    `buyingAmount` decimal(15,5) DEFAULT NULL,
    `orderDate` TIMESTAMP DEFAULT NULL,
    `orderStatus` varchar(20) DEFAULT NULL,
    primary key (orderID)
    ) ENGINE=InnoDB;
    
    
