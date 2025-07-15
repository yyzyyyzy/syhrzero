package svc

import (
	{{.configImport}}
)

type ServiceContext struct {
	Config {{.config}}
	{{.middleware}}
	Trans     *i18n.Translator
}

func NewServiceContext(c {{.config}}) *ServiceContext {
    trans := i18n.NewTranslator(c.I18nConf, i18n2.LocaleFS)
	return &ServiceContext{
		Config: c,
		Trans:     trans,
		{{.middlewareAssignment}}
	}
}
