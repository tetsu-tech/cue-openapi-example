package root

// tetsu-tech.net/openapi が プロジェクトルートのパスとして扱われる
import (
	"tetsu-tech.net/openapi/path"
	"tetsu-tech.net/openapi/definition"
	"tetsu-tech.net/openapi/component/schema"
)

// definition.#opanapi は、definition/openapi.cue で定義されている
// openapi のバージョンは 3.0.3 で定義済みなので、ここで記載する必要はない
definition.#openapi & {
	info: {
		title:   "The sample API"
		version: "0.0.1"
	}
	servers: [
		{
			url:         "http://localhost:3000/v1"
			description: "local server"
		},
	]
	// import した path パッケージを使う
	paths: path
	components: {
		// import した component/schema パッケージを使う
		schemas: schema
	}
}
