### 運行間隔情報(任意：frequencies.txt）
定められた時刻表がなく、一定間隔で運行する場合に設定します。運行間隔情報はGTFSのファイルとして定義されていますが、国内の経路検索で設定する必要性は低いと考えられます。

#### frequencies.txt

| フィールド名 | 日本語名 | 国内 | 日本のバス向けの設定項目 | 設定例 |
|-----------------|--------------|------|-----------------|---------------|
| frequencies.txt | 運行間隔情報 | 任意 | 定められた時刻表がなく、一定間隔で運行する場合に設定。 |  |
| trip_id | 便ID | 必須 | 「trips」から参照。 | 1001_WD_001 |
| start_time | 開始時刻 | 必須 | 定間隔運行案内を開始する時刻を指定。HH:MM:SS  形式で指定。24:00:00 以降の時刻は25:35:00のように表現する。 | 10:00:00 午前 |
| end_time | 終了時刻 | 必須 | 定間隔運行案内を終了する時刻を指定。HH:MM:SS  形式で指定。24:00:00 以降の時刻は25:35:00のように表現する。 | 4:00:00 午後 |
| headway_secs | 運行間隔 | 必須 | 定間隔運行案内を行う運行間隔の値は秒単位で設定。 | 900 |
| exact_times | 案内精度 | 任意 | 定期間隔運行案内を行う場合に時刻を具体的な時刻を案内しない場合は0、時刻を案内する場合は1を指定する。1が設定されている場合は、start_timeからend_timeまでheadway_secs間隔の時刻を案内します。 | 0 |
