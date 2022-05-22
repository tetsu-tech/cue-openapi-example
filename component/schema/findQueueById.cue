package schema

import "tetsu-tech.net/openapi/definition"

FindQueueByIdRequest: definition.#schema & {
  type: "object"
  properties: {
    id: {
      type: "string"
    }
  }
  required: [
    "id"
  ]
}
