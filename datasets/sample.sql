BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(2,'Countdown Newlands','');
INSERT INTO "Account" VALUES(3,'New World Thorndon','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2039-04-01','Non-refrigerated','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2022-04-18','Refrigerated','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2022-04-21','Non-refrigerated','5');
INSERT INTO "Delivery_Item__c" VALUES(4,'2023-04-20','Frozen','1');
INSERT INTO "Delivery_Item__c" VALUES(5,'2022-04-14','Non-refrigerated','3');
INSERT INTO "Delivery_Item__c" VALUES(6,'2022-04-15','Non-refrigerated','3');
INSERT INTO "Delivery_Item__c" VALUES(7,'2022-04-21','Non-refrigerated','4');
INSERT INTO "Delivery_Item__c" VALUES(8,'2022-04-23','Refrigerated','2');
INSERT INTO "Delivery_Item__c" VALUES(9,'2022-04-22','Refrigerated','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2022-04-15T05:30:00.000+0000','Scheduled','3');
INSERT INTO "Delivery__c" VALUES(2,'2022-04-18T02:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(3,'2022-04-16T02:00:00.000+0000','Requested','2');
INSERT INTO "Delivery__c" VALUES(4,'2022-04-13T02:00:00.000+0000','Completed','2');
INSERT INTO "Delivery__c" VALUES(5,'2022-04-12T02:00:00.000+0000','Canceled','3');
COMMIT;
