--
-- PostgreSQL database dump
--


INSERT INTO public.equipment VALUES (46, 'sztylet', 'broń', NULL, 2, NULL, 2, 1);
INSERT INTO public.equipment VALUES (47, 'szabla', ' broń', NULL, 4, NULL, 1, 1);
INSERT INTO public.equipment VALUES (48, 'pałasz', ' broń', NULL, 6, NULL, 1, 2);
INSERT INTO public.equipment VALUES (49, 'miecz dwuręczny', ' broń', NULL, 22, NULL, 1, 3);
INSERT INTO public.equipment VALUES (50, 'długi łuk', ' broń', NULL, 5, NULL, 1, 4);
INSERT INTO public.equipment VALUES (51, 'topór', ' broń', NULL, 11, NULL, 1, 5);
INSERT INTO public.equipment VALUES (52, 'różdżka', ' broń', NULL, NULL, 20, 1, 6);
INSERT INTO public.equipment VALUES (53, 'lekka kusza', ' broń', NULL, 8, NULL, 1, 7);
INSERT INTO public.equipment VALUES (54, 'kolczuga', ' uzbrojenie', 3, NULL, NULL, 1, 3);
INSERT INTO public.equipment VALUES (55, 'lekka zbroja', ' uzbrojenie', 7, NULL, NULL, 1, 6);
INSERT INTO public.equipment VALUES (56, 'zbroja płytowa', ' uzbrojenie', 22, NULL, NULL, 1, 4);
INSERT INTO public.equipment VALUES (57, 'szyszak', ' uzbrojenie', 2, NULL, NULL, 1, 2);
INSERT INTO public.equipment VALUES (58, 'hełm', ' uzbrojenie', 4, NULL, NULL, 1, 3);
INSERT INTO public.equipment VALUES (59, 'hełm', ' uzbrojenie', 4, NULL, NULL, 1, 4);
INSERT INTO public.equipment VALUES (60, 'puklerz', ' uzbrojenie', 2, NULL, NULL, 1, 5);
INSERT INTO public.equipment VALUES (61, 'duża tarcza', ' uzbrojenie', 9, NULL, NULL, 1, 6);
INSERT INTO public.equipment VALUES (62, 'kolczuga', ' uzbrojenie', 3, NULL, NULL, 1, 1);
INSERT INTO public.equipment VALUES (63, 'lekka zbroja', ' uzbrojenie', 7, NULL, NULL, 1, NULL);
INSERT INTO public.equipment VALUES (64, 'zbroja płytowa', ' uzbrojenie', 22, NULL, NULL, 1, NULL);


SELECT pg_catalog.setval('public.equipment_equipment_id_seq', 64, true);

--
-- PostgreSQL database dump complete
--

