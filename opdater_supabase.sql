-- Kør denne SQL én gang i Supabase SQL Editor, før den nye hjemmeside tages i brug.
-- Tilføjer skudsted på banen uden at ændre eller slette eksisterende skud.
ALTER TABLE public.goalkeeper_shots
ADD COLUMN IF NOT EXISTS shot_location text;
