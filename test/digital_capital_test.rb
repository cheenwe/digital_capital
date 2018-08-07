require "test_helper"

class DigitalCapitalTest < Minitest::Test
	def test_that_it_has_a_version_number
		refute_nil ::DigitalCapital::VERSION
	end

	# http://www.917118.com/tool/rmb.html
	def test_1
		assert "壹亿玖仟玖佰肆拾玖万玖仟肆佰玖拾玖元玖角贰分"
			DigitalCapital.cb(199499499.922)
	end


	def test_2
		assert "壹拾万零柒仟零壹元叁角壹分"
			DigitalCapital.cb(10107001.315)
	end

	def test_3
		assert "壹拾万零壹仟叁佰壹拾伍元整"
			DigitalCapital.cb(1013151)
	end

end
