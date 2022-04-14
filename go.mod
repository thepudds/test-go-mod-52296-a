module github.com/thepudds/test-go-mod-52296-a

go 1.18

require (
	github.com/containerd/containerd v1.6.2
	github.com/sirupsen/logrus v1.7.0
)

require golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e // indirect

exclude (
	github.com/sirupsen/logrus v1.7.1
	github.com/sirupsen/logrus v1.8.0
	github.com/sirupsen/logrus v1.8.1
)
