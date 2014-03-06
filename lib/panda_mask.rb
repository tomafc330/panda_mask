class String
	def panda_mask(removed_text = '[removed as it violates our terms of service]')

		result = self

		rules = [
			/[A-Za-z0-9._%+-]+\s*(\s*(\[|\()\s*at\s*(\]|\))\s*|\s*(\[|\()*@(\]|\))*\s*)\s*[A-Za-z0-9.-]+\s*(\[|\()*(\s*dot\s*|\.)(\]|\))*\s*[A-Za-z0-9]+/, #std email or any replacement with [at] or [dot]
			/[A-Za-z0-9._%+-]+\s*at\s*[A-Za-z0-9.-]+\s*(dot|\.)\s*[A-Za-z0-9]+/, #no symbols (ie. ) tommytcchan at asdf dot com
			/\+*[-_.\dO]{7,}/,
			/\+*[\dO]{3,}.[\dO]{3,}.[\dO]{3,}/, #ie. 12O-4567
			/\+*[-_.\dO]{3,}.[\dA-Z]{4,}/, #ie. +1-800-GOTRICE
		]

		rules.each do |rule|
			result = result.gsub(rule, removed_text)
		end

		result
	end
end