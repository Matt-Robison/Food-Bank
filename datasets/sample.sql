BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0010w00000AaKy8AAF','Matt Testing','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"FoodExpirationDate__c" VARCHAR(255), 
	"FoodStorage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a000w000001t4xsAAA','Item 1','2020-05-28','Frozen','a010w000002NLsrAAG');
INSERT INTO "Delivery_Item__c" VALUES('a000w000001t4xxAAA','Yea 2','2020-05-28','Refrigerated','a010w000002NLsrAAG');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"ScheduledDate__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a010w000002NLsrAAG','2020-05-12T02:00:00.000Z','Scheduled','0010w00000AaKy8AAF');
COMMIT;
