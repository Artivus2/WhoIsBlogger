CREATE TABLE IF NOT EXISTS public."Items"
(
    itemid bigint NOT NULL,
    price numeric NOT NULL,
    CONSTRAINT "Items_pkey" PRIMARY KEY (itemid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Items"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public."Users"
(
    userid bigint NOT NULL,
    age integer NOT NULL,
    CONSTRAINT "Users_pkey" PRIMARY KEY (userid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Users"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public."Purchases"
(
    purchaseid bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    userid integer NOT NULL,
    itemid integer NOT NULL,
    date timestamp without time zone NOT NULL,
    CONSTRAINT "Purchases_pkey" PRIMARY KEY (purchaseid),
    CONSTRAINT purchases_items FOREIGN KEY (itemid)
        REFERENCES public."Items" (itemid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT purchases_users FOREIGN KEY (userid)
        REFERENCES public."Users" (userid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Purchases"
    OWNER to postgres;

insert into public."Items" (itemid, price) values (1, 3583.4);
insert into public."Items" (itemid, price) values (2, 1246.47);
insert into public."Items" (itemid, price) values (3, 5931.6);
insert into public."Items" (itemid, price) values (4, 5089.76);
insert into public."Items" (itemid, price) values (5, 2589.5);
insert into public."Items" (itemid, price) values (6, 8661.6);
insert into public."Items" (itemid, price) values (7, 5047.34);
insert into public."Items" (itemid, price) values (8, 8894.69);
insert into public."Items" (itemid, price) values (9, 5126.47);
insert into public."Items" (itemid, price) values (10, 9363.04);
insert into public."Items" (itemid, price) values (11, 6821.19);
insert into public."Items" (itemid, price) values (12, 4593.31);
insert into public."Items" (itemid, price) values (13, 5400.74);
insert into public."Items" (itemid, price) values (14, 9105.87);
insert into public."Items" (itemid, price) values (15, 2748.38);
insert into public."Items" (itemid, price) values (16, 2211.72);
insert into public."Items" (itemid, price) values (17, 9074.47);
insert into public."Items" (itemid, price) values (18, 1119.8);
insert into public."Items" (itemid, price) values (19, 9269.36);
insert into public."Items" (itemid, price) values (20, 8758.46);
insert into public."Items" (itemid, price) values (21, 1956.36);
insert into public."Items" (itemid, price) values (22, 9480.61);
insert into public."Items" (itemid, price) values (23, 9799.49);
insert into public."Items" (itemid, price) values (24, 9776.19);
insert into public."Items" (itemid, price) values (25, 2505.35);
insert into public."Items" (itemid, price) values (26, 2375.67);
insert into public."Items" (itemid, price) values (27, 5609.16);
insert into public."Items" (itemid, price) values (28, 4513.32);
insert into public."Items" (itemid, price) values (29, 5258.2);
insert into public."Items" (itemid, price) values (30, 2624.79);
insert into public."Items" (itemid, price) values (31, 8871.61);
insert into public."Items" (itemid, price) values (32, 8951.81);
insert into public."Items" (itemid, price) values (33, 9410.69);
insert into public."Items" (itemid, price) values (34, 8353.89);
insert into public."Items" (itemid, price) values (35, 371.73);
insert into public."Items" (itemid, price) values (36, 8989.98);
insert into public."Items" (itemid, price) values (37, 7668.78);
insert into public."Items" (itemid, price) values (38, 3815.43);
insert into public."Items" (itemid, price) values (39, 2927.42);
insert into public."Items" (itemid, price) values (40, 491.41);
insert into public."Items" (itemid, price) values (41, 2439.51);
insert into public."Items" (itemid, price) values (42, 4207.87);
insert into public."Items" (itemid, price) values (43, 7681.99);
insert into public."Items" (itemid, price) values (44, 3616.9);
insert into public."Items" (itemid, price) values (45, 3828.61);
insert into public."Items" (itemid, price) values (46, 2414.71);
insert into public."Items" (itemid, price) values (47, 6491.55);
insert into public."Items" (itemid, price) values (48, 4466.88);
insert into public."Items" (itemid, price) values (49, 1152.47);
insert into public."Items" (itemid, price) values (50, 1429.52);
insert into public."Items" (itemid, price) values (51, 1891.52);
insert into public."Items" (itemid, price) values (52, 3761.88);
insert into public."Items" (itemid, price) values (53, 1609.93);
insert into public."Items" (itemid, price) values (54, 5406.58);
insert into public."Items" (itemid, price) values (55, 6253.2);
insert into public."Items" (itemid, price) values (56, 1104.66);
insert into public."Items" (itemid, price) values (57, 4293.17);
insert into public."Items" (itemid, price) values (58, 7825.03);
insert into public."Items" (itemid, price) values (59, 590.55);
insert into public."Items" (itemid, price) values (60, 1499.72);
insert into public."Items" (itemid, price) values (61, 8494.42);
insert into public."Items" (itemid, price) values (62, 871.88);
insert into public."Items" (itemid, price) values (63, 5390.99);
insert into public."Items" (itemid, price) values (64, 6997.39);
insert into public."Items" (itemid, price) values (65, 5902.38);
insert into public."Items" (itemid, price) values (66, 9587.0);
insert into public."Items" (itemid, price) values (67, 2754.88);
insert into public."Items" (itemid, price) values (68, 3222.87);
insert into public."Items" (itemid, price) values (69, 3648.73);
insert into public."Items" (itemid, price) values (70, 6805.38);
insert into public."Items" (itemid, price) values (71, 5808.55);
insert into public."Items" (itemid, price) values (72, 5058.78);
insert into public."Items" (itemid, price) values (73, 8332.43);
insert into public."Items" (itemid, price) values (74, 7221.37);
insert into public."Items" (itemid, price) values (75, 4937.44);
insert into public."Items" (itemid, price) values (76, 5269.34);
insert into public."Items" (itemid, price) values (77, 1517.81);
insert into public."Items" (itemid, price) values (78, 6684.32);
insert into public."Items" (itemid, price) values (79, 6057.71);
insert into public."Items" (itemid, price) values (80, 7700.52);
insert into public."Items" (itemid, price) values (81, 7695.19);
insert into public."Items" (itemid, price) values (82, 1319.17);
insert into public."Items" (itemid, price) values (83, 5350.24);
insert into public."Items" (itemid, price) values (84, 7240.71);
insert into public."Items" (itemid, price) values (85, 3134.56);
insert into public."Items" (itemid, price) values (86, 5573.95);
insert into public."Items" (itemid, price) values (87, 8594.15);
insert into public."Items" (itemid, price) values (88, 258.07);
insert into public."Items" (itemid, price) values (89, 1537.38);
insert into public."Items" (itemid, price) values (90, 3130.75);
insert into public."Items" (itemid, price) values (91, 8132.56);
insert into public."Items" (itemid, price) values (92, 8355.88);
insert into public."Items" (itemid, price) values (93, 1816.84);
insert into public."Items" (itemid, price) values (94, 8189.03);
insert into public."Items" (itemid, price) values (95, 6154.07);
insert into public."Items" (itemid, price) values (96, 5906.58);
insert into public."Items" (itemid, price) values (97, 4337.85);
insert into public."Items" (itemid, price) values (98, 3668.07);
insert into public."Items" (itemid, price) values (99, 5352.45);
insert into public."Items" (itemid, price) values (100, 4110.58);
insert into public."Items" (itemid, price) values (101, 9988.72);
insert into public."Items" (itemid, price) values (102, 2453.52);
insert into public."Items" (itemid, price) values (103, 7185.29);
insert into public."Items" (itemid, price) values (104, 6048.92);
insert into public."Items" (itemid, price) values (105, 2003.07);
insert into public."Items" (itemid, price) values (106, 8086.25);
insert into public."Items" (itemid, price) values (107, 7425.51);
insert into public."Items" (itemid, price) values (108, 6217.25);
insert into public."Items" (itemid, price) values (109, 460.46);
insert into public."Items" (itemid, price) values (110, 3917.14);
insert into public."Items" (itemid, price) values (111, 9103.78);
insert into public."Items" (itemid, price) values (112, 9185.66);
insert into public."Items" (itemid, price) values (113, 9200.26);
insert into public."Items" (itemid, price) values (114, 7259.58);
insert into public."Items" (itemid, price) values (115, 6582.63);
insert into public."Items" (itemid, price) values (116, 4149.23);
insert into public."Items" (itemid, price) values (117, 4099.01);
insert into public."Items" (itemid, price) values (118, 5122.97);
insert into public."Items" (itemid, price) values (119, 481.43);
insert into public."Items" (itemid, price) values (120, 2960.35);
insert into public."Items" (itemid, price) values (121, 2349.53);
insert into public."Items" (itemid, price) values (122, 5001.5);
insert into public."Items" (itemid, price) values (123, 3951.87);
insert into public."Items" (itemid, price) values (124, 4393.26);
insert into public."Items" (itemid, price) values (125, 7117.26);
insert into public."Items" (itemid, price) values (126, 9979.8);
insert into public."Items" (itemid, price) values (127, 7062.7);
insert into public."Items" (itemid, price) values (128, 5965.47);
insert into public."Items" (itemid, price) values (129, 3012.29);
insert into public."Items" (itemid, price) values (130, 8102.25);
insert into public."Items" (itemid, price) values (131, 8029.44);
insert into public."Items" (itemid, price) values (132, 6038.24);
insert into public."Items" (itemid, price) values (133, 9323.09);
insert into public."Items" (itemid, price) values (134, 843.9);
insert into public."Items" (itemid, price) values (135, 4213.66);
insert into public."Items" (itemid, price) values (136, 5638.13);
insert into public."Items" (itemid, price) values (137, 4131.55);
insert into public."Items" (itemid, price) values (138, 8356.9);
insert into public."Items" (itemid, price) values (139, 6544.28);
insert into public."Items" (itemid, price) values (140, 9415.87);
insert into public."Items" (itemid, price) values (141, 6046.3);
insert into public."Items" (itemid, price) values (142, 358.18);
insert into public."Items" (itemid, price) values (143, 1598.62);
insert into public."Items" (itemid, price) values (144, 5244.97);
insert into public."Items" (itemid, price) values (145, 6357.25);
insert into public."Items" (itemid, price) values (146, 6252.33);
insert into public."Items" (itemid, price) values (147, 2222.61);
insert into public."Items" (itemid, price) values (148, 2973.29);
insert into public."Items" (itemid, price) values (149, 6983.0);
insert into public."Items" (itemid, price) values (150, 4887.0);
insert into public."Items" (itemid, price) values (151, 891.17);
insert into public."Items" (itemid, price) values (152, 6764.26);
insert into public."Items" (itemid, price) values (153, 9615.78);
insert into public."Items" (itemid, price) values (154, 9270.79);
insert into public."Items" (itemid, price) values (155, 3814.98);
insert into public."Items" (itemid, price) values (156, 3054.77);
insert into public."Items" (itemid, price) values (157, 6806.43);
insert into public."Items" (itemid, price) values (158, 3722.31);
insert into public."Items" (itemid, price) values (159, 2529.58);
insert into public."Items" (itemid, price) values (160, 881.47);
insert into public."Items" (itemid, price) values (161, 2607.37);
insert into public."Items" (itemid, price) values (162, 1587.28);
insert into public."Items" (itemid, price) values (163, 6862.36);
insert into public."Items" (itemid, price) values (164, 3590.05);
insert into public."Items" (itemid, price) values (165, 4845.7);
insert into public."Items" (itemid, price) values (166, 8024.25);
insert into public."Items" (itemid, price) values (167, 8618.05);
insert into public."Items" (itemid, price) values (168, 7621.46);
insert into public."Items" (itemid, price) values (169, 8926.21);
insert into public."Items" (itemid, price) values (170, 5855.19);
insert into public."Items" (itemid, price) values (171, 4479.88);
insert into public."Items" (itemid, price) values (172, 5384.32);
insert into public."Items" (itemid, price) values (173, 1043.19);
insert into public."Items" (itemid, price) values (174, 845.86);
insert into public."Items" (itemid, price) values (175, 8018.06);
insert into public."Items" (itemid, price) values (176, 1570.04);
insert into public."Items" (itemid, price) values (177, 3633.61);
insert into public."Items" (itemid, price) values (178, 9177.37);
insert into public."Items" (itemid, price) values (179, 9978.71);
insert into public."Items" (itemid, price) values (180, 2607.93);
insert into public."Items" (itemid, price) values (181, 2654.37);
insert into public."Items" (itemid, price) values (182, 1831.81);
insert into public."Items" (itemid, price) values (183, 1367.68);
insert into public."Items" (itemid, price) values (184, 4086.4);
insert into public."Items" (itemid, price) values (185, 4598.77);
insert into public."Items" (itemid, price) values (186, 1024.48);
insert into public."Items" (itemid, price) values (187, 4756.01);
insert into public."Items" (itemid, price) values (188, 1880.36);
insert into public."Items" (itemid, price) values (189, 1353.16);
insert into public."Items" (itemid, price) values (190, 8831.62);
insert into public."Items" (itemid, price) values (191, 7004.08);
insert into public."Items" (itemid, price) values (192, 1401.93);
insert into public."Items" (itemid, price) values (193, 508.69);
insert into public."Items" (itemid, price) values (194, 3587.59);
insert into public."Items" (itemid, price) values (195, 9478.5);
insert into public."Items" (itemid, price) values (196, 1922.92);
insert into public."Items" (itemid, price) values (197, 5814.88);
insert into public."Items" (itemid, price) values (198, 7140.65);
insert into public."Items" (itemid, price) values (199, 4001.09);
insert into public."Items" (itemid, price) values (200, 3210.09);
insert into public."Items" (itemid, price) values (201, 1169.54);
insert into public."Items" (itemid, price) values (202, 7486.07);
insert into public."Items" (itemid, price) values (203, 7970.45);
insert into public."Items" (itemid, price) values (204, 9234.0);
insert into public."Items" (itemid, price) values (205, 9341.6);
insert into public."Items" (itemid, price) values (206, 5318.51);
insert into public."Items" (itemid, price) values (207, 7111.47);
insert into public."Items" (itemid, price) values (208, 3957.92);
insert into public."Items" (itemid, price) values (209, 7151.02);
insert into public."Items" (itemid, price) values (210, 6554.02);
insert into public."Items" (itemid, price) values (211, 8178.17);
insert into public."Items" (itemid, price) values (212, 5582.53);
insert into public."Items" (itemid, price) values (213, 9168.2);
insert into public."Items" (itemid, price) values (214, 8583.91);
insert into public."Items" (itemid, price) values (215, 5936.47);
insert into public."Items" (itemid, price) values (216, 1854.7);
insert into public."Items" (itemid, price) values (217, 6729.71);
insert into public."Items" (itemid, price) values (218, 6055.32);
insert into public."Items" (itemid, price) values (219, 5052.25);
insert into public."Items" (itemid, price) values (220, 5363.1);
insert into public."Items" (itemid, price) values (221, 6981.29);
insert into public."Items" (itemid, price) values (222, 1707.4);
insert into public."Items" (itemid, price) values (223, 652.05);
insert into public."Items" (itemid, price) values (224, 6436.64);
insert into public."Items" (itemid, price) values (225, 2212.4);
insert into public."Items" (itemid, price) values (226, 1523.85);
insert into public."Items" (itemid, price) values (227, 996.67);
insert into public."Items" (itemid, price) values (228, 4154.03);
insert into public."Items" (itemid, price) values (229, 8586.83);
insert into public."Items" (itemid, price) values (230, 5493.39);
insert into public."Items" (itemid, price) values (231, 425.17);
insert into public."Items" (itemid, price) values (232, 7365.06);
insert into public."Items" (itemid, price) values (233, 2931.27);
insert into public."Items" (itemid, price) values (234, 5306.06);
insert into public."Items" (itemid, price) values (235, 9266.24);
insert into public."Items" (itemid, price) values (236, 6950.39);
insert into public."Items" (itemid, price) values (237, 8018.48);
insert into public."Items" (itemid, price) values (238, 9158.63);
insert into public."Items" (itemid, price) values (239, 1013.56);
insert into public."Items" (itemid, price) values (240, 1589.87);
insert into public."Items" (itemid, price) values (241, 6633.45);
insert into public."Items" (itemid, price) values (242, 2146.86);
insert into public."Items" (itemid, price) values (243, 5529.44);
insert into public."Items" (itemid, price) values (244, 8745.22);
insert into public."Items" (itemid, price) values (245, 5457.48);
insert into public."Items" (itemid, price) values (246, 5422.36);
insert into public."Items" (itemid, price) values (247, 8489.11);
insert into public."Items" (itemid, price) values (248, 2156.49);
insert into public."Items" (itemid, price) values (249, 880.21);
insert into public."Items" (itemid, price) values (250, 4296.93);
insert into public."Items" (itemid, price) values (251, 6346.66);
insert into public."Items" (itemid, price) values (252, 9600.22);
insert into public."Items" (itemid, price) values (253, 5386.7);
insert into public."Items" (itemid, price) values (254, 9792.25);
insert into public."Items" (itemid, price) values (255, 2814.91);
insert into public."Items" (itemid, price) values (256, 6446.83);
insert into public."Items" (itemid, price) values (257, 4599.77);
insert into public."Items" (itemid, price) values (258, 7486.93);
insert into public."Items" (itemid, price) values (259, 9732.76);
insert into public."Items" (itemid, price) values (260, 3561.62);
insert into public."Items" (itemid, price) values (261, 5747.1);
insert into public."Items" (itemid, price) values (262, 6365.85);
insert into public."Items" (itemid, price) values (263, 4757.18);
insert into public."Items" (itemid, price) values (264, 2661.14);
insert into public."Items" (itemid, price) values (265, 2272.66);
insert into public."Items" (itemid, price) values (266, 9300.11);
insert into public."Items" (itemid, price) values (267, 3142.65);
insert into public."Items" (itemid, price) values (268, 1376.08);
insert into public."Items" (itemid, price) values (269, 6202.28);
insert into public."Items" (itemid, price) values (270, 6101.87);
insert into public."Items" (itemid, price) values (271, 5604.45);
insert into public."Items" (itemid, price) values (272, 2239.28);
insert into public."Items" (itemid, price) values (273, 9155.13);
insert into public."Items" (itemid, price) values (274, 6430.71);
insert into public."Items" (itemid, price) values (275, 4346.12);
insert into public."Items" (itemid, price) values (276, 3678.17);
insert into public."Items" (itemid, price) values (277, 6561.93);
insert into public."Items" (itemid, price) values (278, 3049.64);
insert into public."Items" (itemid, price) values (279, 4796.62);
insert into public."Items" (itemid, price) values (280, 2195.43);
insert into public."Items" (itemid, price) values (281, 3473.31);
insert into public."Items" (itemid, price) values (282, 363.43);
insert into public."Items" (itemid, price) values (283, 6076.22);
insert into public."Items" (itemid, price) values (284, 9246.51);
insert into public."Items" (itemid, price) values (285, 8998.88);
insert into public."Items" (itemid, price) values (286, 1229.22);
insert into public."Items" (itemid, price) values (287, 1345.67);
insert into public."Items" (itemid, price) values (288, 9697.59);
insert into public."Items" (itemid, price) values (289, 4347.42);
insert into public."Items" (itemid, price) values (290, 3548.32);
insert into public."Items" (itemid, price) values (291, 7506.08);
insert into public."Items" (itemid, price) values (292, 8967.17);
insert into public."Items" (itemid, price) values (293, 6176.2);
insert into public."Items" (itemid, price) values (294, 6277.01);
insert into public."Items" (itemid, price) values (295, 6176.83);
insert into public."Items" (itemid, price) values (296, 6337.12);
insert into public."Items" (itemid, price) values (297, 8615.96);
insert into public."Items" (itemid, price) values (298, 3009.15);
insert into public."Items" (itemid, price) values (299, 2558.55);
insert into public."Items" (itemid, price) values (300, 5505.29);
insert into public."Items" (itemid, price) values (301, 488.95);
insert into public."Items" (itemid, price) values (302, 1201.24);
insert into public."Items" (itemid, price) values (303, 8067.64);
insert into public."Items" (itemid, price) values (304, 310.14);
insert into public."Items" (itemid, price) values (305, 3341.61);
insert into public."Items" (itemid, price) values (306, 2381.15);
insert into public."Items" (itemid, price) values (307, 9103.39);
insert into public."Items" (itemid, price) values (308, 1172.17);
insert into public."Items" (itemid, price) values (309, 8461.86);
insert into public."Items" (itemid, price) values (310, 2320.92);
insert into public."Items" (itemid, price) values (311, 8032.85);
insert into public."Items" (itemid, price) values (312, 2671.53);
insert into public."Items" (itemid, price) values (313, 461.24);
insert into public."Items" (itemid, price) values (314, 476.56);
insert into public."Items" (itemid, price) values (315, 8200.25);
insert into public."Items" (itemid, price) values (316, 6310.27);
insert into public."Items" (itemid, price) values (317, 1287.64);
insert into public."Items" (itemid, price) values (318, 5193.94);
insert into public."Items" (itemid, price) values (319, 4189.88);
insert into public."Items" (itemid, price) values (320, 7436.05);
insert into public."Items" (itemid, price) values (321, 1531.73);
insert into public."Items" (itemid, price) values (322, 2925.78);
insert into public."Items" (itemid, price) values (323, 3467.46);
insert into public."Items" (itemid, price) values (324, 8939.27);
insert into public."Items" (itemid, price) values (325, 2643.63);
insert into public."Items" (itemid, price) values (326, 9216.15);
insert into public."Items" (itemid, price) values (327, 9301.87);
insert into public."Items" (itemid, price) values (328, 9605.55);
insert into public."Items" (itemid, price) values (329, 3538.81);
insert into public."Items" (itemid, price) values (330, 1293.66);
insert into public."Items" (itemid, price) values (331, 3553.03);
insert into public."Items" (itemid, price) values (332, 3472.94);
insert into public."Items" (itemid, price) values (333, 4702.4);
insert into public."Items" (itemid, price) values (334, 5846.29);
insert into public."Items" (itemid, price) values (335, 3876.8);
insert into public."Items" (itemid, price) values (336, 6465.48);
insert into public."Items" (itemid, price) values (337, 2628.26);
insert into public."Items" (itemid, price) values (338, 4081.32);
insert into public."Items" (itemid, price) values (339, 8967.34);
insert into public."Items" (itemid, price) values (340, 7186.58);
insert into public."Items" (itemid, price) values (341, 2508.4);
insert into public."Items" (itemid, price) values (342, 3580.63);
insert into public."Items" (itemid, price) values (343, 7249.95);
insert into public."Items" (itemid, price) values (344, 1790.26);
insert into public."Items" (itemid, price) values (345, 9227.53);
insert into public."Items" (itemid, price) values (346, 3934.06);
insert into public."Items" (itemid, price) values (347, 6035.09);
insert into public."Items" (itemid, price) values (348, 4553.37);
insert into public."Items" (itemid, price) values (349, 3663.35);
insert into public."Items" (itemid, price) values (350, 2860.63);

insert into public."Users" (userid, age) values (1, 18);
insert into public."Users" (userid, age) values (2, 50);
insert into public."Users" (userid, age) values (3, 27);
insert into public."Users" (userid, age) values (4, 44);
insert into public."Users" (userid, age) values (5, 19);
insert into public."Users" (userid, age) values (6, 45);
insert into public."Users" (userid, age) values (7, 48);
insert into public."Users" (userid, age) values (8, 39);
insert into public."Users" (userid, age) values (9, 22);
insert into public."Users" (userid, age) values (10, 19);
insert into public."Users" (userid, age) values (11, 18);
insert into public."Users" (userid, age) values (12, 22);
insert into public."Users" (userid, age) values (13, 50);
insert into public."Users" (userid, age) values (14, 49);
insert into public."Users" (userid, age) values (15, 37);
insert into public."Users" (userid, age) values (16, 34);
insert into public."Users" (userid, age) values (17, 43);
insert into public."Users" (userid, age) values (18, 37);
insert into public."Users" (userid, age) values (19, 31);
insert into public."Users" (userid, age) values (20, 20);
insert into public."Users" (userid, age) values (21, 48);
insert into public."Users" (userid, age) values (22, 46);
insert into public."Users" (userid, age) values (23, 35);
insert into public."Users" (userid, age) values (24, 33);
insert into public."Users" (userid, age) values (25, 30);
insert into public."Users" (userid, age) values (26, 35);
insert into public."Users" (userid, age) values (27, 39);
insert into public."Users" (userid, age) values (28, 28);
insert into public."Users" (userid, age) values (29, 49);
insert into public."Users" (userid, age) values (30, 43);
insert into public."Users" (userid, age) values (31, 48);
insert into public."Users" (userid, age) values (32, 25);
insert into public."Users" (userid, age) values (33, 47);
insert into public."Users" (userid, age) values (34, 18);
insert into public."Users" (userid, age) values (35, 44);
insert into public."Users" (userid, age) values (36, 22);
insert into public."Users" (userid, age) values (37, 29);
insert into public."Users" (userid, age) values (38, 36);
insert into public."Users" (userid, age) values (39, 23);
insert into public."Users" (userid, age) values (40, 34);
insert into public."Users" (userid, age) values (41, 47);
insert into public."Users" (userid, age) values (42, 21);
insert into public."Users" (userid, age) values (43, 49);
insert into public."Users" (userid, age) values (44, 37);
insert into public."Users" (userid, age) values (45, 40);
insert into public."Users" (userid, age) values (46, 36);
insert into public."Users" (userid, age) values (47, 20);
insert into public."Users" (userid, age) values (48, 44);
insert into public."Users" (userid, age) values (49, 40);
insert into public."Users" (userid, age) values (50, 30);
insert into public."Users" (userid, age) values (51, 46);
insert into public."Users" (userid, age) values (52, 20);
insert into public."Users" (userid, age) values (53, 19);
insert into public."Users" (userid, age) values (54, 48);
insert into public."Users" (userid, age) values (55, 22);
insert into public."Users" (userid, age) values (56, 44);
insert into public."Users" (userid, age) values (57, 49);
insert into public."Users" (userid, age) values (58, 41);
insert into public."Users" (userid, age) values (59, 50);
insert into public."Users" (userid, age) values (60, 19);
insert into public."Users" (userid, age) values (61, 30);
insert into public."Users" (userid, age) values (62, 42);
insert into public."Users" (userid, age) values (63, 23);
insert into public."Users" (userid, age) values (64, 22);
insert into public."Users" (userid, age) values (65, 30);
insert into public."Users" (userid, age) values (66, 28);
insert into public."Users" (userid, age) values (67, 20);
insert into public."Users" (userid, age) values (68, 25);
insert into public."Users" (userid, age) values (69, 25);
insert into public."Users" (userid, age) values (70, 47);
insert into public."Users" (userid, age) values (71, 27);
insert into public."Users" (userid, age) values (72, 23);
insert into public."Users" (userid, age) values (73, 20);
insert into public."Users" (userid, age) values (74, 46);
insert into public."Users" (userid, age) values (75, 22);
insert into public."Users" (userid, age) values (76, 31);
insert into public."Users" (userid, age) values (77, 30);
insert into public."Users" (userid, age) values (78, 18);
insert into public."Users" (userid, age) values (79, 23);
insert into public."Users" (userid, age) values (80, 42);
insert into public."Users" (userid, age) values (81, 34);
insert into public."Users" (userid, age) values (82, 37);
insert into public."Users" (userid, age) values (83, 47);
insert into public."Users" (userid, age) values (84, 36);
insert into public."Users" (userid, age) values (85, 36);
insert into public."Users" (userid, age) values (86, 23);
insert into public."Users" (userid, age) values (87, 46);
insert into public."Users" (userid, age) values (88, 22);
insert into public."Users" (userid, age) values (89, 45);
insert into public."Users" (userid, age) values (90, 40);
insert into public."Users" (userid, age) values (91, 47);
insert into public."Users" (userid, age) values (92, 29);
insert into public."Users" (userid, age) values (93, 41);
insert into public."Users" (userid, age) values (94, 18);
insert into public."Users" (userid, age) values (95, 29);
insert into public."Users" (userid, age) values (96, 38);
insert into public."Users" (userid, age) values (97, 48);
insert into public."Users" (userid, age) values (98, 19);
insert into public."Users" (userid, age) values (99, 49);
insert into public."Users" (userid, age) values (100, 18);
insert into public."Users" (userid, age) values (101, 28);
insert into public."Users" (userid, age) values (102, 40);
insert into public."Users" (userid, age) values (103, 40);
insert into public."Users" (userid, age) values (104, 37);
insert into public."Users" (userid, age) values (105, 44);
insert into public."Users" (userid, age) values (106, 30);
insert into public."Users" (userid, age) values (107, 49);
insert into public."Users" (userid, age) values (108, 24);
insert into public."Users" (userid, age) values (109, 50);
insert into public."Users" (userid, age) values (110, 49);
insert into public."Users" (userid, age) values (111, 24);
insert into public."Users" (userid, age) values (112, 46);
insert into public."Users" (userid, age) values (113, 44);
insert into public."Users" (userid, age) values (114, 47);
insert into public."Users" (userid, age) values (115, 40);
insert into public."Users" (userid, age) values (116, 26);
insert into public."Users" (userid, age) values (117, 23);
insert into public."Users" (userid, age) values (118, 46);
insert into public."Users" (userid, age) values (119, 38);
insert into public."Users" (userid, age) values (120, 26);
insert into public."Users" (userid, age) values (121, 40);
insert into public."Users" (userid, age) values (122, 30);
insert into public."Users" (userid, age) values (123, 19);
insert into public."Users" (userid, age) values (124, 31);
insert into public."Users" (userid, age) values (125, 50);
insert into public."Users" (userid, age) values (126, 37);
insert into public."Users" (userid, age) values (127, 25);
insert into public."Users" (userid, age) values (128, 22);
insert into public."Users" (userid, age) values (129, 40);
insert into public."Users" (userid, age) values (130, 23);
insert into public."Users" (userid, age) values (131, 43);
insert into public."Users" (userid, age) values (132, 37);
insert into public."Users" (userid, age) values (133, 40);
insert into public."Users" (userid, age) values (134, 41);
insert into public."Users" (userid, age) values (135, 34);
insert into public."Users" (userid, age) values (136, 21);
insert into public."Users" (userid, age) values (137, 48);
insert into public."Users" (userid, age) values (138, 21);
insert into public."Users" (userid, age) values (139, 28);
insert into public."Users" (userid, age) values (140, 18);
insert into public."Users" (userid, age) values (141, 40);
insert into public."Users" (userid, age) values (142, 29);
insert into public."Users" (userid, age) values (143, 50);
insert into public."Users" (userid, age) values (144, 22);
insert into public."Users" (userid, age) values (145, 21);
insert into public."Users" (userid, age) values (146, 24);
insert into public."Users" (userid, age) values (147, 44);
insert into public."Users" (userid, age) values (148, 39);
insert into public."Users" (userid, age) values (149, 30);
insert into public."Users" (userid, age) values (150, 47);
insert into public."Users" (userid, age) values (151, 45);
insert into public."Users" (userid, age) values (152, 49);
insert into public."Users" (userid, age) values (153, 23);
insert into public."Users" (userid, age) values (154, 42);
insert into public."Users" (userid, age) values (155, 30);
insert into public."Users" (userid, age) values (156, 36);
insert into public."Users" (userid, age) values (157, 30);
insert into public."Users" (userid, age) values (158, 46);
insert into public."Users" (userid, age) values (159, 37);
insert into public."Users" (userid, age) values (160, 34);
insert into public."Users" (userid, age) values (161, 48);
insert into public."Users" (userid, age) values (162, 19);
insert into public."Users" (userid, age) values (163, 24);
insert into public."Users" (userid, age) values (164, 32);
insert into public."Users" (userid, age) values (165, 43);
insert into public."Users" (userid, age) values (166, 48);
insert into public."Users" (userid, age) values (167, 32);
insert into public."Users" (userid, age) values (168, 44);
insert into public."Users" (userid, age) values (169, 22);
insert into public."Users" (userid, age) values (170, 35);
insert into public."Users" (userid, age) values (171, 39);
insert into public."Users" (userid, age) values (172, 19);
insert into public."Users" (userid, age) values (173, 48);
insert into public."Users" (userid, age) values (174, 35);
insert into public."Users" (userid, age) values (175, 27);
insert into public."Users" (userid, age) values (176, 28);
insert into public."Users" (userid, age) values (177, 46);
insert into public."Users" (userid, age) values (178, 21);
insert into public."Users" (userid, age) values (179, 50);
insert into public."Users" (userid, age) values (180, 37);
insert into public."Users" (userid, age) values (181, 40);
insert into public."Users" (userid, age) values (182, 47);
insert into public."Users" (userid, age) values (183, 50);
insert into public."Users" (userid, age) values (184, 28);
insert into public."Users" (userid, age) values (185, 41);
insert into public."Users" (userid, age) values (186, 30);
insert into public."Users" (userid, age) values (187, 30);
insert into public."Users" (userid, age) values (188, 30);
insert into public."Users" (userid, age) values (189, 43);
insert into public."Users" (userid, age) values (190, 19);
insert into public."Users" (userid, age) values (191, 26);
insert into public."Users" (userid, age) values (192, 18);
insert into public."Users" (userid, age) values (193, 42);
insert into public."Users" (userid, age) values (194, 35);
insert into public."Users" (userid, age) values (195, 45);
insert into public."Users" (userid, age) values (196, 41);
insert into public."Users" (userid, age) values (197, 39);
insert into public."Users" (userid, age) values (198, 31);
insert into public."Users" (userid, age) values (199, 29);
insert into public."Users" (userid, age) values (200, 24);

insert into public."Purchases" (userid, itemid, date) values (1, 161, '2022-02-13 00:48:34');
insert into public."Purchases" (userid, itemid, date) values (183, 103, '2022-08-19 04:03:44');
insert into public."Purchases" (userid, itemid, date) values (110, 72, '2022-10-23 03:11:21');
insert into public."Purchases" (userid, itemid, date) values (30, 326, '2022-06-06 08:43:33');
insert into public."Purchases" (userid, itemid, date) values (167, 301, '2022-10-25 14:14:04');
insert into public."Purchases" (userid, itemid, date) values (24, 20, '2022-03-19 09:26:35');
insert into public."Purchases" (userid, itemid, date) values (121, 258, '2022-05-31 11:27:20');
insert into public."Purchases" (userid, itemid, date) values (105, 254, '2022-03-05 01:52:49');
insert into public."Purchases" (userid, itemid, date) values (193, 248, '2022-09-14 00:57:36');
insert into public."Purchases" (userid, itemid, date) values (142, 226, '2022-09-20 21:25:04');
insert into public."Purchases" (userid, itemid, date) values (48, 333, '2022-02-22 09:11:56');
insert into public."Purchases" (userid, itemid, date) values (195, 267, '2021-11-10 22:55:13');
insert into public."Purchases" (userid, itemid, date) values (78, 94, '2022-03-02 14:31:34');
insert into public."Purchases" (userid, itemid, date) values (180, 301, '2022-01-03 22:28:01');
insert into public."Purchases" (userid, itemid, date) values (54, 346, '2022-08-21 11:13:00');
insert into public."Purchases" (userid, itemid, date) values (7, 123, '2022-10-15 11:16:09');
insert into public."Purchases" (userid, itemid, date) values (163, 158, '2021-12-16 02:08:22');
insert into public."Purchases" (userid, itemid, date) values (52, 218, '2022-04-16 12:11:17');
insert into public."Purchases" (userid, itemid, date) values (10, 302, '2021-12-15 10:13:23');
insert into public."Purchases" (userid, itemid, date) values (199, 148, '2022-06-15 11:02:10');
insert into public."Purchases" (userid, itemid, date) values (151, 61, '2022-08-14 13:42:21');
insert into public."Purchases" (userid, itemid, date) values (90, 124, '2022-05-19 18:47:29');
insert into public."Purchases" (userid, itemid, date) values (57, 161, '2022-10-27 05:32:22');
insert into public."Purchases" (userid, itemid, date) values (102, 147, '2022-07-02 12:53:52');
insert into public."Purchases" (userid, itemid, date) values (27, 310, '2022-04-21 17:49:05');
insert into public."Purchases" (userid, itemid, date) values (132, 73, '2022-11-04 04:25:32');
insert into public."Purchases" (userid, itemid, date) values (187, 39, '2022-01-04 18:46:58');
insert into public."Purchases" (userid, itemid, date) values (18, 38, '2022-05-10 10:45:54');
insert into public."Purchases" (userid, itemid, date) values (132, 276, '2022-01-08 17:21:09');
insert into public."Purchases" (userid, itemid, date) values (12, 100, '2022-06-23 20:47:57');
insert into public."Purchases" (userid, itemid, date) values (99, 179, '2022-04-21 15:48:33');
insert into public."Purchases" (userid, itemid, date) values (167, 62, '2022-02-12 16:06:07');
insert into public."Purchases" (userid, itemid, date) values (140, 92, '2022-03-20 20:26:55');
insert into public."Purchases" (userid, itemid, date) values (152, 65, '2022-10-19 23:46:27');
insert into public."Purchases" (userid, itemid, date) values (61, 343, '2022-03-07 23:41:24');
insert into public."Purchases" (userid, itemid, date) values (24, 195, '2022-06-03 10:54:40');
insert into public."Purchases" (userid, itemid, date) values (165, 74, '2022-07-15 10:45:08');
insert into public."Purchases" (userid, itemid, date) values (34, 157, '2022-07-13 02:38:32');
insert into public."Purchases" (userid, itemid, date) values (188, 12, '2021-12-03 15:03:41');
insert into public."Purchases" (userid, itemid, date) values (158, 101, '2022-09-17 22:27:08');
insert into public."Purchases" (userid, itemid, date) values (60, 118, '2022-01-26 18:21:10');
insert into public."Purchases" (userid, itemid, date) values (169, 129, '2022-04-21 17:12:29');
insert into public."Purchases" (userid, itemid, date) values (100, 227, '2022-06-15 04:45:56');
insert into public."Purchases" (userid, itemid, date) values (150, 238, '2022-06-30 15:20:42');
insert into public."Purchases" (userid, itemid, date) values (145, 192, '2021-12-17 04:22:09');
insert into public."Purchases" (userid, itemid, date) values (141, 153, '2022-08-28 14:44:15');
insert into public."Purchases" (userid, itemid, date) values (47, 125, '2022-02-06 10:52:17');
insert into public."Purchases" (userid, itemid, date) values (148, 268, '2021-12-30 20:57:33');
insert into public."Purchases" (userid, itemid, date) values (72, 88, '2022-09-29 05:02:32');
insert into public."Purchases" (userid, itemid, date) values (84, 61, '2021-12-05 00:17:59');
insert into public."Purchases" (userid, itemid, date) values (189, 329, '2022-02-09 01:59:59');
insert into public."Purchases" (userid, itemid, date) values (128, 272, '2021-12-31 10:42:13');
insert into public."Purchases" (userid, itemid, date) values (137, 226, '2022-09-03 07:36:09');
insert into public."Purchases" (userid, itemid, date) values (61, 43, '2022-07-31 16:05:02');
insert into public."Purchases" (userid, itemid, date) values (149, 133, '2022-04-01 19:04:20');
insert into public."Purchases" (userid, itemid, date) values (190, 72, '2022-03-19 12:20:01');
insert into public."Purchases" (userid, itemid, date) values (176, 257, '2022-06-26 05:10:16');
insert into public."Purchases" (userid, itemid, date) values (52, 21, '2022-06-04 18:25:53');
insert into public."Purchases" (userid, itemid, date) values (82, 296, '2022-08-17 04:53:32');
insert into public."Purchases" (userid, itemid, date) values (8, 290, '2022-09-29 02:13:55');
insert into public."Purchases" (userid, itemid, date) values (74, 261, '2022-02-20 12:29:09');
insert into public."Purchases" (userid, itemid, date) values (198, 58, '2022-07-27 03:36:13');
insert into public."Purchases" (userid, itemid, date) values (77, 88, '2021-12-09 14:59:55');
insert into public."Purchases" (userid, itemid, date) values (110, 228, '2022-11-02 09:19:03');
insert into public."Purchases" (userid, itemid, date) values (61, 146, '2022-01-26 15:38:04');
insert into public."Purchases" (userid, itemid, date) values (108, 47, '2022-03-11 20:24:29');
insert into public."Purchases" (userid, itemid, date) values (44, 326, '2022-06-26 11:20:16');
insert into public."Purchases" (userid, itemid, date) values (197, 339, '2022-09-15 09:57:11');
insert into public."Purchases" (userid, itemid, date) values (184, 42, '2021-11-10 20:44:14');
insert into public."Purchases" (userid, itemid, date) values (27, 157, '2022-08-13 06:29:36');
insert into public."Purchases" (userid, itemid, date) values (54, 178, '2022-06-10 20:36:26');
insert into public."Purchases" (userid, itemid, date) values (30, 168, '2022-06-18 15:46:30');
insert into public."Purchases" (userid, itemid, date) values (163, 207, '2022-09-28 11:19:37');
insert into public."Purchases" (userid, itemid, date) values (144, 251, '2022-01-11 23:38:10');
insert into public."Purchases" (userid, itemid, date) values (26, 127, '2022-07-04 21:28:04');
insert into public."Purchases" (userid, itemid, date) values (74, 77, '2022-05-16 09:29:15');
insert into public."Purchases" (userid, itemid, date) values (97, 349, '2022-02-09 04:58:02');
insert into public."Purchases" (userid, itemid, date) values (139, 210, '2022-06-06 16:37:44');
insert into public."Purchases" (userid, itemid, date) values (169, 243, '2021-11-28 14:20:21');
insert into public."Purchases" (userid, itemid, date) values (7, 61, '2022-01-22 13:27:45');
insert into public."Purchases" (userid, itemid, date) values (82, 49, '2022-10-20 00:27:22');
insert into public."Purchases" (userid, itemid, date) values (87, 116, '2022-09-08 19:40:53');
insert into public."Purchases" (userid, itemid, date) values (31, 37, '2021-11-15 23:13:44');
insert into public."Purchases" (userid, itemid, date) values (147, 267, '2021-12-09 23:28:56');
insert into public."Purchases" (userid, itemid, date) values (174, 222, '2022-04-26 08:39:23');
insert into public."Purchases" (userid, itemid, date) values (12, 16, '2022-01-20 18:34:33');
insert into public."Purchases" (userid, itemid, date) values (9, 211, '2022-04-13 21:12:59');
insert into public."Purchases" (userid, itemid, date) values (92, 157, '2022-06-29 03:46:20');
insert into public."Purchases" (userid, itemid, date) values (83, 281, '2022-05-11 20:41:18');
insert into public."Purchases" (userid, itemid, date) values (151, 335, '2022-05-27 07:05:45');
insert into public."Purchases" (userid, itemid, date) values (166, 135, '2022-04-17 04:13:55');
insert into public."Purchases" (userid, itemid, date) values (109, 302, '2022-10-22 20:48:05');
insert into public."Purchases" (userid, itemid, date) values (124, 307, '2022-03-22 15:49:21');
insert into public."Purchases" (userid, itemid, date) values (36, 141, '2022-08-12 17:23:37');
insert into public."Purchases" (userid, itemid, date) values (34, 286, '2022-02-26 23:56:17');
insert into public."Purchases" (userid, itemid, date) values (1, 35, '2022-08-21 22:13:12');
insert into public."Purchases" (userid, itemid, date) values (54, 245, '2022-01-05 01:21:55');
insert into public."Purchases" (userid, itemid, date) values (58, 286, '2022-02-23 14:27:43');
insert into public."Purchases" (userid, itemid, date) values (110, 139, '2022-08-01 06:29:59');
insert into public."Purchases" (userid, itemid, date) values (180, 183, '2022-07-14 01:03:06');
insert into public."Purchases" (userid, itemid, date) values (192, 297, '2021-12-24 09:50:18');
insert into public."Purchases" (userid, itemid, date) values (153, 11, '2022-10-25 21:15:36');
insert into public."Purchases" (userid, itemid, date) values (18, 141, '2022-05-23 21:33:35');
insert into public."Purchases" (userid, itemid, date) values (156, 245, '2022-06-10 07:27:42');
insert into public."Purchases" (userid, itemid, date) values (118, 306, '2022-05-21 06:37:24');
insert into public."Purchases" (userid, itemid, date) values (7, 5, '2021-12-25 23:41:51');
insert into public."Purchases" (userid, itemid, date) values (123, 92, '2022-08-21 02:17:37');
insert into public."Purchases" (userid, itemid, date) values (42, 230, '2022-02-19 00:24:11');
insert into public."Purchases" (userid, itemid, date) values (102, 90, '2022-07-21 13:37:32');
insert into public."Purchases" (userid, itemid, date) values (15, 69, '2022-10-21 15:43:58');
insert into public."Purchases" (userid, itemid, date) values (193, 21, '2022-01-18 00:42:36');
insert into public."Purchases" (userid, itemid, date) values (140, 165, '2022-09-02 11:22:19');
insert into public."Purchases" (userid, itemid, date) values (153, 77, '2021-11-11 13:45:35');
insert into public."Purchases" (userid, itemid, date) values (141, 101, '2022-10-15 09:20:10');
insert into public."Purchases" (userid, itemid, date) values (33, 158, '2022-02-02 04:05:29');
insert into public."Purchases" (userid, itemid, date) values (69, 291, '2022-04-30 20:46:29');
insert into public."Purchases" (userid, itemid, date) values (21, 98, '2022-03-12 16:37:13');
insert into public."Purchases" (userid, itemid, date) values (83, 200, '2022-01-20 19:15:40');
insert into public."Purchases" (userid, itemid, date) values (167, 34, '2021-11-25 05:48:21');
insert into public."Purchases" (userid, itemid, date) values (176, 103, '2021-12-16 12:22:53');
insert into public."Purchases" (userid, itemid, date) values (121, 292, '2021-12-11 21:17:05');
insert into public."Purchases" (userid, itemid, date) values (74, 170, '2022-03-19 15:50:08');
insert into public."Purchases" (userid, itemid, date) values (160, 234, '2022-07-14 16:34:00');
insert into public."Purchases" (userid, itemid, date) values (87, 11, '2022-02-20 16:27:08');
insert into public."Purchases" (userid, itemid, date) values (80, 223, '2022-03-29 04:23:10');
insert into public."Purchases" (userid, itemid, date) values (196, 60, '2022-09-08 21:59:00');
insert into public."Purchases" (userid, itemid, date) values (73, 341, '2022-09-05 17:17:12');
insert into public."Purchases" (userid, itemid, date) values (196, 89, '2022-04-02 01:58:49');
insert into public."Purchases" (userid, itemid, date) values (48, 266, '2022-10-19 13:30:56');
insert into public."Purchases" (userid, itemid, date) values (195, 131, '2022-03-19 21:23:03');
insert into public."Purchases" (userid, itemid, date) values (26, 271, '2022-08-25 17:33:27');
insert into public."Purchases" (userid, itemid, date) values (183, 151, '2022-06-07 00:37:10');
insert into public."Purchases" (userid, itemid, date) values (19, 172, '2022-03-09 11:15:18');
insert into public."Purchases" (userid, itemid, date) values (89, 341, '2022-05-30 22:46:25');
insert into public."Purchases" (userid, itemid, date) values (63, 95, '2022-03-12 21:56:06');
insert into public."Purchases" (userid, itemid, date) values (191, 62, '2022-01-08 02:13:58');
insert into public."Purchases" (userid, itemid, date) values (200, 50, '2022-08-26 20:05:34');
insert into public."Purchases" (userid, itemid, date) values (32, 337, '2021-12-16 20:45:51');
insert into public."Purchases" (userid, itemid, date) values (86, 186, '2022-09-30 12:46:45');
insert into public."Purchases" (userid, itemid, date) values (168, 224, '2021-12-11 22:18:37');
insert into public."Purchases" (userid, itemid, date) values (76, 227, '2022-04-04 05:09:26');
insert into public."Purchases" (userid, itemid, date) values (78, 331, '2021-11-30 12:49:03');
insert into public."Purchases" (userid, itemid, date) values (67, 70, '2022-06-21 23:35:23');
insert into public."Purchases" (userid, itemid, date) values (151, 3, '2022-02-20 07:41:07');
insert into public."Purchases" (userid, itemid, date) values (187, 313, '2022-08-12 12:26:43');
insert into public."Purchases" (userid, itemid, date) values (82, 146, '2022-05-01 15:59:06');
insert into public."Purchases" (userid, itemid, date) values (57, 103, '2022-09-08 21:58:35');
insert into public."Purchases" (userid, itemid, date) values (109, 257, '2022-02-28 10:23:43');
insert into public."Purchases" (userid, itemid, date) values (147, 280, '2022-06-27 23:54:47');
insert into public."Purchases" (userid, itemid, date) values (87, 271, '2022-10-02 11:01:54');
insert into public."Purchases" (userid, itemid, date) values (24, 131, '2022-08-07 00:48:20');
insert into public."Purchases" (userid, itemid, date) values (105, 32, '2022-11-06 00:31:04');
insert into public."Purchases" (userid, itemid, date) values (64, 247, '2022-10-21 11:15:12');
insert into public."Purchases" (userid, itemid, date) values (61, 171, '2021-12-19 10:08:21');
insert into public."Purchases" (userid, itemid, date) values (86, 342, '2022-03-01 04:16:38');
insert into public."Purchases" (userid, itemid, date) values (192, 257, '2022-03-23 02:05:10');
insert into public."Purchases" (userid, itemid, date) values (48, 223, '2022-05-16 08:48:47');
insert into public."Purchases" (userid, itemid, date) values (102, 342, '2022-10-01 11:43:02');
insert into public."Purchases" (userid, itemid, date) values (70, 212, '2022-08-21 18:29:31');
insert into public."Purchases" (userid, itemid, date) values (131, 139, '2022-09-02 22:28:18');
insert into public."Purchases" (userid, itemid, date) values (30, 260, '2022-10-09 15:12:04');
insert into public."Purchases" (userid, itemid, date) values (168, 275, '2021-12-24 22:03:45');
insert into public."Purchases" (userid, itemid, date) values (156, 92, '2022-09-15 04:40:49');
insert into public."Purchases" (userid, itemid, date) values (146, 132, '2022-10-15 19:06:22');
insert into public."Purchases" (userid, itemid, date) values (119, 13, '2022-03-31 15:52:13');
insert into public."Purchases" (userid, itemid, date) values (164, 152, '2021-11-15 16:35:15');
insert into public."Purchases" (userid, itemid, date) values (103, 90, '2022-04-25 17:35:21');
insert into public."Purchases" (userid, itemid, date) values (171, 73, '2022-05-19 05:07:34');
insert into public."Purchases" (userid, itemid, date) values (158, 180, '2022-11-03 04:57:00');
insert into public."Purchases" (userid, itemid, date) values (182, 142, '2022-03-18 03:25:42');
insert into public."Purchases" (userid, itemid, date) values (97, 284, '2021-11-22 10:44:43');
insert into public."Purchases" (userid, itemid, date) values (70, 201, '2022-05-15 01:37:56');
insert into public."Purchases" (userid, itemid, date) values (190, 30, '2022-06-09 22:22:01');
insert into public."Purchases" (userid, itemid, date) values (40, 6, '2022-01-29 10:16:42');
insert into public."Purchases" (userid, itemid, date) values (141, 332, '2022-10-07 19:11:32');
insert into public."Purchases" (userid, itemid, date) values (157, 190, '2022-06-13 02:36:48');
insert into public."Purchases" (userid, itemid, date) values (75, 215, '2022-02-28 01:15:53');
insert into public."Purchases" (userid, itemid, date) values (182, 175, '2022-02-10 16:42:04');
insert into public."Purchases" (userid, itemid, date) values (94, 117, '2022-02-02 09:46:18');
insert into public."Purchases" (userid, itemid, date) values (166, 50, '2021-11-25 10:39:06');
insert into public."Purchases" (userid, itemid, date) values (15, 242, '2022-10-22 13:19:51');
insert into public."Purchases" (userid, itemid, date) values (8, 142, '2022-01-20 12:04:20');
insert into public."Purchases" (userid, itemid, date) values (63, 27, '2022-03-17 09:03:43');
insert into public."Purchases" (userid, itemid, date) values (59, 316, '2021-12-07 08:24:45');
insert into public."Purchases" (userid, itemid, date) values (88, 153, '2022-05-08 19:34:32');
insert into public."Purchases" (userid, itemid, date) values (8, 258, '2022-08-09 16:18:40');
insert into public."Purchases" (userid, itemid, date) values (194, 92, '2022-08-18 09:39:13');
insert into public."Purchases" (userid, itemid, date) values (197, 183, '2022-09-10 08:51:16');
insert into public."Purchases" (userid, itemid, date) values (60, 305, '2022-01-11 21:33:50');
insert into public."Purchases" (userid, itemid, date) values (63, 168, '2022-03-05 05:05:51');
insert into public."Purchases" (userid, itemid, date) values (111, 33, '2022-05-04 02:34:41');
insert into public."Purchases" (userid, itemid, date) values (101, 49, '2022-05-26 05:03:05');
insert into public."Purchases" (userid, itemid, date) values (116, 25, '2022-09-25 14:51:32');
insert into public."Purchases" (userid, itemid, date) values (60, 177, '2022-05-05 13:24:19');
insert into public."Purchases" (userid, itemid, date) values (153, 90, '2022-10-14 08:52:55');
insert into public."Purchases" (userid, itemid, date) values (196, 297, '2022-06-24 10:27:03');
insert into public."Purchases" (userid, itemid, date) values (30, 77, '2022-09-10 03:52:20');
insert into public."Purchases" (userid, itemid, date) values (89, 204, '2022-07-18 16:42:50');
insert into public."Purchases" (userid, itemid, date) values (66, 29, '2022-09-22 18:06:58');
insert into public."Purchases" (userid, itemid, date) values (32, 159, '2022-02-08 03:09:40');
insert into public."Purchases" (userid, itemid, date) values (17, 110, '2022-07-18 13:32:12');
insert into public."Purchases" (userid, itemid, date) values (10, 150, '2022-07-16 08:31:05');
insert into public."Purchases" (userid, itemid, date) values (92, 57, '2022-06-17 00:50:36');
insert into public."Purchases" (userid, itemid, date) values (17, 175, '2022-05-10 14:19:51');
insert into public."Purchases" (userid, itemid, date) values (20, 151, '2022-07-06 10:51:11');
insert into public."Purchases" (userid, itemid, date) values (3, 260, '2022-09-23 11:32:09');
insert into public."Purchases" (userid, itemid, date) values (3, 217, '2022-06-08 23:03:40');
insert into public."Purchases" (userid, itemid, date) values (24, 101, '2021-12-18 01:45:53');
insert into public."Purchases" (userid, itemid, date) values (105, 9, '2022-06-16 12:48:36');
insert into public."Purchases" (userid, itemid, date) values (199, 184, '2022-03-24 18:46:35');
insert into public."Purchases" (userid, itemid, date) values (8, 230, '2022-08-30 23:21:52');
insert into public."Purchases" (userid, itemid, date) values (77, 258, '2022-04-21 17:58:30');
insert into public."Purchases" (userid, itemid, date) values (177, 90, '2022-09-25 01:01:53');
insert into public."Purchases" (userid, itemid, date) values (138, 190, '2022-02-24 05:31:13');
insert into public."Purchases" (userid, itemid, date) values (35, 89, '2021-12-31 08:06:13');
insert into public."Purchases" (userid, itemid, date) values (161, 60, '2022-01-16 13:34:46');
insert into public."Purchases" (userid, itemid, date) values (148, 272, '2022-04-30 23:23:13');
insert into public."Purchases" (userid, itemid, date) values (106, 26, '2022-02-07 02:05:22');
insert into public."Purchases" (userid, itemid, date) values (117, 21, '2022-05-16 02:30:56');
insert into public."Purchases" (userid, itemid, date) values (80, 16, '2022-08-22 16:41:26');
insert into public."Purchases" (userid, itemid, date) values (83, 143, '2022-01-23 05:58:01');
insert into public."Purchases" (userid, itemid, date) values (22, 116, '2022-06-21 12:15:46');
insert into public."Purchases" (userid, itemid, date) values (37, 261, '2021-12-26 12:28:42');
insert into public."Purchases" (userid, itemid, date) values (60, 96, '2022-08-21 13:48:59');
insert into public."Purchases" (userid, itemid, date) values (167, 328, '2022-01-13 14:58:19');
insert into public."Purchases" (userid, itemid, date) values (111, 38, '2022-07-18 23:34:06');
insert into public."Purchases" (userid, itemid, date) values (127, 159, '2021-12-10 05:05:05');
insert into public."Purchases" (userid, itemid, date) values (185, 160, '2022-03-13 03:51:45');
insert into public."Purchases" (userid, itemid, date) values (121, 25, '2022-06-04 14:16:26');
insert into public."Purchases" (userid, itemid, date) values (13, 260, '2022-11-06 01:45:31');
insert into public."Purchases" (userid, itemid, date) values (141, 334, '2022-10-16 21:39:43');
insert into public."Purchases" (userid, itemid, date) values (152, 190, '2022-01-28 00:44:12');
insert into public."Purchases" (userid, itemid, date) values (140, 32, '2022-03-04 07:16:42');
insert into public."Purchases" (userid, itemid, date) values (40, 38, '2021-11-17 12:41:08');
insert into public."Purchases" (userid, itemid, date) values (74, 18, '2022-02-25 10:45:43');
insert into public."Purchases" (userid, itemid, date) values (39, 141, '2022-09-12 16:12:16');
insert into public."Purchases" (userid, itemid, date) values (181, 155, '2022-04-26 03:15:32');
insert into public."Purchases" (userid, itemid, date) values (122, 4, '2022-01-25 20:24:26');
insert into public."Purchases" (userid, itemid, date) values (86, 59, '2022-04-25 12:14:59');
insert into public."Purchases" (userid, itemid, date) values (52, 51, '2022-06-03 05:13:36');
insert into public."Purchases" (userid, itemid, date) values (30, 47, '2022-03-22 10:10:22');
insert into public."Purchases" (userid, itemid, date) values (10, 270, '2021-11-18 22:57:46');
insert into public."Purchases" (userid, itemid, date) values (190, 106, '2022-08-30 12:00:43');
insert into public."Purchases" (userid, itemid, date) values (166, 77, '2022-02-18 18:38:50');
insert into public."Purchases" (userid, itemid, date) values (93, 221, '2022-08-19 04:53:23');
insert into public."Purchases" (userid, itemid, date) values (112, 194, '2022-11-05 06:58:30');
insert into public."Purchases" (userid, itemid, date) values (158, 248, '2022-03-19 00:13:23');
insert into public."Purchases" (userid, itemid, date) values (92, 106, '2022-04-26 07:05:58');
insert into public."Purchases" (userid, itemid, date) values (44, 173, '2022-02-21 23:58:16');
insert into public."Purchases" (userid, itemid, date) values (116, 127, '2022-02-05 08:29:34');
insert into public."Purchases" (userid, itemid, date) values (21, 290, '2022-01-15 14:54:12');
insert into public."Purchases" (userid, itemid, date) values (30, 256, '2022-05-05 12:12:51');
insert into public."Purchases" (userid, itemid, date) values (115, 93, '2022-10-17 20:27:31');
insert into public."Purchases" (userid, itemid, date) values (91, 44, '2022-01-02 02:10:47');
insert into public."Purchases" (userid, itemid, date) values (145, 79, '2022-04-01 12:36:35');
insert into public."Purchases" (userid, itemid, date) values (152, 300, '2022-03-03 03:43:32');
insert into public."Purchases" (userid, itemid, date) values (97, 62, '2021-12-05 06:12:36');
insert into public."Purchases" (userid, itemid, date) values (41, 3, '2022-02-22 18:46:00');
insert into public."Purchases" (userid, itemid, date) values (31, 179, '2022-10-05 15:40:35');
insert into public."Purchases" (userid, itemid, date) values (195, 90, '2022-02-06 11:45:51');
insert into public."Purchases" (userid, itemid, date) values (85, 38, '2022-02-02 10:00:01');
insert into public."Purchases" (userid, itemid, date) values (59, 190, '2022-05-11 14:55:47');
insert into public."Purchases" (userid, itemid, date) values (32, 311, '2022-10-08 10:21:30');
insert into public."Purchases" (userid, itemid, date) values (197, 241, '2022-07-27 13:42:38');
insert into public."Purchases" (userid, itemid, date) values (137, 119, '2022-04-27 07:26:42');
insert into public."Purchases" (userid, itemid, date) values (121, 241, '2022-02-03 07:57:01');
insert into public."Purchases" (userid, itemid, date) values (51, 216, '2022-04-20 08:45:35');
insert into public."Purchases" (userid, itemid, date) values (22, 106, '2022-05-07 13:57:19');
insert into public."Purchases" (userid, itemid, date) values (193, 90, '2022-08-23 10:32:00');
insert into public."Purchases" (userid, itemid, date) values (92, 272, '2022-06-06 19:06:54');
insert into public."Purchases" (userid, itemid, date) values (182, 253, '2022-03-03 07:25:19');
insert into public."Purchases" (userid, itemid, date) values (200, 318, '2022-10-15 08:02:04');
insert into public."Purchases" (userid, itemid, date) values (158, 26, '2022-04-04 03:39:59');
insert into public."Purchases" (userid, itemid, date) values (26, 201, '2022-09-23 01:46:35');
insert into public."Purchases" (userid, itemid, date) values (174, 332, '2021-12-04 02:38:27');
insert into public."Purchases" (userid, itemid, date) values (150, 344, '2022-06-27 14:56:29');
insert into public."Purchases" (userid, itemid, date) values (82, 111, '2021-12-29 15:42:22');
insert into public."Purchases" (userid, itemid, date) values (7, 304, '2022-02-09 23:39:36');
insert into public."Purchases" (userid, itemid, date) values (168, 26, '2022-07-17 04:22:12');
insert into public."Purchases" (userid, itemid, date) values (21, 333, '2022-09-18 18:49:01');
insert into public."Purchases" (userid, itemid, date) values (133, 304, '2022-05-15 14:26:28');
insert into public."Purchases" (userid, itemid, date) values (136, 193, '2021-12-27 21:56:39');
insert into public."Purchases" (userid, itemid, date) values (110, 279, '2022-04-01 14:57:42');
insert into public."Purchases" (userid, itemid, date) values (98, 192, '2022-01-20 23:01:58');
insert into public."Purchases" (userid, itemid, date) values (125, 191, '2022-02-20 08:29:10');
insert into public."Purchases" (userid, itemid, date) values (65, 297, '2022-01-27 04:26:16');
insert into public."Purchases" (userid, itemid, date) values (111, 329, '2022-03-23 08:24:38');
insert into public."Purchases" (userid, itemid, date) values (174, 282, '2022-02-15 03:57:44');
insert into public."Purchases" (userid, itemid, date) values (76, 289, '2022-03-31 01:44:10');
insert into public."Purchases" (userid, itemid, date) values (150, 233, '2021-12-30 22:52:58');
insert into public."Purchases" (userid, itemid, date) values (155, 335, '2022-07-17 20:06:47');
insert into public."Purchases" (userid, itemid, date) values (139, 112, '2022-03-11 15:41:52');
insert into public."Purchases" (userid, itemid, date) values (146, 22, '2022-08-16 14:12:02');
insert into public."Purchases" (userid, itemid, date) values (117, 127, '2022-08-02 13:51:02');
insert into public."Purchases" (userid, itemid, date) values (141, 149, '2022-03-24 19:52:55');
insert into public."Purchases" (userid, itemid, date) values (135, 298, '2022-03-27 05:30:56');
insert into public."Purchases" (userid, itemid, date) values (56, 285, '2022-08-24 01:18:41');
insert into public."Purchases" (userid, itemid, date) values (18, 146, '2022-10-18 13:08:29');
insert into public."Purchases" (userid, itemid, date) values (99, 275, '2022-08-14 18:08:31');
insert into public."Purchases" (userid, itemid, date) values (103, 235, '2021-11-30 01:34:41');
insert into public."Purchases" (userid, itemid, date) values (121, 269, '2021-12-08 13:49:44');
insert into public."Purchases" (userid, itemid, date) values (104, 222, '2022-04-14 06:06:53');
insert into public."Purchases" (userid, itemid, date) values (108, 108, '2021-12-02 00:23:59');
insert into public."Purchases" (userid, itemid, date) values (66, 56, '2022-04-12 01:19:57');
insert into public."Purchases" (userid, itemid, date) values (7, 119, '2022-01-18 04:41:10');
insert into public."Purchases" (userid, itemid, date) values (145, 136, '2022-06-06 23:22:21');
insert into public."Purchases" (userid, itemid, date) values (97, 146, '2022-02-12 20:53:52');
insert into public."Purchases" (userid, itemid, date) values (162, 34, '2022-07-23 08:39:23');
insert into public."Purchases" (userid, itemid, date) values (154, 117, '2022-10-09 20:43:02');
insert into public."Purchases" (userid, itemid, date) values (68, 253, '2022-03-31 00:01:37');
insert into public."Purchases" (userid, itemid, date) values (150, 62, '2022-04-28 22:39:37');
insert into public."Purchases" (userid, itemid, date) values (65, 131, '2022-07-06 21:42:26');
insert into public."Purchases" (userid, itemid, date) values (172, 139, '2022-01-05 15:35:35');
insert into public."Purchases" (userid, itemid, date) values (65, 346, '2022-02-12 17:06:21');
insert into public."Purchases" (userid, itemid, date) values (7, 197, '2022-05-17 11:52:29');
insert into public."Purchases" (userid, itemid, date) values (73, 21, '2022-06-06 18:33:42');
insert into public."Purchases" (userid, itemid, date) values (166, 217, '2022-11-04 14:10:19');
insert into public."Purchases" (userid, itemid, date) values (132, 50, '2022-02-17 11:39:06');
insert into public."Purchases" (userid, itemid, date) values (63, 260, '2022-04-01 03:28:16');
insert into public."Purchases" (userid, itemid, date) values (130, 175, '2022-02-11 16:50:05');
insert into public."Purchases" (userid, itemid, date) values (69, 181, '2022-02-09 16:26:36');
insert into public."Purchases" (userid, itemid, date) values (149, 107, '2022-11-07 19:35:57');
insert into public."Purchases" (userid, itemid, date) values (103, 144, '2022-04-04 09:22:52');
insert into public."Purchases" (userid, itemid, date) values (37, 109, '2022-05-28 14:03:33');
insert into public."Purchases" (userid, itemid, date) values (116, 209, '2022-03-21 05:57:18');
insert into public."Purchases" (userid, itemid, date) values (192, 97, '2022-07-13 09:13:17');
insert into public."Purchases" (userid, itemid, date) values (191, 349, '2021-11-17 13:08:01');
insert into public."Purchases" (userid, itemid, date) values (67, 202, '2021-12-01 07:15:06');
insert into public."Purchases" (userid, itemid, date) values (40, 97, '2022-11-08 14:12:40');
insert into public."Purchases" (userid, itemid, date) values (72, 208, '2022-01-14 07:08:15');
insert into public."Purchases" (userid, itemid, date) values (62, 100, '2022-03-26 13:03:55');
insert into public."Purchases" (userid, itemid, date) values (75, 226, '2022-02-19 10:09:02');
insert into public."Purchases" (userid, itemid, date) values (97, 270, '2021-11-26 21:44:01');
insert into public."Purchases" (userid, itemid, date) values (77, 235, '2022-07-27 09:18:21');
insert into public."Purchases" (userid, itemid, date) values (195, 235, '2022-10-03 05:58:27');
insert into public."Purchases" (userid, itemid, date) values (63, 32, '2022-03-02 14:08:59');
insert into public."Purchases" (userid, itemid, date) values (37, 281, '2022-02-08 02:42:16');
insert into public."Purchases" (userid, itemid, date) values (73, 173, '2022-03-18 20:47:44');
insert into public."Purchases" (userid, itemid, date) values (89, 127, '2022-09-04 14:16:05');
insert into public."Purchases" (userid, itemid, date) values (9, 303, '2021-11-23 10:55:45');
insert into public."Purchases" (userid, itemid, date) values (3, 192, '2022-06-09 08:56:49');
insert into public."Purchases" (userid, itemid, date) values (108, 62, '2022-05-31 01:27:52');
insert into public."Purchases" (userid, itemid, date) values (193, 237, '2022-07-05 14:50:52');
insert into public."Purchases" (userid, itemid, date) values (47, 317, '2022-02-10 17:46:53');
insert into public."Purchases" (userid, itemid, date) values (33, 248, '2022-06-10 07:06:57');
insert into public."Purchases" (userid, itemid, date) values (145, 108, '2022-05-13 02:58:26');
insert into public."Purchases" (userid, itemid, date) values (49, 26, '2022-09-22 15:44:45');
insert into public."Purchases" (userid, itemid, date) values (108, 204, '2022-02-14 05:29:52');
insert into public."Purchases" (userid, itemid, date) values (150, 250, '2022-08-05 12:40:49');
insert into public."Purchases" (userid, itemid, date) values (98, 46, '2022-02-23 23:28:27');
insert into public."Purchases" (userid, itemid, date) values (79, 98, '2022-08-03 19:03:40');
insert into public."Purchases" (userid, itemid, date) values (166, 8, '2022-01-03 13:36:04');
insert into public."Purchases" (userid, itemid, date) values (31, 95, '2022-01-27 01:27:32');
insert into public."Purchases" (userid, itemid, date) values (107, 309, '2022-02-01 12:54:08');
insert into public."Purchases" (userid, itemid, date) values (96, 47, '2022-11-04 16:24:01');
insert into public."Purchases" (userid, itemid, date) values (121, 83, '2022-10-29 04:46:13');
insert into public."Purchases" (userid, itemid, date) values (13, 135, '2022-02-04 10:28:29');
insert into public."Purchases" (userid, itemid, date) values (33, 187, '2022-05-18 19:09:37');
insert into public."Purchases" (userid, itemid, date) values (76, 59, '2022-05-07 03:27:46');
insert into public."Purchases" (userid, itemid, date) values (103, 111, '2022-04-22 17:51:16');
insert into public."Purchases" (userid, itemid, date) values (130, 8, '2022-08-05 21:35:15');
insert into public."Purchases" (userid, itemid, date) values (34, 11, '2022-05-07 07:37:36');
insert into public."Purchases" (userid, itemid, date) values (12, 267, '2022-09-13 12:47:06');
insert into public."Purchases" (userid, itemid, date) values (8, 258, '2022-02-13 20:19:34');
insert into public."Purchases" (userid, itemid, date) values (51, 289, '2022-01-10 17:49:41');
insert into public."Purchases" (userid, itemid, date) values (161, 53, '2022-08-09 13:46:48');
insert into public."Purchases" (userid, itemid, date) values (139, 197, '2022-11-08 13:24:00');
insert into public."Purchases" (userid, itemid, date) values (106, 44, '2022-07-12 07:05:33');
insert into public."Purchases" (userid, itemid, date) values (69, 2, '2022-04-05 11:41:18');
insert into public."Purchases" (userid, itemid, date) values (69, 277, '2022-07-17 00:33:31');
insert into public."Purchases" (userid, itemid, date) values (188, 314, '2022-08-16 10:59:01');
insert into public."Purchases" (userid, itemid, date) values (68, 194, '2022-09-08 17:24:06');
insert into public."Purchases" (userid, itemid, date) values (138, 140, '2022-04-11 13:40:36');
insert into public."Purchases" (userid, itemid, date) values (54, 214, '2022-04-02 18:36:52');
insert into public."Purchases" (userid, itemid, date) values (86, 213, '2022-09-03 02:42:00');
insert into public."Purchases" (userid, itemid, date) values (113, 99, '2022-01-22 20:25:11');
insert into public."Purchases" (userid, itemid, date) values (23, 57, '2022-05-14 21:27:00');
insert into public."Purchases" (userid, itemid, date) values (28, 173, '2022-06-06 16:17:28');
insert into public."Purchases" (userid, itemid, date) values (174, 348, '2022-06-27 14:08:39');
insert into public."Purchases" (userid, itemid, date) values (176, 234, '2022-02-21 01:39:36');
insert into public."Purchases" (userid, itemid, date) values (177, 152, '2022-07-04 05:14:45');
insert into public."Purchases" (userid, itemid, date) values (134, 214, '2022-05-25 14:28:18');
insert into public."Purchases" (userid, itemid, date) values (142, 8, '2022-01-06 20:13:00');
insert into public."Purchases" (userid, itemid, date) values (136, 176, '2022-09-17 03:41:07');
insert into public."Purchases" (userid, itemid, date) values (126, 221, '2022-09-13 21:56:06');
insert into public."Purchases" (userid, itemid, date) values (110, 17, '2022-04-17 03:45:25');
insert into public."Purchases" (userid, itemid, date) values (54, 125, '2021-12-27 06:39:44');
insert into public."Purchases" (userid, itemid, date) values (80, 289, '2022-08-10 16:17:42');
insert into public."Purchases" (userid, itemid, date) values (55, 119, '2022-08-22 07:17:48');
insert into public."Purchases" (userid, itemid, date) values (10, 117, '2022-08-26 12:42:39');
insert into public."Purchases" (userid, itemid, date) values (82, 155, '2022-04-25 05:58:30');
insert into public."Purchases" (userid, itemid, date) values (167, 203, '2022-07-12 19:31:50');
insert into public."Purchases" (userid, itemid, date) values (122, 57, '2022-03-18 22:16:35');
insert into public."Purchases" (userid, itemid, date) values (23, 53, '2022-10-27 20:21:28');
insert into public."Purchases" (userid, itemid, date) values (112, 37, '2022-02-05 07:49:20');
insert into public."Purchases" (userid, itemid, date) values (33, 343, '2022-02-12 18:31:58');
insert into public."Purchases" (userid, itemid, date) values (104, 10, '2022-09-29 22:00:06');
insert into public."Purchases" (userid, itemid, date) values (64, 321, '2021-11-19 16:15:44');
insert into public."Purchases" (userid, itemid, date) values (148, 224, '2022-04-25 16:56:09');
insert into public."Purchases" (userid, itemid, date) values (142, 116, '2022-06-09 03:35:20');
insert into public."Purchases" (userid, itemid, date) values (74, 305, '2022-07-18 03:20:17');
insert into public."Purchases" (userid, itemid, date) values (101, 157, '2022-10-21 22:35:15');
insert into public."Purchases" (userid, itemid, date) values (134, 68, '2022-02-20 17:46:42');
insert into public."Purchases" (userid, itemid, date) values (107, 2, '2021-12-06 07:59:16');
insert into public."Purchases" (userid, itemid, date) values (92, 271, '2022-03-15 02:36:06');
insert into public."Purchases" (userid, itemid, date) values (180, 314, '2022-06-12 20:15:59');
insert into public."Purchases" (userid, itemid, date) values (71, 90, '2022-06-11 00:57:26');
insert into public."Purchases" (userid, itemid, date) values (8, 317, '2022-06-19 11:07:35');
insert into public."Purchases" (userid, itemid, date) values (16, 65, '2021-11-11 09:26:44');
insert into public."Purchases" (userid, itemid, date) values (5, 333, '2021-12-04 17:44:57');
insert into public."Purchases" (userid, itemid, date) values (76, 286, '2021-12-27 05:35:21');
insert into public."Purchases" (userid, itemid, date) values (40, 178, '2022-07-22 04:00:02');
insert into public."Purchases" (userid, itemid, date) values (135, 219, '2022-06-08 07:59:56');
insert into public."Purchases" (userid, itemid, date) values (113, 8, '2022-09-21 08:36:18');
insert into public."Purchases" (userid, itemid, date) values (10, 266, '2022-10-20 07:23:06');
insert into public."Purchases" (userid, itemid, date) values (136, 102, '2022-05-19 00:41:54');
insert into public."Purchases" (userid, itemid, date) values (2, 170, '2022-04-13 20:26:48');
insert into public."Purchases" (userid, itemid, date) values (153, 94, '2022-03-05 01:14:19');
insert into public."Purchases" (userid, itemid, date) values (195, 338, '2021-11-28 01:36:16');
insert into public."Purchases" (userid, itemid, date) values (86, 26, '2022-03-12 21:29:14');
insert into public."Purchases" (userid, itemid, date) values (178, 116, '2022-04-29 21:28:33');
insert into public."Purchases" (userid, itemid, date) values (197, 184, '2022-06-11 18:24:32');
insert into public."Purchases" (userid, itemid, date) values (121, 335, '2022-04-18 16:09:55');
insert into public."Purchases" (userid, itemid, date) values (76, 246, '2022-09-25 12:34:26');
insert into public."Purchases" (userid, itemid, date) values (123, 40, '2022-02-06 05:30:06');
insert into public."Purchases" (userid, itemid, date) values (156, 339, '2022-02-17 15:18:49');
insert into public."Purchases" (userid, itemid, date) values (17, 119, '2022-01-13 23:45:50');
insert into public."Purchases" (userid, itemid, date) values (199, 231, '2022-09-21 02:29:28');
insert into public."Purchases" (userid, itemid, date) values (102, 222, '2022-05-14 14:58:22');
insert into public."Purchases" (userid, itemid, date) values (162, 193, '2022-08-26 17:50:37');
insert into public."Purchases" (userid, itemid, date) values (164, 350, '2022-08-18 02:11:31');
insert into public."Purchases" (userid, itemid, date) values (31, 180, '2021-11-11 16:51:56');
insert into public."Purchases" (userid, itemid, date) values (119, 102, '2022-09-24 10:09:37');
insert into public."Purchases" (userid, itemid, date) values (199, 332, '2022-09-13 22:49:01');
insert into public."Purchases" (userid, itemid, date) values (53, 306, '2022-08-27 00:54:18');
insert into public."Purchases" (userid, itemid, date) values (64, 323, '2021-11-21 20:27:52');
insert into public."Purchases" (userid, itemid, date) values (173, 21, '2022-08-17 22:38:15');
insert into public."Purchases" (userid, itemid, date) values (3, 167, '2022-04-26 18:07:18');
insert into public."Purchases" (userid, itemid, date) values (115, 98, '2021-12-30 04:53:31');
insert into public."Purchases" (userid, itemid, date) values (137, 196, '2022-07-06 00:17:44');
insert into public."Purchases" (userid, itemid, date) values (167, 22, '2022-07-04 13:04:33');
insert into public."Purchases" (userid, itemid, date) values (183, 291, '2022-03-06 20:10:34');
insert into public."Purchases" (userid, itemid, date) values (157, 122, '2021-12-27 08:49:01');
insert into public."Purchases" (userid, itemid, date) values (12, 244, '2022-08-31 13:18:10');
insert into public."Purchases" (userid, itemid, date) values (42, 21, '2022-03-14 06:46:56');
insert into public."Purchases" (userid, itemid, date) values (65, 184, '2021-11-21 16:04:25');
insert into public."Purchases" (userid, itemid, date) values (26, 53, '2021-11-14 00:40:16');
insert into public."Purchases" (userid, itemid, date) values (8, 10, '2022-09-20 05:17:51');
insert into public."Purchases" (userid, itemid, date) values (80, 42, '2021-11-09 12:00:12');
insert into public."Purchases" (userid, itemid, date) values (18, 293, '2022-03-20 18:22:51');
insert into public."Purchases" (userid, itemid, date) values (152, 51, '2022-10-25 22:19:19');
insert into public."Purchases" (userid, itemid, date) values (187, 63, '2022-05-28 09:51:32');
insert into public."Purchases" (userid, itemid, date) values (97, 332, '2022-10-30 21:31:08');
insert into public."Purchases" (userid, itemid, date) values (130, 344, '2022-02-22 03:36:28');
insert into public."Purchases" (userid, itemid, date) values (157, 212, '2022-06-14 12:41:52');
insert into public."Purchases" (userid, itemid, date) values (74, 49, '2022-07-30 16:27:02');
insert into public."Purchases" (userid, itemid, date) values (176, 314, '2022-02-20 07:12:00');
insert into public."Purchases" (userid, itemid, date) values (163, 340, '2022-10-01 09:38:09');
insert into public."Purchases" (userid, itemid, date) values (34, 18, '2022-07-04 23:36:13');
insert into public."Purchases" (userid, itemid, date) values (129, 266, '2021-11-11 16:45:08');
insert into public."Purchases" (userid, itemid, date) values (20, 334, '2022-09-03 02:20:23');
insert into public."Purchases" (userid, itemid, date) values (31, 45, '2022-07-11 08:46:16');
insert into public."Purchases" (userid, itemid, date) values (104, 45, '2022-01-05 08:17:36');
insert into public."Purchases" (userid, itemid, date) values (53, 341, '2022-02-03 02:47:23');
insert into public."Purchases" (userid, itemid, date) values (130, 153, '2022-05-30 06:22:04');
insert into public."Purchases" (userid, itemid, date) values (197, 195, '2022-04-14 05:17:47');
insert into public."Purchases" (userid, itemid, date) values (163, 150, '2021-11-17 17:45:14');
insert into public."Purchases" (userid, itemid, date) values (59, 116, '2022-06-25 02:13:18');
insert into public."Purchases" (userid, itemid, date) values (147, 327, '2022-09-26 19:26:09');
insert into public."Purchases" (userid, itemid, date) values (89, 54, '2021-11-09 17:18:07');
insert into public."Purchases" (userid, itemid, date) values (153, 270, '2022-09-20 12:33:34');
insert into public."Purchases" (userid, itemid, date) values (194, 222, '2021-12-21 11:06:19');
insert into public."Purchases" (userid, itemid, date) values (65, 259, '2021-12-20 22:35:15');
insert into public."Purchases" (userid, itemid, date) values (103, 299, '2022-01-22 08:52:45');
insert into public."Purchases" (userid, itemid, date) values (150, 230, '2022-06-18 11:55:54');
insert into public."Purchases" (userid, itemid, date) values (146, 277, '2022-04-18 03:28:24');
insert into public."Purchases" (userid, itemid, date) values (117, 256, '2022-02-27 13:03:03');
insert into public."Purchases" (userid, itemid, date) values (36, 248, '2022-11-06 23:39:27');
insert into public."Purchases" (userid, itemid, date) values (45, 345, '2021-11-16 01:34:26');
insert into public."Purchases" (userid, itemid, date) values (11, 348, '2022-02-02 22:02:13');
insert into public."Purchases" (userid, itemid, date) values (15, 57, '2022-02-21 20:20:09');
insert into public."Purchases" (userid, itemid, date) values (163, 287, '2022-06-03 13:01:59');
insert into public."Purchases" (userid, itemid, date) values (92, 48, '2022-03-11 10:50:12');
insert into public."Purchases" (userid, itemid, date) values (19, 188, '2022-06-29 05:48:33');
insert into public."Purchases" (userid, itemid, date) values (126, 49, '2022-08-18 01:08:18');
insert into public."Purchases" (userid, itemid, date) values (48, 326, '2022-10-17 23:12:39');
insert into public."Purchases" (userid, itemid, date) values (179, 243, '2022-03-09 10:57:12');
insert into public."Purchases" (userid, itemid, date) values (98, 140, '2022-04-14 16:59:27');
insert into public."Purchases" (userid, itemid, date) values (143, 275, '2021-11-25 02:07:29');
insert into public."Purchases" (userid, itemid, date) values (133, 85, '2022-04-26 23:58:02');
insert into public."Purchases" (userid, itemid, date) values (61, 255, '2022-04-25 20:38:06');
insert into public."Purchases" (userid, itemid, date) values (160, 285, '2021-12-31 19:34:20');
insert into public."Purchases" (userid, itemid, date) values (26, 303, '2022-07-29 03:26:08');
insert into public."Purchases" (userid, itemid, date) values (155, 216, '2022-06-04 04:58:13');
insert into public."Purchases" (userid, itemid, date) values (102, 228, '2021-12-31 16:54:30');
insert into public."Purchases" (userid, itemid, date) values (175, 287, '2022-02-20 09:47:04');
insert into public."Purchases" (userid, itemid, date) values (170, 128, '2022-05-20 14:54:45');
insert into public."Purchases" (userid, itemid, date) values (56, 252, '2022-10-13 02:57:47');
insert into public."Purchases" (userid, itemid, date) values (65, 97, '2022-01-27 14:57:35');
insert into public."Purchases" (userid, itemid, date) values (140, 33, '2022-06-09 19:36:50');
insert into public."Purchases" (userid, itemid, date) values (88, 27, '2022-02-12 17:14:27');
insert into public."Purchases" (userid, itemid, date) values (197, 293, '2022-01-22 22:22:23');
insert into public."Purchases" (userid, itemid, date) values (82, 90, '2022-04-23 03:07:18');
insert into public."Purchases" (userid, itemid, date) values (102, 177, '2021-12-27 22:51:02');
insert into public."Purchases" (userid, itemid, date) values (187, 160, '2022-05-13 20:54:37');
insert into public."Purchases" (userid, itemid, date) values (29, 127, '2021-11-21 04:19:11');
insert into public."Purchases" (userid, itemid, date) values (26, 234, '2022-10-12 20:00:07');
insert into public."Purchases" (userid, itemid, date) values (41, 7, '2022-07-25 11:24:40');
insert into public."Purchases" (userid, itemid, date) values (160, 104, '2022-06-16 04:32:07');
insert into public."Purchases" (userid, itemid, date) values (92, 97, '2022-05-02 17:59:27');
insert into public."Purchases" (userid, itemid, date) values (195, 243, '2021-12-28 23:14:18');
insert into public."Purchases" (userid, itemid, date) values (15, 215, '2022-05-04 18:31:13');
insert into public."Purchases" (userid, itemid, date) values (54, 58, '2022-10-08 00:16:30');
insert into public."Purchases" (userid, itemid, date) values (160, 92, '2022-02-10 05:00:24');
insert into public."Purchases" (userid, itemid, date) values (118, 342, '2022-06-19 01:56:04');
insert into public."Purchases" (userid, itemid, date) values (140, 221, '2022-06-20 12:51:17');
insert into public."Purchases" (userid, itemid, date) values (37, 297, '2022-10-12 08:13:29');
insert into public."Purchases" (userid, itemid, date) values (197, 192, '2022-01-16 06:30:11');
insert into public."Purchases" (userid, itemid, date) values (12, 107, '2022-08-17 18:27:14');
insert into public."Purchases" (userid, itemid, date) values (33, 225, '2022-06-17 21:20:06');
insert into public."Purchases" (userid, itemid, date) values (71, 326, '2022-01-06 07:22:20');
insert into public."Purchases" (userid, itemid, date) values (166, 102, '2022-07-30 15:11:20');
insert into public."Purchases" (userid, itemid, date) values (88, 320, '2022-09-25 05:00:39');
insert into public."Purchases" (userid, itemid, date) values (138, 93, '2022-06-22 06:49:18');
insert into public."Purchases" (userid, itemid, date) values (147, 122, '2022-06-21 15:25:19');
insert into public."Purchases" (userid, itemid, date) values (105, 316, '2021-12-30 00:32:26');
insert into public."Purchases" (userid, itemid, date) values (147, 189, '2022-03-31 17:59:17');
insert into public."Purchases" (userid, itemid, date) values (26, 76, '2022-02-05 15:55:20');
insert into public."Purchases" (userid, itemid, date) values (195, 59, '2022-05-23 03:38:50');
insert into public."Purchases" (userid, itemid, date) values (189, 163, '2022-03-29 03:09:08');
insert into public."Purchases" (userid, itemid, date) values (185, 290, '2022-10-27 17:39:23');
insert into public."Purchases" (userid, itemid, date) values (110, 138, '2021-12-12 19:14:34');
insert into public."Purchases" (userid, itemid, date) values (137, 299, '2022-06-12 02:06:47');
insert into public."Purchases" (userid, itemid, date) values (148, 157, '2022-01-27 07:28:08');
insert into public."Purchases" (userid, itemid, date) values (59, 33, '2022-05-07 14:18:26');
insert into public."Purchases" (userid, itemid, date) values (145, 13, '2021-11-11 00:16:18');
insert into public."Purchases" (userid, itemid, date) values (103, 103, '2021-11-29 10:04:16');
insert into public."Purchases" (userid, itemid, date) values (163, 192, '2022-02-24 16:01:17');
insert into public."Purchases" (userid, itemid, date) values (130, 347, '2022-03-20 20:09:12');
insert into public."Purchases" (userid, itemid, date) values (177, 37, '2021-11-21 08:58:43');
insert into public."Purchases" (userid, itemid, date) values (196, 124, '2022-10-06 23:48:20');
insert into public."Purchases" (userid, itemid, date) values (41, 131, '2021-12-20 22:13:49');
insert into public."Purchases" (userid, itemid, date) values (149, 108, '2022-09-04 19:27:16');
insert into public."Purchases" (userid, itemid, date) values (107, 160, '2022-08-04 01:39:16');
insert into public."Purchases" (userid, itemid, date) values (85, 17, '2022-04-12 23:36:50');
insert into public."Purchases" (userid, itemid, date) values (88, 164, '2022-10-10 12:30:14');
insert into public."Purchases" (userid, itemid, date) values (126, 78, '2021-12-13 16:17:22');
insert into public."Purchases" (userid, itemid, date) values (36, 174, '2022-06-04 10:05:08');
insert into public."Purchases" (userid, itemid, date) values (63, 275, '2022-09-26 16:03:32');
insert into public."Purchases" (userid, itemid, date) values (127, 208, '2022-06-01 10:09:55');
insert into public."Purchases" (userid, itemid, date) values (17, 183, '2022-10-31 04:24:20');
insert into public."Purchases" (userid, itemid, date) values (106, 153, '2022-07-30 18:13:05');
insert into public."Purchases" (userid, itemid, date) values (99, 273, '2022-01-15 16:55:12');
insert into public."Purchases" (userid, itemid, date) values (19, 55, '2022-08-02 15:45:48');
insert into public."Purchases" (userid, itemid, date) values (57, 3, '2022-08-18 09:18:22');
insert into public."Purchases" (userid, itemid, date) values (78, 166, '2022-01-04 17:57:07');
insert into public."Purchases" (userid, itemid, date) values (135, 122, '2022-08-04 11:40:52');
insert into public."Purchases" (userid, itemid, date) values (159, 24, '2022-08-24 19:35:40');
insert into public."Purchases" (userid, itemid, date) values (181, 335, '2021-12-23 19:51:34');
insert into public."Purchases" (userid, itemid, date) values (148, 57, '2022-10-06 09:50:42');
insert into public."Purchases" (userid, itemid, date) values (69, 101, '2021-12-27 16:14:29');
insert into public."Purchases" (userid, itemid, date) values (81, 31, '2022-03-04 14:07:00');
insert into public."Purchases" (userid, itemid, date) values (159, 17, '2022-07-26 01:09:39');
insert into public."Purchases" (userid, itemid, date) values (189, 215, '2022-09-09 11:19:56');
insert into public."Purchases" (userid, itemid, date) values (164, 238, '2022-06-27 08:24:43');
insert into public."Purchases" (userid, itemid, date) values (169, 268, '2022-09-10 04:58:10');
insert into public."Purchases" (userid, itemid, date) values (62, 20, '2022-10-03 01:06:10');
insert into public."Purchases" (userid, itemid, date) values (148, 239, '2022-03-16 06:18:32');
insert into public."Purchases" (userid, itemid, date) values (168, 43, '2022-06-18 08:55:04');
insert into public."Purchases" (userid, itemid, date) values (150, 181, '2022-01-20 12:41:13');
insert into public."Purchases" (userid, itemid, date) values (38, 172, '2022-08-22 01:46:28');
insert into public."Purchases" (userid, itemid, date) values (159, 287, '2022-09-18 03:34:05');
insert into public."Purchases" (userid, itemid, date) values (10, 80, '2022-06-22 19:22:16');
insert into public."Purchases" (userid, itemid, date) values (169, 228, '2022-03-27 01:04:38');
insert into public."Purchases" (userid, itemid, date) values (46, 300, '2022-04-22 22:32:23');
insert into public."Purchases" (userid, itemid, date) values (138, 280, '2022-04-13 05:03:30');
insert into public."Purchases" (userid, itemid, date) values (116, 109, '2022-04-26 05:12:23');
insert into public."Purchases" (userid, itemid, date) values (69, 218, '2022-05-20 04:04:52');
insert into public."Purchases" (userid, itemid, date) values (171, 166, '2021-11-20 17:22:04');
insert into public."Purchases" (userid, itemid, date) values (44, 20, '2022-08-07 23:41:48');
insert into public."Purchases" (userid, itemid, date) values (16, 183, '2022-03-19 08:46:58');
insert into public."Purchases" (userid, itemid, date) values (43, 91, '2022-02-20 16:46:32');
insert into public."Purchases" (userid, itemid, date) values (41, 228, '2022-08-02 12:36:00');
insert into public."Purchases" (userid, itemid, date) values (181, 33, '2022-04-09 22:57:52');
insert into public."Purchases" (userid, itemid, date) values (92, 347, '2021-11-22 06:11:55');
insert into public."Purchases" (userid, itemid, date) values (33, 289, '2022-08-07 11:04:52');
insert into public."Purchases" (userid, itemid, date) values (84, 241, '2021-11-10 19:29:01');
insert into public."Purchases" (userid, itemid, date) values (144, 135, '2022-10-27 13:28:16');
insert into public."Purchases" (userid, itemid, date) values (62, 295, '2022-07-31 11:36:43');
insert into public."Purchases" (userid, itemid, date) values (27, 2, '2022-03-22 04:29:47');
insert into public."Purchases" (userid, itemid, date) values (98, 9, '2021-12-30 19:39:41');
insert into public."Purchases" (userid, itemid, date) values (197, 25, '2022-07-27 08:02:59');
insert into public."Purchases" (userid, itemid, date) values (40, 321, '2022-04-21 06:07:39');
insert into public."Purchases" (userid, itemid, date) values (91, 329, '2021-11-09 06:41:05');
insert into public."Purchases" (userid, itemid, date) values (110, 49, '2022-02-24 02:20:41');
insert into public."Purchases" (userid, itemid, date) values (9, 186, '2022-10-25 05:23:11');
insert into public."Purchases" (userid, itemid, date) values (50, 160, '2022-04-10 02:57:47');
insert into public."Purchases" (userid, itemid, date) values (167, 134, '2022-05-11 10:50:23');
insert into public."Purchases" (userid, itemid, date) values (127, 292, '2022-06-24 19:02:44');
insert into public."Purchases" (userid, itemid, date) values (36, 225, '2022-01-24 02:10:57');
insert into public."Purchases" (userid, itemid, date) values (89, 81, '2022-09-26 00:40:28');
insert into public."Purchases" (userid, itemid, date) values (39, 189, '2022-02-14 04:33:04');
insert into public."Purchases" (userid, itemid, date) values (74, 261, '2022-11-06 16:10:11');
insert into public."Purchases" (userid, itemid, date) values (111, 42, '2021-12-14 13:16:41');
insert into public."Purchases" (userid, itemid, date) values (16, 2, '2022-09-03 19:06:00');
insert into public."Purchases" (userid, itemid, date) values (148, 309, '2022-10-16 17:49:40');
insert into public."Purchases" (userid, itemid, date) values (87, 289, '2022-10-28 15:18:17');
insert into public."Purchases" (userid, itemid, date) values (152, 213, '2022-06-18 12:49:37');
insert into public."Purchases" (userid, itemid, date) values (18, 257, '2022-03-15 08:15:10');
insert into public."Purchases" (userid, itemid, date) values (70, 70, '2022-05-07 01:34:09');
insert into public."Purchases" (userid, itemid, date) values (74, 215, '2022-04-20 17:50:04');
insert into public."Purchases" (userid, itemid, date) values (192, 6, '2022-06-11 02:27:24');
insert into public."Purchases" (userid, itemid, date) values (113, 288, '2022-04-01 00:10:41');
insert into public."Purchases" (userid, itemid, date) values (191, 146, '2022-02-20 04:27:42');
insert into public."Purchases" (userid, itemid, date) values (54, 344, '2022-01-31 14:44:15');
insert into public."Purchases" (userid, itemid, date) values (89, 22, '2021-12-15 22:24:19');
insert into public."Purchases" (userid, itemid, date) values (19, 322, '2022-06-02 20:00:04');
insert into public."Purchases" (userid, itemid, date) values (60, 315, '2022-05-30 19:12:28');
insert into public."Purchases" (userid, itemid, date) values (102, 306, '2022-07-05 22:04:26');
insert into public."Purchases" (userid, itemid, date) values (2, 85, '2022-07-15 02:45:39');
insert into public."Purchases" (userid, itemid, date) values (112, 113, '2022-01-20 02:49:10');
insert into public."Purchases" (userid, itemid, date) values (30, 331, '2022-03-21 15:18:38');
insert into public."Purchases" (userid, itemid, date) values (170, 270, '2022-05-21 15:15:51');
insert into public."Purchases" (userid, itemid, date) values (191, 137, '2021-11-16 19:20:44');
insert into public."Purchases" (userid, itemid, date) values (196, 138, '2022-04-16 00:00:01');
insert into public."Purchases" (userid, itemid, date) values (27, 143, '2022-09-27 00:13:53');
insert into public."Purchases" (userid, itemid, date) values (151, 69, '2021-11-14 11:47:46');
insert into public."Purchases" (userid, itemid, date) values (194, 100, '2022-07-11 06:09:29');
insert into public."Purchases" (userid, itemid, date) values (72, 17, '2022-05-25 04:24:51');
insert into public."Purchases" (userid, itemid, date) values (173, 142, '2021-11-11 08:00:23');
insert into public."Purchases" (userid, itemid, date) values (20, 341, '2022-01-13 10:37:37');
insert into public."Purchases" (userid, itemid, date) values (137, 172, '2022-01-05 01:23:01');
insert into public."Purchases" (userid, itemid, date) values (85, 181, '2022-04-20 02:07:34');
insert into public."Purchases" (userid, itemid, date) values (142, 106, '2022-03-08 15:06:02');
insert into public."Purchases" (userid, itemid, date) values (74, 292, '2021-12-16 09:27:37');
insert into public."Purchases" (userid, itemid, date) values (11, 165, '2021-12-28 13:44:01');
insert into public."Purchases" (userid, itemid, date) values (1, 26, '2022-07-17 09:04:47');
insert into public."Purchases" (userid, itemid, date) values (159, 262, '2022-11-06 10:01:34');
insert into public."Purchases" (userid, itemid, date) values (105, 268, '2022-10-23 04:36:53');
insert into public."Purchases" (userid, itemid, date) values (71, 187, '2021-11-20 01:08:03');
insert into public."Purchases" (userid, itemid, date) values (187, 215, '2022-07-12 05:23:04');
insert into public."Purchases" (userid, itemid, date) values (9, 38, '2021-11-10 17:39:17');
insert into public."Purchases" (userid, itemid, date) values (76, 193, '2022-06-30 16:49:03');
insert into public."Purchases" (userid, itemid, date) values (126, 2, '2022-04-16 10:01:35');
insert into public."Purchases" (userid, itemid, date) values (121, 146, '2022-04-28 04:47:26');
insert into public."Purchases" (userid, itemid, date) values (49, 249, '2022-09-27 12:51:58');
insert into public."Purchases" (userid, itemid, date) values (169, 299, '2022-06-01 01:53:33');
insert into public."Purchases" (userid, itemid, date) values (156, 13, '2022-01-10 18:16:13');
insert into public."Purchases" (userid, itemid, date) values (143, 223, '2022-01-08 22:13:49');
insert into public."Purchases" (userid, itemid, date) values (156, 280, '2022-09-23 06:36:05');
insert into public."Purchases" (userid, itemid, date) values (182, 85, '2022-03-31 09:43:45');
insert into public."Purchases" (userid, itemid, date) values (190, 78, '2022-03-25 05:05:24');
insert into public."Purchases" (userid, itemid, date) values (53, 126, '2022-10-25 15:41:13');
insert into public."Purchases" (userid, itemid, date) values (129, 291, '2021-11-20 09:27:18');
insert into public."Purchases" (userid, itemid, date) values (72, 333, '2021-11-29 02:40:51');
insert into public."Purchases" (userid, itemid, date) values (53, 243, '2022-08-29 22:33:25');
insert into public."Purchases" (userid, itemid, date) values (63, 244, '2022-07-05 01:07:53');
insert into public."Purchases" (userid, itemid, date) values (70, 141, '2022-07-08 14:01:04');
insert into public."Purchases" (userid, itemid, date) values (125, 48, '2022-07-30 19:26:15');
insert into public."Purchases" (userid, itemid, date) values (76, 103, '2022-06-18 04:57:53');
insert into public."Purchases" (userid, itemid, date) values (199, 246, '2022-03-24 06:52:13');
insert into public."Purchases" (userid, itemid, date) values (3, 223, '2022-06-13 19:30:10');
insert into public."Purchases" (userid, itemid, date) values (182, 163, '2021-11-20 03:20:15');
insert into public."Purchases" (userid, itemid, date) values (31, 336, '2022-09-23 10:56:20');
insert into public."Purchases" (userid, itemid, date) values (150, 213, '2022-03-11 07:20:33');
insert into public."Purchases" (userid, itemid, date) values (189, 322, '2021-11-27 09:02:44');
insert into public."Purchases" (userid, itemid, date) values (140, 236, '2022-01-10 01:04:19');
insert into public."Purchases" (userid, itemid, date) values (30, 25, '2022-08-14 19:21:55');
insert into public."Purchases" (userid, itemid, date) values (190, 28, '2022-07-05 15:01:56');
insert into public."Purchases" (userid, itemid, date) values (114, 308, '2022-08-10 18:40:13');
insert into public."Purchases" (userid, itemid, date) values (23, 134, '2022-04-12 20:44:52');
insert into public."Purchases" (userid, itemid, date) values (183, 204, '2022-10-06 22:03:13');
insert into public."Purchases" (userid, itemid, date) values (155, 224, '2022-11-02 12:10:25');
insert into public."Purchases" (userid, itemid, date) values (55, 149, '2022-07-26 03:19:01');
insert into public."Purchases" (userid, itemid, date) values (4, 234, '2022-02-25 18:26:48');
insert into public."Purchases" (userid, itemid, date) values (6, 176, '2022-01-24 00:28:05');
insert into public."Purchases" (userid, itemid, date) values (192, 25, '2022-09-17 11:52:31');
insert into public."Purchases" (userid, itemid, date) values (92, 185, '2022-11-07 16:54:59');
insert into public."Purchases" (userid, itemid, date) values (196, 349, '2022-05-21 07:09:40');
insert into public."Purchases" (userid, itemid, date) values (85, 182, '2022-04-25 09:36:15');
insert into public."Purchases" (userid, itemid, date) values (76, 199, '2022-03-20 22:15:35');
insert into public."Purchases" (userid, itemid, date) values (46, 220, '2022-10-22 04:21:08');
insert into public."Purchases" (userid, itemid, date) values (52, 205, '2022-01-05 03:28:12');
insert into public."Purchases" (userid, itemid, date) values (178, 173, '2022-02-13 16:33:32');
insert into public."Purchases" (userid, itemid, date) values (34, 263, '2022-06-15 05:22:08');
insert into public."Purchases" (userid, itemid, date) values (188, 295, '2022-06-20 16:03:16');
insert into public."Purchases" (userid, itemid, date) values (60, 86, '2022-03-22 01:04:25');
insert into public."Purchases" (userid, itemid, date) values (114, 86, '2022-04-20 20:17:14');
insert into public."Purchases" (userid, itemid, date) values (59, 79, '2022-03-02 08:27:33');
insert into public."Purchases" (userid, itemid, date) values (2, 270, '2022-09-21 23:50:34');
insert into public."Purchases" (userid, itemid, date) values (63, 204, '2022-01-12 11:09:42');
insert into public."Purchases" (userid, itemid, date) values (184, 264, '2022-01-10 04:48:29');
insert into public."Purchases" (userid, itemid, date) values (182, 308, '2021-12-13 03:23:45');
insert into public."Purchases" (userid, itemid, date) values (179, 135, '2022-06-04 20:56:47');
insert into public."Purchases" (userid, itemid, date) values (119, 241, '2021-12-13 16:23:28');
insert into public."Purchases" (userid, itemid, date) values (57, 331, '2022-09-28 09:14:37');
insert into public."Purchases" (userid, itemid, date) values (59, 144, '2022-07-12 23:04:07');
insert into public."Purchases" (userid, itemid, date) values (73, 136, '2022-01-11 03:28:19');
insert into public."Purchases" (userid, itemid, date) values (112, 200, '2022-07-21 13:57:09');
insert into public."Purchases" (userid, itemid, date) values (13, 18, '2021-11-21 21:12:15');
insert into public."Purchases" (userid, itemid, date) values (64, 170, '2022-10-27 05:31:31');
insert into public."Purchases" (userid, itemid, date) values (57, 233, '2022-10-28 17:50:44');
insert into public."Purchases" (userid, itemid, date) values (84, 55, '2022-05-21 12:37:01');
insert into public."Purchases" (userid, itemid, date) values (86, 16, '2022-02-04 15:36:46');
insert into public."Purchases" (userid, itemid, date) values (127, 136, '2022-04-02 18:13:38');
insert into public."Purchases" (userid, itemid, date) values (54, 86, '2022-05-31 20:26:16');
insert into public."Purchases" (userid, itemid, date) values (104, 83, '2022-07-10 07:16:22');
insert into public."Purchases" (userid, itemid, date) values (17, 179, '2022-04-04 06:59:54');
insert into public."Purchases" (userid, itemid, date) values (54, 259, '2022-06-26 22:25:04');
insert into public."Purchases" (userid, itemid, date) values (139, 57, '2022-01-13 21:58:35');
insert into public."Purchases" (userid, itemid, date) values (86, 272, '2022-05-08 22:16:59');
insert into public."Purchases" (userid, itemid, date) values (70, 298, '2022-11-06 18:10:58');
insert into public."Purchases" (userid, itemid, date) values (73, 213, '2022-01-18 06:18:05');
insert into public."Purchases" (userid, itemid, date) values (87, 297, '2022-07-14 13:11:47');
insert into public."Purchases" (userid, itemid, date) values (195, 6, '2022-08-13 16:56:50');
insert into public."Purchases" (userid, itemid, date) values (45, 165, '2021-12-21 20:02:13');
insert into public."Purchases" (userid, itemid, date) values (168, 122, '2022-09-13 18:11:08');
insert into public."Purchases" (userid, itemid, date) values (43, 226, '2022-05-02 13:11:21');
insert into public."Purchases" (userid, itemid, date) values (194, 205, '2022-03-23 09:18:20');
insert into public."Purchases" (userid, itemid, date) values (162, 143, '2022-04-22 00:22:49');
insert into public."Purchases" (userid, itemid, date) values (187, 60, '2022-03-10 05:06:43');
insert into public."Purchases" (userid, itemid, date) values (128, 290, '2022-05-10 08:18:28');
insert into public."Purchases" (userid, itemid, date) values (39, 338, '2022-01-23 18:59:49');
insert into public."Purchases" (userid, itemid, date) values (44, 20, '2022-09-28 06:22:25');
insert into public."Purchases" (userid, itemid, date) values (81, 295, '2022-05-04 19:31:01');
insert into public."Purchases" (userid, itemid, date) values (70, 178, '2022-10-15 12:26:56');
insert into public."Purchases" (userid, itemid, date) values (46, 56, '2022-01-11 06:40:45');
insert into public."Purchases" (userid, itemid, date) values (187, 120, '2022-04-25 16:57:23');
insert into public."Purchases" (userid, itemid, date) values (35, 252, '2022-09-24 09:26:39');
insert into public."Purchases" (userid, itemid, date) values (152, 3, '2022-02-25 21:39:43');
insert into public."Purchases" (userid, itemid, date) values (76, 109, '2021-12-25 11:44:31');
insert into public."Purchases" (userid, itemid, date) values (171, 237, '2022-04-30 20:51:39');
insert into public."Purchases" (userid, itemid, date) values (29, 262, '2022-01-03 01:43:25');
insert into public."Purchases" (userid, itemid, date) values (159, 242, '2022-09-26 12:53:36');
insert into public."Purchases" (userid, itemid, date) values (23, 174, '2022-11-02 10:18:44');
insert into public."Purchases" (userid, itemid, date) values (187, 166, '2022-07-27 00:31:50');
insert into public."Purchases" (userid, itemid, date) values (68, 327, '2022-04-06 22:57:26');
insert into public."Purchases" (userid, itemid, date) values (174, 148, '2022-02-26 13:13:47');
insert into public."Purchases" (userid, itemid, date) values (160, 118, '2022-01-08 11:14:38');
insert into public."Purchases" (userid, itemid, date) values (70, 234, '2021-11-29 16:11:56');
insert into public."Purchases" (userid, itemid, date) values (91, 104, '2022-11-07 21:28:40');
insert into public."Purchases" (userid, itemid, date) values (163, 53, '2022-10-04 10:50:34');
insert into public."Purchases" (userid, itemid, date) values (104, 108, '2022-09-04 15:45:56');
insert into public."Purchases" (userid, itemid, date) values (160, 306, '2022-10-13 05:46:17');
insert into public."Purchases" (userid, itemid, date) values (101, 237, '2022-08-14 23:56:37');
insert into public."Purchases" (userid, itemid, date) values (72, 287, '2022-08-01 07:57:48');
insert into public."Purchases" (userid, itemid, date) values (62, 238, '2022-05-27 09:04:29');
insert into public."Purchases" (userid, itemid, date) values (193, 279, '2022-04-05 13:44:13');
insert into public."Purchases" (userid, itemid, date) values (150, 241, '2021-12-29 19:38:19');
insert into public."Purchases" (userid, itemid, date) values (181, 339, '2022-03-28 16:58:21');
insert into public."Purchases" (userid, itemid, date) values (79, 295, '2022-05-16 05:08:27');
insert into public."Purchases" (userid, itemid, date) values (55, 231, '2021-12-20 12:13:23');
insert into public."Purchases" (userid, itemid, date) values (197, 274, '2022-03-06 03:53:02');
insert into public."Purchases" (userid, itemid, date) values (166, 230, '2022-08-30 04:06:41');
insert into public."Purchases" (userid, itemid, date) values (135, 208, '2022-08-21 05:40:26');
insert into public."Purchases" (userid, itemid, date) values (45, 312, '2022-06-20 12:10:03');
insert into public."Purchases" (userid, itemid, date) values (19, 21, '2022-07-23 20:37:44');
insert into public."Purchases" (userid, itemid, date) values (54, 326, '2021-12-02 04:25:18');
insert into public."Purchases" (userid, itemid, date) values (67, 319, '2022-01-16 06:52:07');
insert into public."Purchases" (userid, itemid, date) values (179, 182, '2022-05-13 11:51:32');
insert into public."Purchases" (userid, itemid, date) values (38, 14, '2022-05-26 12:49:45');
insert into public."Purchases" (userid, itemid, date) values (153, 99, '2022-09-18 08:14:21');
insert into public."Purchases" (userid, itemid, date) values (95, 101, '2021-11-30 15:48:05');
insert into public."Purchases" (userid, itemid, date) values (93, 171, '2021-12-30 22:24:00');
insert into public."Purchases" (userid, itemid, date) values (78, 124, '2022-01-30 13:40:57');
insert into public."Purchases" (userid, itemid, date) values (68, 86, '2022-05-19 12:21:28');
insert into public."Purchases" (userid, itemid, date) values (193, 119, '2022-01-04 02:28:46');
insert into public."Purchases" (userid, itemid, date) values (56, 156, '2022-10-19 06:02:27');
insert into public."Purchases" (userid, itemid, date) values (107, 186, '2021-11-22 23:10:26');
insert into public."Purchases" (userid, itemid, date) values (25, 274, '2022-06-03 16:38:17');
insert into public."Purchases" (userid, itemid, date) values (67, 336, '2022-10-29 08:26:08');
insert into public."Purchases" (userid, itemid, date) values (79, 182, '2022-08-27 14:01:27');
insert into public."Purchases" (userid, itemid, date) values (94, 304, '2022-04-27 13:50:04');
insert into public."Purchases" (userid, itemid, date) values (127, 108, '2022-03-27 21:17:41');
insert into public."Purchases" (userid, itemid, date) values (84, 110, '2022-09-04 22:59:25');
insert into public."Purchases" (userid, itemid, date) values (34, 264, '2022-08-30 22:25:21');
insert into public."Purchases" (userid, itemid, date) values (37, 289, '2022-06-14 14:26:31');
insert into public."Purchases" (userid, itemid, date) values (62, 52, '2022-01-25 13:56:23');
insert into public."Purchases" (userid, itemid, date) values (198, 185, '2021-12-26 08:48:51');
insert into public."Purchases" (userid, itemid, date) values (22, 219, '2021-12-28 07:15:25');
insert into public."Purchases" (userid, itemid, date) values (145, 161, '2021-11-24 20:03:13');
insert into public."Purchases" (userid, itemid, date) values (135, 249, '2022-08-22 18:45:07');
insert into public."Purchases" (userid, itemid, date) values (105, 85, '2022-08-17 22:46:52');
insert into public."Purchases" (userid, itemid, date) values (124, 135, '2022-10-08 11:14:13');
insert into public."Purchases" (userid, itemid, date) values (15, 18, '2022-09-23 04:49:22');
insert into public."Purchases" (userid, itemid, date) values (12, 255, '2022-06-16 22:07:27');
insert into public."Purchases" (userid, itemid, date) values (10, 162, '2022-05-10 13:14:49');
insert into public."Purchases" (userid, itemid, date) values (183, 347, '2022-07-02 17:46:29');
insert into public."Purchases" (userid, itemid, date) values (178, 313, '2022-04-13 05:52:17');
insert into public."Purchases" (userid, itemid, date) values (86, 266, '2022-09-01 10:43:59');
insert into public."Purchases" (userid, itemid, date) values (168, 137, '2021-12-14 10:50:15');
insert into public."Purchases" (userid, itemid, date) values (109, 73, '2022-10-12 03:48:12');
insert into public."Purchases" (userid, itemid, date) values (193, 338, '2022-11-04 19:07:49');
insert into public."Purchases" (userid, itemid, date) values (78, 201, '2022-06-04 06:24:30');
insert into public."Purchases" (userid, itemid, date) values (66, 210, '2021-11-18 03:40:40');
insert into public."Purchases" (userid, itemid, date) values (180, 54, '2022-06-24 21:36:48');
insert into public."Purchases" (userid, itemid, date) values (153, 99, '2022-01-06 02:48:16');
insert into public."Purchases" (userid, itemid, date) values (83, 263, '2022-04-17 18:32:48');
insert into public."Purchases" (userid, itemid, date) values (139, 97, '2022-10-03 06:02:04');
insert into public."Purchases" (userid, itemid, date) values (76, 83, '2022-06-10 13:12:52');
insert into public."Purchases" (userid, itemid, date) values (142, 266, '2022-01-10 14:40:17');
insert into public."Purchases" (userid, itemid, date) values (66, 263, '2022-05-09 15:10:11');
insert into public."Purchases" (userid, itemid, date) values (95, 86, '2022-07-22 20:50:49');
insert into public."Purchases" (userid, itemid, date) values (74, 74, '2022-09-27 15:40:46');
insert into public."Purchases" (userid, itemid, date) values (94, 68, '2022-06-22 13:57:26');
insert into public."Purchases" (userid, itemid, date) values (149, 304, '2022-07-09 09:11:36');
insert into public."Purchases" (userid, itemid, date) values (92, 221, '2022-03-25 22:19:48');
insert into public."Purchases" (userid, itemid, date) values (175, 302, '2022-04-26 08:57:41');
insert into public."Purchases" (userid, itemid, date) values (32, 109, '2021-11-19 15:47:16');
insert into public."Purchases" (userid, itemid, date) values (177, 43, '2022-01-17 19:58:30');
insert into public."Purchases" (userid, itemid, date) values (164, 127, '2022-08-20 22:51:04');
insert into public."Purchases" (userid, itemid, date) values (181, 206, '2022-09-08 00:21:33');
insert into public."Purchases" (userid, itemid, date) values (77, 259, '2022-05-19 06:28:22');
insert into public."Purchases" (userid, itemid, date) values (193, 129, '2022-07-08 09:06:03');
insert into public."Purchases" (userid, itemid, date) values (5, 82, '2022-01-17 15:52:09');
insert into public."Purchases" (userid, itemid, date) values (151, 269, '2022-03-19 10:23:12');
insert into public."Purchases" (userid, itemid, date) values (5, 116, '2022-06-04 13:06:17');
insert into public."Purchases" (userid, itemid, date) values (56, 159, '2022-10-05 12:10:22');
insert into public."Purchases" (userid, itemid, date) values (182, 48, '2021-12-15 19:18:03');
insert into public."Purchases" (userid, itemid, date) values (179, 116, '2022-02-03 10:18:37');
insert into public."Purchases" (userid, itemid, date) values (48, 81, '2022-05-01 22:19:30');
insert into public."Purchases" (userid, itemid, date) values (22, 346, '2022-07-20 19:42:35');
insert into public."Purchases" (userid, itemid, date) values (94, 68, '2022-06-06 16:43:56');
insert into public."Purchases" (userid, itemid, date) values (165, 289, '2021-12-15 16:07:50');
insert into public."Purchases" (userid, itemid, date) values (163, 244, '2022-08-02 22:42:33');
insert into public."Purchases" (userid, itemid, date) values (115, 140, '2022-03-17 02:35:15');
insert into public."Purchases" (userid, itemid, date) values (16, 72, '2022-07-13 20:48:25');
insert into public."Purchases" (userid, itemid, date) values (95, 85, '2022-01-13 13:17:14');
insert into public."Purchases" (userid, itemid, date) values (153, 117, '2021-12-05 10:37:04');
insert into public."Purchases" (userid, itemid, date) values (103, 39, '2022-10-31 20:45:12');
insert into public."Purchases" (userid, itemid, date) values (199, 162, '2022-01-31 00:45:16');
insert into public."Purchases" (userid, itemid, date) values (97, 59, '2022-08-12 17:58:29');
insert into public."Purchases" (userid, itemid, date) values (119, 56, '2022-06-08 12:07:41');
insert into public."Purchases" (userid, itemid, date) values (9, 322, '2022-11-04 01:03:59');
insert into public."Purchases" (userid, itemid, date) values (107, 13, '2022-05-05 16:04:04');
insert into public."Purchases" (userid, itemid, date) values (73, 140, '2022-01-30 06:26:05');
insert into public."Purchases" (userid, itemid, date) values (28, 155, '2022-10-08 14:31:56');
insert into public."Purchases" (userid, itemid, date) values (110, 218, '2022-03-04 20:31:40');
insert into public."Purchases" (userid, itemid, date) values (27, 221, '2022-10-11 01:14:42');
insert into public."Purchases" (userid, itemid, date) values (181, 47, '2022-06-18 04:29:44');
insert into public."Purchases" (userid, itemid, date) values (167, 248, '2021-11-17 22:25:36');
insert into public."Purchases" (userid, itemid, date) values (176, 290, '2022-02-14 12:04:14');
insert into public."Purchases" (userid, itemid, date) values (51, 336, '2022-09-14 18:18:24');
insert into public."Purchases" (userid, itemid, date) values (13, 322, '2022-02-28 20:32:35');
insert into public."Purchases" (userid, itemid, date) values (48, 201, '2022-08-27 03:26:36');
insert into public."Purchases" (userid, itemid, date) values (149, 251, '2022-02-28 05:53:38');
insert into public."Purchases" (userid, itemid, date) values (104, 201, '2022-01-23 15:23:06');
insert into public."Purchases" (userid, itemid, date) values (35, 333, '2022-01-05 03:54:07');
insert into public."Purchases" (userid, itemid, date) values (153, 331, '2021-12-21 00:40:46');
insert into public."Purchases" (userid, itemid, date) values (139, 49, '2021-11-17 07:58:00');
insert into public."Purchases" (userid, itemid, date) values (5, 299, '2022-05-10 02:35:04');
insert into public."Purchases" (userid, itemid, date) values (69, 158, '2022-10-12 22:24:15');
insert into public."Purchases" (userid, itemid, date) values (49, 25, '2022-07-13 10:32:44');
insert into public."Purchases" (userid, itemid, date) values (36, 331, '2022-09-19 04:42:05');
insert into public."Purchases" (userid, itemid, date) values (50, 71, '2022-08-06 16:06:23');
insert into public."Purchases" (userid, itemid, date) values (108, 227, '2021-11-16 09:14:14');
insert into public."Purchases" (userid, itemid, date) values (55, 43, '2021-12-22 04:48:17');
insert into public."Purchases" (userid, itemid, date) values (53, 159, '2022-07-07 19:26:48');
insert into public."Purchases" (userid, itemid, date) values (90, 174, '2022-04-09 05:43:51');
insert into public."Purchases" (userid, itemid, date) values (114, 343, '2022-10-11 05:14:52');
insert into public."Purchases" (userid, itemid, date) values (184, 154, '2022-07-08 13:26:46');
insert into public."Purchases" (userid, itemid, date) values (72, 159, '2022-03-28 14:56:33');
insert into public."Purchases" (userid, itemid, date) values (19, 322, '2022-09-07 02:17:13');
insert into public."Purchases" (userid, itemid, date) values (157, 332, '2022-10-20 23:28:00');
insert into public."Purchases" (userid, itemid, date) values (142, 279, '2022-10-09 05:39:48');
insert into public."Purchases" (userid, itemid, date) values (95, 181, '2022-06-15 08:01:22');
insert into public."Purchases" (userid, itemid, date) values (69, 348, '2022-01-09 06:33:53');
insert into public."Purchases" (userid, itemid, date) values (28, 220, '2022-04-13 05:26:01');
insert into public."Purchases" (userid, itemid, date) values (196, 30, '2022-04-27 21:50:40');
insert into public."Purchases" (userid, itemid, date) values (17, 257, '2022-08-25 04:54:14');
insert into public."Purchases" (userid, itemid, date) values (159, 341, '2021-11-27 15:03:31');
insert into public."Purchases" (userid, itemid, date) values (186, 154, '2022-08-18 00:27:17');
insert into public."Purchases" (userid, itemid, date) values (62, 209, '2022-04-01 06:55:40');
insert into public."Purchases" (userid, itemid, date) values (3, 234, '2022-03-29 06:28:05');
insert into public."Purchases" (userid, itemid, date) values (52, 199, '2021-12-01 02:10:00');
insert into public."Purchases" (userid, itemid, date) values (99, 210, '2021-11-19 13:08:39');
insert into public."Purchases" (userid, itemid, date) values (56, 266, '2022-04-12 12:27:38');
insert into public."Purchases" (userid, itemid, date) values (68, 234, '2022-01-16 04:32:06');
insert into public."Purchases" (userid, itemid, date) values (84, 118, '2022-09-12 05:54:40');
insert into public."Purchases" (userid, itemid, date) values (150, 19, '2022-07-02 09:07:55');
insert into public."Purchases" (userid, itemid, date) values (19, 201, '2022-09-16 03:04:52');
insert into public."Purchases" (userid, itemid, date) values (166, 74, '2022-04-17 08:46:54');
insert into public."Purchases" (userid, itemid, date) values (130, 126, '2022-02-10 06:33:23');
insert into public."Purchases" (userid, itemid, date) values (29, 306, '2021-12-25 23:42:02');
insert into public."Purchases" (userid, itemid, date) values (181, 322, '2022-08-27 14:31:34');
insert into public."Purchases" (userid, itemid, date) values (8, 289, '2022-07-27 08:58:58');
insert into public."Purchases" (userid, itemid, date) values (76, 326, '2022-01-31 17:05:02');
insert into public."Purchases" (userid, itemid, date) values (122, 319, '2022-04-28 22:52:52');
insert into public."Purchases" (userid, itemid, date) values (92, 120, '2022-08-08 21:33:13');
insert into public."Purchases" (userid, itemid, date) values (182, 77, '2022-05-23 08:11:12');
insert into public."Purchases" (userid, itemid, date) values (93, 127, '2021-11-17 11:55:14');
insert into public."Purchases" (userid, itemid, date) values (57, 302, '2022-11-01 21:21:40');
insert into public."Purchases" (userid, itemid, date) values (42, 164, '2022-07-06 21:55:57');
insert into public."Purchases" (userid, itemid, date) values (191, 284, '2022-08-11 15:44:55');
insert into public."Purchases" (userid, itemid, date) values (112, 133, '2022-08-24 08:59:53');
insert into public."Purchases" (userid, itemid, date) values (37, 336, '2022-09-30 13:55:42');
insert into public."Purchases" (userid, itemid, date) values (48, 187, '2022-01-30 04:26:34');
insert into public."Purchases" (userid, itemid, date) values (44, 68, '2022-04-21 00:13:31');
insert into public."Purchases" (userid, itemid, date) values (17, 40, '2021-12-19 22:34:17');
insert into public."Purchases" (userid, itemid, date) values (26, 15, '2022-02-01 01:16:39');
insert into public."Purchases" (userid, itemid, date) values (139, 307, '2022-09-12 01:05:11');
insert into public."Purchases" (userid, itemid, date) values (169, 16, '2022-01-05 12:15:45');
insert into public."Purchases" (userid, itemid, date) values (57, 2, '2022-05-30 14:57:24');
insert into public."Purchases" (userid, itemid, date) values (120, 255, '2022-07-29 04:44:47');
insert into public."Purchases" (userid, itemid, date) values (80, 24, '2022-02-11 00:13:06');
insert into public."Purchases" (userid, itemid, date) values (67, 269, '2021-11-26 15:50:56');
insert into public."Purchases" (userid, itemid, date) values (17, 70, '2022-01-13 15:00:03');
insert into public."Purchases" (userid, itemid, date) values (118, 231, '2022-07-24 02:01:49');
insert into public."Purchases" (userid, itemid, date) values (12, 302, '2021-11-17 21:55:48');
insert into public."Purchases" (userid, itemid, date) values (74, 4, '2022-04-08 02:04:18');
insert into public."Purchases" (userid, itemid, date) values (189, 187, '2022-11-07 20:20:33');
insert into public."Purchases" (userid, itemid, date) values (29, 308, '2022-09-14 17:12:58');
insert into public."Purchases" (userid, itemid, date) values (136, 168, '2022-01-30 22:55:06');
insert into public."Purchases" (userid, itemid, date) values (24, 275, '2022-09-08 22:10:52');
insert into public."Purchases" (userid, itemid, date) values (29, 279, '2022-11-06 20:27:38');
insert into public."Purchases" (userid, itemid, date) values (12, 125, '2022-05-27 17:32:32');
insert into public."Purchases" (userid, itemid, date) values (189, 236, '2022-09-29 02:21:00');
insert into public."Purchases" (userid, itemid, date) values (57, 175, '2022-09-17 09:36:36');
insert into public."Purchases" (userid, itemid, date) values (78, 333, '2022-07-10 06:27:22');
insert into public."Purchases" (userid, itemid, date) values (150, 126, '2021-12-12 08:59:02');
insert into public."Purchases" (userid, itemid, date) values (199, 230, '2022-06-24 21:23:17');
insert into public."Purchases" (userid, itemid, date) values (80, 245, '2022-10-13 06:26:44');
insert into public."Purchases" (userid, itemid, date) values (127, 180, '2022-05-25 07:22:05');
insert into public."Purchases" (userid, itemid, date) values (179, 194, '2021-11-10 14:48:18');
insert into public."Purchases" (userid, itemid, date) values (9, 217, '2022-02-16 21:48:59');
insert into public."Purchases" (userid, itemid, date) values (80, 337, '2022-06-21 14:21:29');
insert into public."Purchases" (userid, itemid, date) values (192, 332, '2022-07-04 14:34:22');
insert into public."Purchases" (userid, itemid, date) values (99, 126, '2022-10-25 20:56:52');
insert into public."Purchases" (userid, itemid, date) values (189, 328, '2022-09-10 09:49:15');
insert into public."Purchases" (userid, itemid, date) values (10, 115, '2022-10-07 09:16:10');
insert into public."Purchases" (userid, itemid, date) values (1, 232, '2022-01-07 07:51:25');
insert into public."Purchases" (userid, itemid, date) values (109, 264, '2022-11-06 04:55:32');
insert into public."Purchases" (userid, itemid, date) values (110, 181, '2021-12-02 22:45:09');
insert into public."Purchases" (userid, itemid, date) values (88, 298, '2022-03-24 20:10:10');
insert into public."Purchases" (userid, itemid, date) values (10, 324, '2022-01-16 17:37:48');
insert into public."Purchases" (userid, itemid, date) values (154, 98, '2022-10-09 14:07:12');
insert into public."Purchases" (userid, itemid, date) values (172, 265, '2022-08-30 02:04:34');
insert into public."Purchases" (userid, itemid, date) values (125, 257, '2022-05-10 22:56:03');
insert into public."Purchases" (userid, itemid, date) values (59, 324, '2021-12-08 15:49:42');
insert into public."Purchases" (userid, itemid, date) values (37, 171, '2021-11-30 02:29:08');
insert into public."Purchases" (userid, itemid, date) values (22, 301, '2022-11-04 07:51:15');
insert into public."Purchases" (userid, itemid, date) values (33, 278, '2022-03-29 22:03:28');
insert into public."Purchases" (userid, itemid, date) values (134, 327, '2022-09-23 22:03:13');
insert into public."Purchases" (userid, itemid, date) values (129, 25, '2022-01-24 16:10:53');
insert into public."Purchases" (userid, itemid, date) values (164, 111, '2022-05-24 01:28:31');
insert into public."Purchases" (userid, itemid, date) values (13, 131, '2022-01-10 16:52:53');
insert into public."Purchases" (userid, itemid, date) values (126, 130, '2022-07-06 19:32:33');
insert into public."Purchases" (userid, itemid, date) values (6, 46, '2022-07-15 09:05:03');
insert into public."Purchases" (userid, itemid, date) values (121, 41, '2021-12-29 17:31:16');
insert into public."Purchases" (userid, itemid, date) values (142, 137, '2022-04-06 14:02:13');
insert into public."Purchases" (userid, itemid, date) values (16, 223, '2022-04-23 11:26:14');
insert into public."Purchases" (userid, itemid, date) values (115, 119, '2022-03-10 04:01:27');
insert into public."Purchases" (userid, itemid, date) values (13, 78, '2021-11-29 09:22:15');
insert into public."Purchases" (userid, itemid, date) values (32, 334, '2022-06-02 15:32:49');
insert into public."Purchases" (userid, itemid, date) values (29, 74, '2022-10-22 01:38:07');
insert into public."Purchases" (userid, itemid, date) values (199, 37, '2022-04-30 04:23:30');
insert into public."Purchases" (userid, itemid, date) values (142, 74, '2022-10-11 18:27:09');
insert into public."Purchases" (userid, itemid, date) values (181, 73, '2022-06-30 04:22:18');
insert into public."Purchases" (userid, itemid, date) values (117, 329, '2022-10-19 00:57:47');
insert into public."Purchases" (userid, itemid, date) values (103, 7, '2022-03-23 16:13:44');
insert into public."Purchases" (userid, itemid, date) values (42, 232, '2022-01-15 00:09:12');
insert into public."Purchases" (userid, itemid, date) values (63, 136, '2022-02-18 04:15:04');
insert into public."Purchases" (userid, itemid, date) values (16, 187, '2022-02-09 11:24:15');
insert into public."Purchases" (userid, itemid, date) values (160, 126, '2022-05-18 23:22:28');
insert into public."Purchases" (userid, itemid, date) values (147, 17, '2022-09-23 12:10:45');
insert into public."Purchases" (userid, itemid, date) values (142, 273, '2022-08-04 20:53:40');
insert into public."Purchases" (userid, itemid, date) values (47, 167, '2021-11-14 12:20:15');
insert into public."Purchases" (userid, itemid, date) values (88, 229, '2022-06-16 17:17:22');
insert into public."Purchases" (userid, itemid, date) values (119, 130, '2022-07-30 21:52:22');
insert into public."Purchases" (userid, itemid, date) values (173, 238, '2022-07-17 01:19:48');
insert into public."Purchases" (userid, itemid, date) values (189, 76, '2022-04-17 19:20:55');
insert into public."Purchases" (userid, itemid, date) values (67, 24, '2022-05-30 13:54:20');
insert into public."Purchases" (userid, itemid, date) values (180, 295, '2022-11-06 08:00:14');
insert into public."Purchases" (userid, itemid, date) values (197, 104, '2022-10-12 00:25:37');
insert into public."Purchases" (userid, itemid, date) values (161, 281, '2022-05-29 15:58:52');
insert into public."Purchases" (userid, itemid, date) values (124, 265, '2021-11-16 15:36:55');
insert into public."Purchases" (userid, itemid, date) values (124, 211, '2022-04-11 18:53:59');
insert into public."Purchases" (userid, itemid, date) values (33, 194, '2022-07-18 04:04:24');
insert into public."Purchases" (userid, itemid, date) values (114, 96, '2022-05-01 12:15:02');
insert into public."Purchases" (userid, itemid, date) values (37, 277, '2021-12-15 11:02:51');
insert into public."Purchases" (userid, itemid, date) values (26, 123, '2021-12-03 12:12:33');
insert into public."Purchases" (userid, itemid, date) values (78, 241, '2022-02-28 08:25:27');
insert into public."Purchases" (userid, itemid, date) values (171, 271, '2022-03-25 04:34:37');
insert into public."Purchases" (userid, itemid, date) values (178, 36, '2022-08-25 23:31:22');
insert into public."Purchases" (userid, itemid, date) values (140, 88, '2022-02-08 01:24:53');
insert into public."Purchases" (userid, itemid, date) values (31, 298, '2021-12-06 14:55:24');
insert into public."Purchases" (userid, itemid, date) values (9, 188, '2021-12-05 04:52:28');
insert into public."Purchases" (userid, itemid, date) values (121, 264, '2022-05-16 13:07:31');
insert into public."Purchases" (userid, itemid, date) values (91, 207, '2022-02-19 09:43:56');
insert into public."Purchases" (userid, itemid, date) values (88, 222, '2022-09-27 01:45:11');
insert into public."Purchases" (userid, itemid, date) values (49, 51, '2022-08-13 13:55:51');
insert into public."Purchases" (userid, itemid, date) values (96, 121, '2022-08-27 09:07:23');
insert into public."Purchases" (userid, itemid, date) values (152, 324, '2022-02-05 02:17:35');
insert into public."Purchases" (userid, itemid, date) values (123, 45, '2022-04-16 22:35:53');
insert into public."Purchases" (userid, itemid, date) values (18, 139, '2022-02-11 18:53:26');
insert into public."Purchases" (userid, itemid, date) values (40, 21, '2022-06-10 18:24:50');
insert into public."Purchases" (userid, itemid, date) values (63, 150, '2022-01-30 07:47:05');
insert into public."Purchases" (userid, itemid, date) values (164, 40, '2022-01-20 03:27:38');
insert into public."Purchases" (userid, itemid, date) values (59, 277, '2022-08-16 06:00:30');
insert into public."Purchases" (userid, itemid, date) values (107, 308, '2022-06-22 12:11:22');

/* какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно */

SELECT avg(user_avg_expenses_per_month) AS all_users_under_25_expenses_per_month  /* средние затраты по месяцам для всех юзеров от 18 до 25 */
FROM
	( 
	SELECT userid, count(month_) AS month_, avg(price) AS user_avg_expenses_per_month  /* средние затраты по месяцам для каждого юзера */
	FROM
		(
		SELECT l.userid, l.itemid, EXTRACT(ISOYEAR FROM l.date) AS year_, EXTRACT(MONTH FROM l.date) AS month_, l.age, r.price
		FROM
			(
			SELECT l.userid, l.itemid, l.date, r.age
			FROM 
			public."Purchases" AS l
			LEFT JOIN  /* соединем Purchases и Users */
			public."Users" as r 
			ON l.userid = r.userid WHERE age BETWEEN 18 and 25  /* ограничение по условию */
			) AS l
		LEFT JOIN  /* соединем Purchases, Users и Items*/
		public."Items" as r ON l.itemid = r.itemid 
		) as row_date
	GROUP BY userid
	ORDER BY userid
	) as user_avg_expenses_per_month; 

/* какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 26 до 35 лет включительно */

SELECT avg(user_avg_expenses_per_month) AS all_users_25_35_expenses_per_month  /* средние затраты по месяцам для всех юзеров от 26 до 35 */
FROM
	( 
	SELECT userid, count(month_) AS month_, avg(price) AS user_avg_expenses_per_month  /* средние затраты по месяцам для каждого юзера */
	FROM
		(
		SELECT l.userid, l.itemid, EXTRACT(ISOYEAR FROM l.date) AS year_, EXTRACT(MONTH FROM l.date) AS month_, l.age, r.price
		FROM
			(
			SELECT l.userid, l.itemid, l.date, r.age
			FROM 
			public."Purchases" AS l
			LEFT JOIN  /* соединем Purchases и Users */
			public."Users" as r 
			ON l.userid = r.userid WHERE age BETWEEN 26 and 35  /* ограничение по условию */
			) AS l
		LEFT JOIN  /* соединем Purchases, Users и Items*/
		public."Items" as r ON l.itemid = r.itemid 
		) as row_date
	GROUP BY userid
	ORDER BY userid
	) as user_avg_expenses_per_month; 



/* в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая
примем, что подразумевался текущий год*/

SELECT month_ AS month_with_biggest_revenue  /* месяц с максимальной выручкой */
FROM
	(
	SELECT year_, month_, SUM(price) AS revenue_per_month_customer_over_35_2022  /* выручка по месяцам 2022 года */
	FROM
		(
		SELECT l.userid, l.itemid, EXTRACT(ISOYEAR FROM l.date) AS year_, EXTRACT(MONTH FROM l.date) AS month_, l.age, r.price
		FROM
			(
			SELECT l.userid, l.itemid, l.date, r.age
			FROM 
			public."Purchases" AS l
			LEFT JOIN  /* соединем Purchases и Users */
			public."Users" as r 
			ON l.userid = r.userid WHERE age > 35  /* ограничение по условию */
			) AS l
		LEFT JOIN  /* соединем Purchases, Users и Items*/
		public."Items" as r ON l.itemid = r.itemid
		) as row_date
	WHERE year_ = 2022  /* ограничение по условию */
	GROUP BY year_, month_
	ORDER BY SUM(price) DESC
	) AS revenue_per_month_customer_over_35_2022
LIMIT 1;

/* какой товар обеспечивает дает наибольший вклад в выручку за последний год */

SELECT itemid AS itemid_with_most_part_in_revenue /* товар с наибольшим вкладом в выручку */
FROM
	(
	SELECT itemid, SUM(price) AS total_revenue_per_item
	FROM
		(
		SELECT l.userid, l.itemid, EXTRACT(ISOYEAR FROM l.date) AS year_, EXTRACT(MONTH FROM l.date) AS month_, l.age, r.price
		FROM
			(
			SELECT l.userid, l.itemid, l.date, r.age
			FROM 
			public."Purchases" AS l
			LEFT JOIN  /* соединем Purchases и Users */ 
			public."Users" as r 
			ON l.userid = r.userid
			) AS l
		LEFT JOIN  /* соединем Purchases, Users и Items*/ 
		public."Items" as r ON l.itemid = r.itemid
		) AS row_data
	WHERE year_ = 2022  /* ограничение по условию */
	GROUP BY itemid
	ORDER BY total_revenue_per_item DESC
	) AS total_revenue_per_item_top_1
LIMIT 1;

/* топ-3 товаров по выручке и их доля в общей выручке за любой год
примем, что подразумевался текущий год*/

SELECT itemid, ROUND(SUM(price) / all_revenue * 100, 2) AS part_in_perc /* топ-3 товара по выручке и их доля в общей выручке */ 
FROM
	(
	SELECT *
	FROM
		(
		SELECT 
		l.userid, 
		l.itemid, 
		EXTRACT(ISOYEAR FROM l.date) AS year_, 
		EXTRACT(MONTH FROM l.date) AS month_,
		l.age, 
		r.price, 
		sum(price) OVER () as all_revenue /* вся выручка за 2022 год */ 
		FROM
			(
			SELECT l.userid, l.itemid, l.date, r.age
			FROM 
			public."Purchases" AS l
			LEFT JOIN  /* соединем Purchases и Users */ 
			public."Users" as r 
			ON l.userid = r.userid
			) AS l
		LEFT JOIN  /* соединем Purchases, Users и Items*/ 
		public."Items" as r ON l.itemid = r.itemid
		WHERE EXTRACT(ISOYEAR FROM l.date) = 2022 /* ограничение по условию */
		) AS row_data  
	) as asd
GROUP BY itemid, all_revenue
ORDER BY part_in_perc DESC
LIMIT 3