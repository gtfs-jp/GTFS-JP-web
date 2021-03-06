###  便情報（必須：trips.txt）
運行する便の情報を設定します。便情報は、「GTFS-JP」における運行情報設定の最小単位で、旅客が連続して乗車可能な１回の運行を1つの便情報[trip_id]として設定します。


#### trips.txt

| フィールド名 | 日本語名 | 国内 | 日本のバス向けの設定項目 | 設定例 |
|-----------------------|----------------|------|--------------|----------------|
| trips.txt | 便情報 | 必須 |  |  |
| route_id | 経路 ID | 必須 | 「routes」から参照。 | 1001 |
| service_id | 運行日ID | 必須 | 「calendar」から参照。 | 平日（月～金） |
| ★trip_id | 便ID | 必須 | 便を特定するIDを指定。例）route_id+service_id+便番号など | 1001_WD_001 |
| trip_headsign | 便行先 | 任意 | 便としての行先と経由を設定。急行・直通等の種別がある場合は、行き先に加えて種別を併記。【例：急行　錦糸町駅前行き】 | 東京ビッグサイト（月島駅経由） |
| trip_short_name | 便名称 | 任意 | 便を特定可能な名称がある場合、旅客に案内する必要がある場合のみ設定。【例：萩エクスプレス1号】ただしGTFSの仕様上、○号等の表示がなく、当該便の特定が不可能な場合は、trip_short_nameではなくtrip_headsignの行き先に加えて名称を併記。【例：萩エクスプレス　東京駅八重洲口行き】また、不定期運行路線等に関する注記がある場合には、当該注記を設定。 | ※設定例では便番号に相当するものがないため省略 |
| direction_id | 上下区分 | 任意 | その便の往復区分を指定。　0：復路　1：往路 | 1 |
| block_id | 便結合区分 | 任意 | 別々の便(trips)として設定されている便を紐付け、連続して案内を行う場合に設定。バスの場合、連続乗車が可能な循環系統等を表現するために使用。 | ※設定例は循環系統ではないため省略 |
| shape_id | 描画 ID | 任意 | 「shapes」から参照。 | S_1001 |
| wheelchair_accessible | 車いす利用区分 | 任意 | 当該便における車いすの乗車可否について設定。　０：車いすによる乗車可否の情報なし　１：少なくとも1台の車いすによる乗車可能　２：車いすによる乗車不可 | 0 |
| bikes_allowed | 自転車持込区分 | 任意 | 当該便における自転車の持込可否について設定。　０：自転車の持込可否の情報なし　１：少なくとも1台の自転車の持込可能　２：自転車の持込不可 | 0 |
| jp_trip_desc | 便情報 | 任意 | 案内時に便に説明が必要な場合に使用。Calenderで制御が困難な不定期運行路線や時刻表に路線としてまとめて表示する場合に説明が必要となる項目を設定。 |  |
| jp_trip_desc_symbol | 便記号 | 任意 | 時刻表形式で案内を行う場合に、便情報に代わり時刻に付ける凡例を設定。 |  |
| jp_office_id | 営業所ID | 任意 | 「offices_jp」から参照。 | S |
