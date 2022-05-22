package path

import "tetsu-tech.net/openapi/definition"

"/internal-service/masspush/findQueueById": definition.#path & {
	post: {
		operationId: "TestService_FindQueueById"
		requestBody: {
			content: {
				"application/json": {
					schema: {
						$ref: "#/components/schemas/FindQueueByIdRequest"
					}
				}
			}
			required: true
		}
		responses: {
			"200": {
				description: "A successful response."
				content: {
					"application/json": {
						schema: {
							$ref: "#/components/schemas/Queue"
						}
					}
				}
			}
			default: {
				description: "An unexpected error response"
				content: {
					"application/json":
						schema: {
							$ref: "#/components/schemas/GatewayRuntimeError"
						}
				}
			}
		}
		tags: [
			"TestService",
		]
	}
}
