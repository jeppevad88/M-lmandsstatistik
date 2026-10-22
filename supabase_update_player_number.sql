-- Sikker opdatering af de eksisterende tabeller. Sletter ikke kampe eller skud.
alter table public.goalkeeper_shots
  add column if not exists player_number integer;

alter table public.goalkeeper_shots
  drop constraint if exists goalkeeper_shots_result_check;

alter table public.goalkeeper_shots
  add constraint goalkeeper_shots_result_check
  check (result in ('Redning', 'Mål', 'Brændt'));
