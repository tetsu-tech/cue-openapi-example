package schema

import "tetsu-tech.net/openapi/definition"

ProtocolBufferAny: definition.#schema & {
  type: "object"
  properties: {
    typeUrl: {
      description: "hoge"
      type: "string"
    }
    value: {
      format: "byte"
      type: "string"
    }
  }
  required: [
    "typeUrl",
    "value"
  ]
}
