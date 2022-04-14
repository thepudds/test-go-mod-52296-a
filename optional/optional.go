package optional

import (
	"github.com/containerd/containerd/pkg/apparmor"
	"github.com/sirupsen/logrus"
)

func Optional() {
	if apparmor.HostSupports() {
		logrus.Infof("Running Foobar Deluxe, with AppArmor")
	} else {
		logrus.Infof("Running Foobar Basic")
	}
}
