DATAFILE=data/text_emotion.csv
DATAURL=https://www.crowdflower.com/wp-content/uploads/2016/07/text_emotion.csv

all: data

data:
	if [ ! -d 'data' ]; then mkdir data; fi
	if [ ! -f "$(DATAFILE)" ]; then wget -O $(DATAFILE) $(DATAURL); fi

clean:
	-@rm -R data 2>/dev/null || true

.PHONY: all data clean
