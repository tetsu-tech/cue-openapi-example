package schema

import "tetsu-tech.net/openapi/definition"

Queue: definition.#schema & {
  type: "object"
  properties: {
    id: {
      type: "string"
    }
    status: {
      type: "string"
    }
    start_time: {
      type: "string"
      format: "date-time"
    }
    end_time: {
      type: "string"
      format: "date-time"
    }
    created_time: {
      type: "string"
      format: "date-time"
    }
    modified_time: {
      type: "string"
      format: "date-time"
    }
    config: {
      type: "string"
    }
  }
  required: [
    "id",
    "status",
    "start_time",
    "end_time",
    "created_time",
    "modified_time",
    "config",
  ]
}
