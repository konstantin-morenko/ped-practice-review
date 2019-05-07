
SOURCE_NAME = ped-practice-review
SOURCE_FILE = $(SOURCE_NAME).odt
BUILD_FILES = $(SOURCE_NAME).pdf $(SOURCE_NAME).docx

all: $(BUILD_FILES)


$(BUILD_FILES): $(SOURCE_FILE)
# $(suffix) is not used because of it doesn't delete period
	libreoffice --convert-to $(subst $(SOURCE_NAME).,,$@) $<

clean:
	rm $(BUILD_FILES)
