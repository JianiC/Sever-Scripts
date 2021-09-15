## from best-tree run pda and then subsampling
## take user augu with flag
while getopts t:s:f: flag
do
    case "${flag}" in
        t) tree=${OPTARG};;
        s) size=${OPTARG};;
        f) fasta=${OPTARG};;
    esac
done

## pda command line

/Users/jianichen1/Desktop/phylogenetic_software/pda-1.0.3-Darwin/bin/pda $tree -k $size -1out 


## read .pdataxaout file to get seq name
pdataxa="${tree}.pdtaxa"
line2=1+size
fastapda="${fasta}.pda"

awk  'NR == 2,NR == line2 {print $0}'  $pdataxa >> taxa.txt

## from taxa file run select taxa bash command

## read the original fasta file

awk '{ if ((NR>1)&&($0~/^>/)) { printf("\n%s", $0); } else if (NR==1) { printf("%s", $0); } else { printf("\t%s", $0); } }' $fasta | grep -Ff taxa.txt | tr "\t" "\n" >> $fastapda