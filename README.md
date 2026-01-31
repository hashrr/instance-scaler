# Instance Scaler

The project creates a Systems Manager Automation document that can be used for re-sizing a given instance.

You can just copy the contents of the [Automation Document](./ssm_documents/EC2-VerticalScaling.yml) if you do not want to use terraform to deploy.

## Steps in Automation document
- Initiates the `StopInstances` API for the instance provided
- Waits for the instance to stop (enter the `stopped` state)
- Modify the instance type value to the target type
- Starts the instance using `StartInstances` API