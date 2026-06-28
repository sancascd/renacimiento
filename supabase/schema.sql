-- Renaissance Academy · esquema de base de datos (Supabase)
-- Ejecuta esto en el SQL Editor de tu proyecto Supabase (una sola vez).
--
-- Modelo: un registro por usuario con TODO su catálogo en una columna JSONB.
-- Es lo más simple y robusto para una sola persona; la sincronización entre
-- dispositivos es "último en guardar gana" (rara vez editas en dos a la vez).

create table if not exists public.catalogs (
  user_id    uuid primary key references auth.users(id) on delete cascade,
  data       jsonb not null default '{"topics":[]}'::jsonb,
  updated_at timestamptz not null default now()
);

-- Seguridad: cada usuario SOLO puede ver y editar su propia fila.
alter table public.catalogs enable row level security;

drop policy if exists "catalogs_select_own" on public.catalogs;
drop policy if exists "catalogs_insert_own" on public.catalogs;
drop policy if exists "catalogs_update_own" on public.catalogs;

create policy "catalogs_select_own" on public.catalogs
  for select using (auth.uid() = user_id);

create policy "catalogs_insert_own" on public.catalogs
  for insert with check (auth.uid() = user_id);

create policy "catalogs_update_own" on public.catalogs
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
