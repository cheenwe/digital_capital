module Base

	def self.included(base)
	  base.extend(ClassMethods)
	end

	Mfraction = ['角', '分', '厘']
	Mdigit = [
		'零', '壹', '贰', '叁', '肆',
		'伍', '陆', '柒', '捌', '玖'
	];
	Munit = [
		['元', '万', '亿'],
		['', '拾', '佰', '仟']
	];

  module ClassMethods
		def cb(n)
			# ==== 处理小数部分
			s = ''
			head = n < 0 ? '欠' : '';
			m = n= n.abs();
			i = 0

			while  i < Mfraction.length;
				m1 = (((n * 1000 * (10 ** i)) % 1000)/100).to_i
				s = s + (Mdigit[m1] + Mfraction[i]).sub(/零./, '')
				i = i +1
			end
			s = (s==""? '整':s);
			m = m.to_i

			# ==== 处理整数部分
			i = 0
			while i < Munit[0].length && m > 0
				# p  "i: #{i}, m: #{m}, i: #{i}"
				j = 0
				t = ''
				while j < Munit[1].length && m >0
					t = Mdigit[m % 10] + Munit[1][j] + t;
					m = (m*10 / 100).to_i
					j = j +1
				end
				s = t.sub(/(零.)*零$/, '').sub(/^$/, '零') + Munit[0][i] + s
				i = i +1
			end

			res = head + s.sub(/(零.)*零元$/, '元').sub(/(零.)+/, '零').sub(/^整$/, '零元整')
			# p res
			return res
		end
	end

end
