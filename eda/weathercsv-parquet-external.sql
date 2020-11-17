create external table weather_parquet_spark_snappy (
usaf   string  ,
   wban   integer  ,
   datetime   timestamp  ,
   latitude   double  ,
   longitude   double  ,
   elevation   double  ,
   windAngle   double  ,
   windSpeed   double  ,
   temperature   double  ,
   seaLvlPressure   double  ,
   cloudCoverage   string  ,
   presentWeatherIndicator   double  ,
   pastWeatherIndicator   double  ,
   precipTime   double  ,
   precipDepth   double  ,
   snowDepth   double  ,
   stationName   string  ,
   countryOrRegion   string  ,
   p_k   string  ,
   year   integer  ,
   day   integer  ,
   version   double  
)
STORED AS parquet
location 'v3io://users/admin/data/weather_parquet_spark_snappy/';

create external table weather_parquet_spark (
usaf   string  ,
   wban   integer  ,
   datetime   timestamp  ,
   latitude   double  ,
   longitude   double  ,
   elevation   double  ,
   windAngle   double  ,
   windSpeed   double  ,
   temperature   double  ,
   seaLvlPressure   double  ,
   cloudCoverage   string  ,
   presentWeatherIndicator   double  ,
   pastWeatherIndicator   double  ,
   precipTime   double  ,
   precipDepth   double  ,
   snowDepth   double  ,
   stationName   string  ,
   countryOrRegion   string  ,
   p_k   string  ,
   year   integer  ,
   day   integer  ,
   version   double  
)
STORED AS parquet
location 'v3io://users/admin/data/weather_parquet_spark_no_compress/';
