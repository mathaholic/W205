from pyspark.sql import HiveContext
sqlContext = HiveContext(sc)

sqlContext.sql('show tables').show()
