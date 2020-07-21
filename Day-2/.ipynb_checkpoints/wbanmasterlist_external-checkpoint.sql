create external table wbanmasterlist(
       REGION   string  ,
       WBAN_ID   integer  ,
       STATION_NAME   string  ,
       STATE_PROVINCE   string  ,
       COUNTY   string  ,
       COUNTRY   string  ,
       EXTENDED_NAME   string  ,
       CALL_SIGN   string  ,
       STATION_TYPE   string  ,
       DATE_ASSIGNED   string  ,
       BEGIN_DATE   string  ,
       COMMENTS   string  ,
       LOCATION   string  ,
       ELEV_OTHER   string  ,
       ELEV_GROUND   string  ,
       ELEV_RUNWAY   string  ,
       ELEV_BAROMETRIC   string  ,
       ELEV_STATION   string  ,
       ELEV_UPPER_AIR   string,
       `__null_dask_index__`   integer  
    )
stored as parquet
location 'v3io://users/admin/data/wbanmasterlist_spark_parquet/';