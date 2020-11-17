# Iguazio Data Science Platform Training

This repository will be a resource to learn and understand the Iguazio Data Science platform.

## Managed Services
### Function Deployment Overview
- MLRun
- Nuclio
- Kubeflow Pipelines

### Data Layer Overview
- V3IO
- Frames
- Spark
- Presto

### Distribted Computing Overview
- Horovod
- Dask

## Examples
- Create custom Docker image
- Data ingestion

### References




### Current
- Day 1
    - Basic data ingestion/prep/eda
        - Read CSV -> write KV
        - Presto queries (SQL)
        - SQL -> DF
        - DF -> Parquet
    - NoSQL Partitions
        - Create KV schema (v3io.dataplane)
        - SQL Queries
    - TSDB
        - Create TSDB (v3io_frames)
        - Generate data
        - Read/write from TSDB
        - Conditional read
        - Delete/cleanup
    - Streams
        - Create stream (v3io_frames)
        - Write records
        - Seek location
        - Read records
- Day 2
    - Spak Load from V3IO
        - Read CSV -> spark DF
        - Create Spark view
        - SQL queries on view
        - Spark DF -> parquet
    - Spark Read Parquet
        - Read Parqiet -> spark DF
        - Print schema
        - Create spark view
        - SQL queries on view
        - Spark Df -> parqiet
    - Spark and SQL Joins
        - Parquet -> Spark DF
        - Create spark views
        - Spark DF -> Pandas DF -> Plot
        - Presto join -> plot
- Nuclio
    - Events and Context
        - Logs via context
        - Shows persistance in context
        - Needs to show event type
    - Payloads
        - Sends image -> endpoint
    - TriggerPipeline
        - Load project via YAML
        - Pipe build commands
        - Cron trigger
        - Min/max replicas
- MLRun
    - Day 3
    - Day 4
    - Dat 5