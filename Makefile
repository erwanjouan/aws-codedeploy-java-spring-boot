CFTEMPLATE := cloudformation.yml
STACK_NAME := code-deploy-spring-boot

init:
	cd codedeploy && aws cloudformation deploy \
		--template-file $(CFTEMPLATE) \
		--capabilities CAPABILITY_IAM \
		--stack-name $(STACK_NAME)
