if(FALSE){
  '''
  Title: Counting DNA Nucleotides
  Rosalind ID: DNA
  Rosalind #: 001
  URL: http://rosalind.info/problems/dna
  '''
}

require(stringr)

file_name = "data/rosalind_dna.txt"
seq = readChar(file_name, file.info(file_name)$size)
str_count(seq, c("A","C","G","T"))
