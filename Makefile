test-cov: istanbul

istanbul:
	istanbul cover node_modules/mocha/bin/_mocha -- -R spec test/index-spec

coveralls:
	cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js