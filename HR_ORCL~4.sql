BEGIN
DBMS_STATS.GATHER_SYSTEM_STATS(
             gathering_mode => 'interval',
             interval => 720,
             stattab => 'mystats',
             statid => 'OLTP');
END;
/