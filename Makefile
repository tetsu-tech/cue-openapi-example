# root.cueの定義からopenapi.yamlを吐き出す
.PHONY: generate
generate:
	cue export root.cue --out yaml > openapi.yaml
