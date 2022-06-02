package configs

import (
	"wizbackend/pkg/logging"
)

type Config struct {
	AppName    string
	Port       int
	EnableAPM  bool
	PgDbConfig PgDbConfig
	LogConfig  LogConfig
}

type PgDbConfig struct {
	Host           string
	Port           int
	Username       string
	Password       string
	Database       string
	DatabasePrefix string
	MaxConnections int
	MaxIdle        int
}

type LogSink string

const (
	CONSOLE LogSink = "CONSOLE"
	STDOUT  LogSink = "STDOUT"
)

type LogConfig struct {
	LogSink  LogSink
	LogLevel logging.LogLevel
}

type ConfigTier string

const (
	PRODUCTION ConfigTier = "PRODUCTION"
	PREPROD    ConfigTier = "PREPROD"
	SIT        ConfigTier = "SIT"
	LOCAL      ConfigTier = "LOCAL"
	STAGING    ConfigTier = "STAGING"
)