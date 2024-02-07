--TODO (missing vdk feature): we need to drop the tables as postgres plugin doesn't support upserts (updates)

DROP TABLE IF EXISTS public.{destination_embeddings_table} CASCADE;
DROP TABLE IF EXISTS public.{destination_metadata_table} CASCADE;

-- TODO (missing vdk feature): we need to create the tables as the postgres plugin doesn't support automatic schema inference
CREATE TABLE IF NOT EXISTS public.{destination_metadata_table}
(
    id SERIAL PRIMARY KEY,
    title TEXT,
    source TEXT,
    data TEXT,
    deleted BOOLEAN
);

CREATE TABLE IF NOT EXISTS public.{destination_embeddings_table}
(
    id INTEGER NOT NULL,
    chunk_id INTEGER NOT NULL,
    embedding public.vector,
    PRIMARY KEY (id, chunk_id),
    CONSTRAINT fk_embeddings_document FOREIGN KEY (id) REFERENCES public.{destination_metadata_table}(id)
);
