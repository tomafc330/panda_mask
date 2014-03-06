require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PandaMask tests with e-mail" do
	it "mask basic e-mails" do
		"Hello, please contact me at tom.yu@asdf-town.kitchen so we can chat off the system.".panda_mask.should == 'Hello, please contact me at [removed as it violates our terms of service] so we can chat off the system.'
	end

	it "e-mails within phrase should remove" do
		"Hello, please contact my e-mail(tom.yu@asdf-town.kitchen) so we can chat off the system.".panda_mask.should == 'Hello, please contact my e-mail([removed as it violates our terms of service]) so we can chat off the system.'
	end

	it "catches emails with parenthesis variation 1" do
		"contact us at tommytcchan [at] asf.com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 1" do
		"contact us at tommytcchan [at] asf.com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 1" do
		"contact us at tommytcchan  [at]  asf.com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 1" do
		"contact us at tommytcchan  [ at ]  asf.com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 1" do
		"contact us at tommytcchan[at]asf[dot]com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 2" do
		"contact us at tommytcchan[at]asf.com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 3" do
		"contact us at tommytcchan@asf[dot]com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 3" do
		"contact us at tommytcchan @ asf [dot] com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 3" do
		"contact us at tommytcchan @ asf . com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 3" do
		"contact us at tommytcchan @ asf [ dot ] com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 3" do
		"contact us at tommytcchan(@)asdf(.)com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 3" do
		"contact us at tommytcchan(at)asdf(dot)com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "catches emails with parenthesis variation 3" do
		"contact us tommytcchan at asdf dot com now.".panda_mask.should == 'contact us [removed as it violates our terms of service] now.'
	end

	it "catches emails with text email and ." do
		"contact us at tommytcchan at asdf.com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'

	end
end

describe "PandaMask tests with phone #" do
	it "basic phone strip" do
		"contact us at 4151233333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip 2" do
		"contact us at 415-123-3333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip 3" do
		"contact us at 415_123_3333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with intl code" do
		"contact us at 1-415-123-3333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with intl code and plus" do
		"contact us at +1-415-123-3333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with itnl code and plus 2" do
		"contact us at +415-123-3333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with +" do
		"contact us at +4151233333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with spaces" do
		"contact us at 415 123 3333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with dots" do
		"contact us at 415.123.3333 now.".panda_mask.should == 'contact [removed as it violates our terms of service] now.'
	end

	it "basic phone strip intl and dashes" do
		"contact us at 1-41O-123-3333 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with 1800 num and text" do
		"contact us at 1-800-GOTRICE now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip with 1800 num and text 2" do
		"contact us at +1-800-GOTRICE now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone strip only 7 charcs" do
		"contact us at 123-4567 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end

	it "basic phone with letter O" do
		"contact us at 12O-4567 now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end
end
