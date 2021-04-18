.POSIX:
DESTDIR=public
LOCAL_PORT=45643
CURR_DATE=`date +'%Y%m%d'`

.PHONY: clean
clean:
	@echo "\n» Cleaning old build"
	cd $(DESTDIR) && rm -rf *

.PHONY: build
build: build_prod build_dev

# ---

.PHONY: build_prod
build_prod: clean
	@echo "\n» Generating site"
	hugo --minify --gc --cleanDestinationDir -d $(DESTDIR) --environment="production"
	@echo "\n» Compress $(DESTDIR)"
	cd $(DESTDIR) && zip -rq ../compass_prod_$(CURR_DATE).zip *

# ---

.PHONY: build_dev
build_dev: clean
	@echo "\n» Generating site"
	hugo --minify --gc --cleanDestinationDir -d $(DESTDIR) --environment="development"
	@echo "\n» Compress $(DESTDIR)"
	cd $(DESTDIR) && zip -rq ../compass_dev_$(CURR_DATE).zip *

# ---

.PHONY: serve
serve:
	@echo "\n» Serving to http://localhost:$(LOCAL_PORT) "
	hugo serve --disableFastRender --i18n-warnings --noHTTPCache --navigateToChanged --buildDrafts --buildDrafts --gc -p $(LOCAL_PORT)
