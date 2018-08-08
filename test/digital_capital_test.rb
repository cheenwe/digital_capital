require "test_helper"

class DigitalCapitalTest < Minitest::Test
	def test_that_it_has_a_version_number
		refute_nil ::DigitalCapital::VERSION
	end

	def amount(n)
    DigitalCapital.cb(n)
  end

	# http://www.917118.com/tool/rmb.html

	def test_0
		assert_equal "壹拾玖万玖仟零壹拾壹元叁角", amount(199011.3)
	end

	def test_1
		assert_equal "壹亿玖仟玖佰肆拾玖万玖仟肆佰玖拾玖元玖角贰分壹厘", amount(199499499.921)
	end

	def test_2
		assert_equal "壹仟零壹拾万柒仟零佰零拾壹元叁角壹分", amount(10107001.31)
	end

	def test_3
		assert_equal "壹佰零壹万叁仟壹佰伍拾壹元整", amount(1013151)
	end

	def test_4
		assert_equal "欠玖佰肆拾玖万玖仟肆佰玖拾玖元玖角贰分", amount(-9499499.92)
	end
end
