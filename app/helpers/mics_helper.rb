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
end
