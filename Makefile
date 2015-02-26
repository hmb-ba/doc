TARGET=documentation.pdf
LL=latexmk -pdf -pvc
CLEAN=latexmk -c

all: $(TARGET)
.PHONY : $(TARGET) clean all

$(TARGET): $(TARGET:%.pdf=%.tex)
	$(LL) $<

clean:
	$(CLEAN)
