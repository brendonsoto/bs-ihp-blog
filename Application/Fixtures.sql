

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('dcb95184-b695-4438-86af-b28833e07b94', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-07-09 09:50:01.57445-04');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('c34e4c6f-7325-4806-88d4-1c823820f607', 'dcb95184-b695-4438-86af-b28833e07b94', 'B-Dawg', 'Hey yo check this out yo yo yo');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('1eed27b2-ab64-473b-a5a9-2cf54b73a570', 'dcb95184-b695-4438-86af-b28833e07b94', 'B-Dawg', 'This is my second comment. Let''s go!');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


