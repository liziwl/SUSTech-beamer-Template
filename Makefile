.PHONY:clean

main.pdf: main.tex
    xelatex main.tex
    ls | grep main | grep -v main.tex | grep -v main.pdf | xargs rm
    rm ./chapter/*.aux
clean:
    rm main.pdf
