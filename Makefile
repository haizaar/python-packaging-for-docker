
hello-stretch:
	cd $@ && docker build -t hello:stretch .

hello-alpine:
	cd $@ && docker build -t hello:alpine .

cheers-plain:
	cd $@ && docker build -t cheers:plain .

cheers-clean:
	cd $@ && docker build -t cheers:clean .

cheers-single:
	cd $@ && docker build -t cheers:single .

cheers-multi:
	cd $@ && docker build -t cheers:multi .

cheers-minimal:
	cd $@ && docker build -t cheers:minimal .

cheers-pyinst:
	cd $@ && docker build -t cheers:pyinst .


.PHONY: hello-stretc hello-alpine \
		cheers-plain cheers-clean \
		cheers-single cheers-multi \
		cheers-minimal cheers-pyinst
