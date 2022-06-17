USE `microservice_demo`;
INSERT INTO `roles` (`Sid`, `RoleName`) VALUES
	("dc9393b3-3dde-4546-8639-1cfd2048ff53", "director"),
	("4c3aa563-a417-4e31-b6ea-ccbca4ddc069", "instructor"),
	("b12b92ce-1105-48ff-b5bc-3ec6f7984737", "student"),
	("22e7abd2-249f-41fd-9a89-dd6d2e7ef5a4", "alum");
INSERT INTO `people` (`Sid`, `Name`, `RoleSid`) VALUES
	("e2711d8b-bf7a-4a26-bb76-2b56745e6337", "Helena", "dc9393b3-3dde-4546-8639-1cfd2048ff53"),
	("26f37d4e-04e0-4751-911a-cf63e1d32985", "Neil", "4c3aa563-a417-4e31-b6ea-ccbca4ddc069"),
	("8e81d963-6555-42af-8ee7-6856f0fc390a", "Faraz", "4c3aa563-a417-4e31-b6ea-ccbca4ddc069"),
	("045a6419-a24b-47d3-bc2d-a6999ef4ef84", "Bob", "b12b92ce-1105-48ff-b5bc-3ec6f7984737"),
	("3c1ff577-c797-4a9b-bd27-dd5292532367", "Joe", "b12b92ce-1105-48ff-b5bc-3ec6f7984737"),
	("5caabd5f-8018-4255-a52b-1f63674ed7db", "Sam", "b12b92ce-1105-48ff-b5bc-3ec6f7984737"),
	("9246a4dc-ec6b-42c1-9380-a2c1f48c1173", "Aman", "b12b92ce-1105-48ff-b5bc-3ec6f7984737");
