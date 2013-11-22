#
# Remove this comment after this script was run clean. It was composed based on bash command history.
#
color='\e[1;34m'
detail_color='\e[1;30m'
NC='\e[0m' # No Color
#
# get and set up the Scala wrapper project for Stanford NLP Core
#
echo -e "${detail_color}"
sudo apt-get install mvn2
mkdir stanford-nlp
mkdir stanford-nlp-Scala
cd stanford-nlp
cd stanford-nlp-Scala
git clone https://github.com/sistanlp/processors.git
cd sistanlp-processors/
mvn package # this may take several minutes
echo -e "${color}if everything went well you can now use the Scala wrapper for Stanford NLP Core, after you"
echo -e "setup classpath as per https://github.com/sistanlp/processors#how-to-compile."
echo -e "${NC}"
echo -e "${detail_color}"
#
# and get StanfordNLP also regardless of the Scala wrapper - may take several minutes
# these are the current last two versions, you may change to only the one you want
#
cd ../../
wget http://nlp.stanford.edu/downloads/stanford-corenlp-full-2013-11-12.zip
wget http://nlp.stanford.edu/downloads/stanford-corenlp-full-2013-06-20.zip
unzip stanford-corenlp-full-2013-06-20.zip
unzip stanford-corenlp-full-2013-11-12.zip
echo -e "${color}if everything went well you can now run the shell file included with Stanford NLP Core, or link to it from Java and Scala code"
echo -e "${NC}"

