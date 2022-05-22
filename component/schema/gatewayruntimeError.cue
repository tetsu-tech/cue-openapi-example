package schema

import "tetsu-tech.net/openapi/definition"

GatewayRuntimeError: definition.#schema & {
  type: "object"
  properties: {
    code: {
      format: "int32"
      type: "number"
    }
    details: {
      type: "array"
      items: {
        $ref: "#/components/schemas/ProtocolBufferAny"
      }
    }
    error: {
      type: "string"
    }
    message: {
      type: "string"
    }
  }
}
