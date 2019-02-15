module MicsHelper
	#マイク練分割数を出力
	def split_mic_count(mic)
		Mic.select{|m| m.date == mic.date && m.period_id == mic.period_id}.count
	end
	#該当分割マイク練でn番目に入ってるバンドが存在するか
	def mic_order_any?(mic, n)
		Mic.select{|m| m.date == mic.date && m.period_id == mic.period_id && m.order == n}.any?
	end
	
	#該当分割マイク練でn番目に入ってるバンドの名前を取得
	def ordered_band_name(mic, n)
		Mic.select{|m| m.date == mic.date && m.period_id == mic.period_id && m.order == n}.first.band.name
	end

	#マイク練の状態出力
	def mic_status_string(mic)
		if mic.status == 1
      "承認済み"
    elsif mic.status == 2
      "キャンセル"
    else
      "未承認"
    end
	end

	#PA出席の状態出力
	def pa_attendance_string(mic)
		mic.pa_attendance ? "PA出席" : "PA欠席"
	end
end
