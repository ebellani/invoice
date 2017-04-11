objects := $(patsubst %.org,%.html,$(wildcard *.org))
EMACS_CONF := -Q -l conf/emacs-conf.el --batch

.PHONY : clean all

all : $(objects)

%.html: %.org
	emacs $(EMACS_CONF) $< -f org-html-export-to-html

clean:
	-rm -rf $(objects)
