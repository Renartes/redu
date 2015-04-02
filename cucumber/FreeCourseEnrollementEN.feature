@i9n
	Feature: subscribe to free courses
	
	As a common user
	I want to subscribe to a free course
	So that I can access to the course content

	Scenario: subscribe to a course
	Given I'm subscribing to a course
	And the course is saved as free
	When I confirm the subscription
	Then the subscription is automaticly approved

	Scenario: cancelling a course
	Given I've subscribe to a course
	When i choose to cancel my subscription
	Then the subscription is cancelled

	Scenario: course settings changes
	Given I've subscribed to a course
	And the course configuration is changed into mensual subscription
	Then my subscription is blocked

	Scenario: cancel subscription to an initially free course
	Given I've subscrided to a course which configuration was initially free
	And settings are changed into mensual subscription
	When I choose to cancel my subscription
	Then my subscription to this course is canceled

	Scenario: paying an initially free course
	Given I've subscrided to a course which configuration was initially free
	And settings are changed into mensual subscription
	When my payment is confirmed
	Then my subscription to this course is unblocked