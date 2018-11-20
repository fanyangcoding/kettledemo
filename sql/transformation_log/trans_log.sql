CREATE TABLE trans_log
(
  ID_BATCH INT
, CHANNEL_ID VARCHAR(255)
, TRANSNAME VARCHAR(255)
, STATUS VARCHAR(15)
, LINES_READ BIGINT
, LINES_WRITTEN BIGINT
, LINES_UPDATED BIGINT
, LINES_INPUT BIGINT
, LINES_OUTPUT BIGINT
, LINES_REJECTED BIGINT
, ERRORS BIGINT
, STARTDATE DATETIME
, ENDDATE DATETIME
, LOGDATE DATETIME
, DEPDATE DATETIME
, REPLAYDATE DATETIME
, LOG_FIELD MEDIUMTEXT
)
;
CREATE INDEX IDX_trans_log_1 ON trans_log(ID_BATCH)
;
CREATE INDEX IDX_trans_log_2 ON trans_log(ERRORS, STATUS, TRANSNAME)