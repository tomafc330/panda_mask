require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PandaMask" do
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
		"contact us at tommytcchan at asdf dot com now.".panda_mask.should == 'contact us at [removed as it violates our terms of service] now.'
	end
end
