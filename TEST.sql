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

insert into public."Items" (itemid, price) values (1, 100);
insert into public."Items" (itemid, price) values (2, 120);
insert into public."Items" (itemid, price) values (3, 140);
insert into public."Items" (itemid, price) values (4, 160);
insert into public."Items" (itemid, price) values (5, 180);
insert into public."Items" (itemid, price) values (6, 200);
insert into public."Items" (itemid, price) values (7, 210);
insert into public."Items" (itemid, price) values (8, 230);
insert into public."Items" (itemid, price) values (9, 250);
insert into public."Items" (itemid, price) values (10, 270);
insert into public."Items" (itemid, price) values (11, 290);
insert into public."Items" (itemid, price) values (12, 300);
insert into public."Items" (itemid, price) values (13, 304);
insert into public."Items" (itemid, price) values (14, 320);
insert into public."Items" (itemid, price) values (15, 348);


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

insert into public."Purchases" (userid, itemid, date) values (1, 15, '2022-02-13 00:48:34');
insert into public."Purchases" (userid, itemid, date) values (7, 14, '2022-10-15 11:16:09');
insert into public."Purchases" (userid, itemid, date) values (10, 13, '2021-12-15 10:13:23');
insert into public."Purchases" (userid, itemid, date) values (12, 12, '2022-06-23 20:47:57');
insert into public."Purchases" (userid, itemid, date) values (8, 11, '2022-09-29 02:13:55');
insert into public."Purchases" (userid, itemid, date) values (7, 10, '2022-01-22 13:27:45');
insert into public."Purchases" (userid, itemid, date) values (12, 9, '2022-01-20 18:34:33');
insert into public."Purchases" (userid, itemid, date) values (9, 8, '2022-04-13 21:12:59');
insert into public."Purchases" (userid, itemid, date) values (1, 7, '2022-08-21 22:13:12');
insert into public."Purchases" (userid, itemid, date) values (7, 6, '2021-12-25 23:41:51');
insert into public."Purchases" (userid, itemid, date) values (15, 5, '2022-10-21 15:43:58');
insert into public."Purchases" (userid, itemid, date) values (15, 4, '2022-10-22 13:19:51');
insert into public."Purchases" (userid, itemid, date) values (8, 3, '2022-01-20 12:04:20');
insert into public."Purchases" (userid, itemid, date) values (8, 2, '2022-08-09 16:18:40');
insert into public."Purchases" (userid, itemid, date) values (10, 1, '2022-07-16 08:31:05');
insert into public."Purchases" (userid, itemid, date) values (3, 2, '2022-09-23 11:32:09');
insert into public."Purchases" (userid, itemid, date) values (3, 2, '2022-06-08 23:03:40');
insert into public."Purchases" (userid, itemid, date) values (8, 2, '2022-08-30 23:21:52');
insert into public."Purchases" (userid, itemid, date) values (13, 2, '2022-11-06 01:45:31');
insert into public."Purchases" (userid, itemid, date) values (10, 2, '2021-11-18 22:57:46');
insert into public."Purchases" (userid, itemid, date) values (7, 3, '2022-02-09 23:39:36');
insert into public."Purchases" (userid, itemid, date) values (7, 1, '2022-01-18 04:41:10');
insert into public."Purchases" (userid, itemid, date) values (7, 1, '2022-05-17 11:52:29');
insert into public."Purchases" (userid, itemid, date) values (9, 3, '2021-11-23 10:55:45');
insert into public."Purchases" (userid, itemid, date) values (3, 1, '2022-06-09 08:56:49');
insert into public."Purchases" (userid, itemid, date) values (13, 13, '2022-02-04 10:28:29');
insert into public."Purchases" (userid, itemid, date) values (12, 2, '2022-09-13 12:47:06');
insert into public."Purchases" (userid, itemid, date) values (8, 14, '2022-02-13 20:19:34');
insert into public."Purchases" (userid, itemid, date) values (10, 11, '2022-08-26 12:42:39');
insert into public."Purchases" (userid, itemid, date) values (8, 10, '2022-06-19 11:07:35');
insert into public."Purchases" (userid, itemid, date) values (5, 9, '2021-12-04 17:44:57');
insert into public."Purchases" (userid, itemid, date) values (10, 8, '2022-10-20 07:23:06');
insert into public."Purchases" (userid, itemid, date) values (2, 7, '2022-04-13 20:26:48');
insert into public."Purchases" (userid, itemid, date) values (3, 6, '2022-04-26 18:07:18');
insert into public."Purchases" (userid, itemid, date) values (12, 5, '2022-08-31 13:18:10');
insert into public."Purchases" (userid, itemid, date) values (8, 4, '2022-09-20 05:17:51');
insert into public."Purchases" (userid, itemid, date) values (11, 3, '2022-02-02 22:02:13');
insert into public."Purchases" (userid, itemid, date) values (15, 2, '2022-02-21 20:20:09');
insert into public."Purchases" (userid, itemid, date) values (15, 7, '2022-05-04 18:31:13');
insert into public."Purchases" (userid, itemid, date) values (12, 6, '2022-08-17 18:27:14');
insert into public."Purchases" (userid, itemid, date) values (9, 8, '2022-10-25 05:23:11');
insert into public."Purchases" (userid, itemid, date) values (2, 8, '2022-07-15 02:45:39');
insert into public."Purchases" (userid, itemid, date) values (1, 6, '2022-07-17 09:04:47');

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