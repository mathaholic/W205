tail -n +2 Hospital\ General\ Information.csv > hospitals.csv
tail -n +2 Timely\ and\ Effective\ Care\ -\ Hospital.csv > effective_care.csv
tail -n +2 Readmissions\ and\ Deaths\ -\ Hospital.csv > readmissions.csv
tail -n +2 Measure\ Dates.csv > measures.csv
tail -n +2 hvbp_hcahps_05_28_2015.csv > survey_responses.csv
hdfs dfs -mkdir hospital_compare
hdfs dfs -mkdir hospital_compare/hospitals
hdfs dfs -mkdir hospital_compare/care
hdfs dfs -mkdir hospital_compare/readmissions
hdfs dfs -mkdir hospital_compare/measures
hdfs dfs -mkdir hospital_compare/surveys
hdfs dfs -put hospitals.csv hospital_compare/hospitals
hdfs dfs -put effective_care.csv hospital_compare/care
hdfs dfs -put readmissions.csv hospital_compare/readmissions
hdfs dfs -put measures.csv hospital_compare/measures
hdfs dfs -put survey_responses.csv hospital_compare/surveys