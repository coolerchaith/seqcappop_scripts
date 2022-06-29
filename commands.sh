bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479627.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479627.fasta  /2_Clean_reads/Oxylabes_479627_1/split-adapter-quality-trimmed/Oxylabes_479627_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_479627_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479627.fasta /2_Clean_reads/Oxylabes_479627_1/split-adapter-quality-trimmed/Oxylabes_479627_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_479627_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479627.fasta /5_Velvet_Mapping/Oxylabes_479627_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_479627_1_read2.sa.sai /2_Clean_reads/Oxylabes_479627_1/split-adapter-quality-trimmed/Oxylabes_479627_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_479627_1/split-adapter-quality-trimmed/Oxylabes_479627_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_479627_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396173.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396173.fasta  /2_Clean_reads/Oxylabes_396173_1/split-adapter-quality-trimmed/Oxylabes_396173_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_396173_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396173.fasta /2_Clean_reads/Oxylabes_396173_1/split-adapter-quality-trimmed/Oxylabes_396173_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_396173_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396173.fasta /5_Velvet_Mapping/Oxylabes_396173_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_396173_1_read2.sa.sai /2_Clean_reads/Oxylabes_396173_1/split-adapter-quality-trimmed/Oxylabes_396173_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_396173_1/split-adapter-quality-trimmed/Oxylabes_396173_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_396173_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_352915.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_352915.fasta  /2_Clean_reads/Oxylabes_352915_1/split-adapter-quality-trimmed/Oxylabes_352915_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_352915_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_352915.fasta /2_Clean_reads/Oxylabes_352915_1/split-adapter-quality-trimmed/Oxylabes_352915_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_352915_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_352915.fasta /5_Velvet_Mapping/Oxylabes_352915_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_352915_1_read2.sa.sai /2_Clean_reads/Oxylabes_352915_1/split-adapter-quality-trimmed/Oxylabes_352915_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_352915_1/split-adapter-quality-trimmed/Oxylabes_352915_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_352915_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0892.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0892.fasta  /2_Clean_reads/Oxylabes_MJR0892_1/split-adapter-quality-trimmed/Oxylabes_MJR0892_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0892_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0892.fasta /2_Clean_reads/Oxylabes_MJR0892_1/split-adapter-quality-trimmed/Oxylabes_MJR0892_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0892_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0892.fasta /5_Velvet_Mapping/Oxylabes_MJR0892_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR0892_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR0892_1/split-adapter-quality-trimmed/Oxylabes_MJR0892_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR0892_1/split-adapter-quality-trimmed/Oxylabes_MJR0892_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR0892_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1202.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1202.fasta  /2_Clean_reads/Oxylabes_MJR1202_1/split-adapter-quality-trimmed/Oxylabes_MJR1202_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR1202_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1202.fasta /2_Clean_reads/Oxylabes_MJR1202_1/split-adapter-quality-trimmed/Oxylabes_MJR1202_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR1202_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1202.fasta /5_Velvet_Mapping/Oxylabes_MJR1202_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR1202_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR1202_1/split-adapter-quality-trimmed/Oxylabes_MJR1202_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR1202_1/split-adapter-quality-trimmed/Oxylabes_MJR1202_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR1202_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479630.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479630.fasta  /2_Clean_reads/Oxylabes_479630_1/split-adapter-quality-trimmed/Oxylabes_479630_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_479630_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479630.fasta /2_Clean_reads/Oxylabes_479630_1/split-adapter-quality-trimmed/Oxylabes_479630_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_479630_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_479630.fasta /5_Velvet_Mapping/Oxylabes_479630_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_479630_1_read2.sa.sai /2_Clean_reads/Oxylabes_479630_1/split-adapter-quality-trimmed/Oxylabes_479630_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_479630_1/split-adapter-quality-trimmed/Oxylabes_479630_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_479630_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0365.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0365.fasta  /2_Clean_reads/Oxylabes_MJR0365_1/split-adapter-quality-trimmed/Oxylabes_MJR0365_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0365_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0365.fasta /2_Clean_reads/Oxylabes_MJR0365_1/split-adapter-quality-trimmed/Oxylabes_MJR0365_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0365_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0365.fasta /5_Velvet_Mapping/Oxylabes_MJR0365_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR0365_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR0365_1/split-adapter-quality-trimmed/Oxylabes_MJR0365_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR0365_1/split-adapter-quality-trimmed/Oxylabes_MJR0365_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR0365_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_384744.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_384744.fasta  /2_Clean_reads/Oxylabes_384744_1/split-adapter-quality-trimmed/Oxylabes_384744_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_384744_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_384744.fasta /2_Clean_reads/Oxylabes_384744_1/split-adapter-quality-trimmed/Oxylabes_384744_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_384744_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_384744.fasta /5_Velvet_Mapping/Oxylabes_384744_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_384744_1_read2.sa.sai /2_Clean_reads/Oxylabes_384744_1/split-adapter-quality-trimmed/Oxylabes_384744_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_384744_1/split-adapter-quality-trimmed/Oxylabes_384744_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_384744_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_438720.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_438720.fasta  /2_Clean_reads/Oxylabes_438720_1/split-adapter-quality-trimmed/Oxylabes_438720_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_438720_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_438720.fasta /2_Clean_reads/Oxylabes_438720_1/split-adapter-quality-trimmed/Oxylabes_438720_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_438720_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_438720.fasta /5_Velvet_Mapping/Oxylabes_438720_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_438720_1_read2.sa.sai /2_Clean_reads/Oxylabes_438720_1/split-adapter-quality-trimmed/Oxylabes_438720_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_438720_1/split-adapter-quality-trimmed/Oxylabes_438720_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_438720_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396168.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396168.fasta  /2_Clean_reads/Oxylabes_396168_1/split-adapter-quality-trimmed/Oxylabes_396168_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_396168_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396168.fasta /2_Clean_reads/Oxylabes_396168_1/split-adapter-quality-trimmed/Oxylabes_396168_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_396168_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396168.fasta /5_Velvet_Mapping/Oxylabes_396168_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_396168_1_read2.sa.sai /2_Clean_reads/Oxylabes_396168_1/split-adapter-quality-trimmed/Oxylabes_396168_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_396168_1/split-adapter-quality-trimmed/Oxylabes_396168_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_396168_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0647.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0647.fasta  /2_Clean_reads/Oxylabes_MJR0647_1/split-adapter-quality-trimmed/Oxylabes_MJR0647_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0647_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0647.fasta /2_Clean_reads/Oxylabes_MJR0647_1/split-adapter-quality-trimmed/Oxylabes_MJR0647_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0647_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0647.fasta /5_Velvet_Mapping/Oxylabes_MJR0647_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR0647_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR0647_1/split-adapter-quality-trimmed/Oxylabes_MJR0647_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR0647_1/split-adapter-quality-trimmed/Oxylabes_MJR0647_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR0647_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396172.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396172.fasta  /2_Clean_reads/Oxylabes_396172_1/split-adapter-quality-trimmed/Oxylabes_396172_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_396172_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396172.fasta /2_Clean_reads/Oxylabes_396172_1/split-adapter-quality-trimmed/Oxylabes_396172_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_396172_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_396172.fasta /5_Velvet_Mapping/Oxylabes_396172_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_396172_1_read2.sa.sai /2_Clean_reads/Oxylabes_396172_1/split-adapter-quality-trimmed/Oxylabes_396172_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_396172_1/split-adapter-quality-trimmed/Oxylabes_396172_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_396172_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0280.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0280.fasta  /2_Clean_reads/Oxylabes_MJR0280_1/split-adapter-quality-trimmed/Oxylabes_MJR0280_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0280_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0280.fasta /2_Clean_reads/Oxylabes_MJR0280_1/split-adapter-quality-trimmed/Oxylabes_MJR0280_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0280_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0280.fasta /5_Velvet_Mapping/Oxylabes_MJR0280_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR0280_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR0280_1/split-adapter-quality-trimmed/Oxylabes_MJR0280_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR0280_1/split-adapter-quality-trimmed/Oxylabes_MJR0280_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR0280_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_393354.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_393354.fasta  /2_Clean_reads/Oxylabes_393354_1/split-adapter-quality-trimmed/Oxylabes_393354_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_393354_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_393354.fasta /2_Clean_reads/Oxylabes_393354_1/split-adapter-quality-trimmed/Oxylabes_393354_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_393354_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_393354.fasta /5_Velvet_Mapping/Oxylabes_393354_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_393354_1_read2.sa.sai /2_Clean_reads/Oxylabes_393354_1/split-adapter-quality-trimmed/Oxylabes_393354_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_393354_1/split-adapter-quality-trimmed/Oxylabes_393354_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_393354_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0815.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0815.fasta  /2_Clean_reads/Oxylabes_MJR0815_1/split-adapter-quality-trimmed/Oxylabes_MJR0815_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0815_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0815.fasta /2_Clean_reads/Oxylabes_MJR0815_1/split-adapter-quality-trimmed/Oxylabes_MJR0815_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0815_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0815.fasta /5_Velvet_Mapping/Oxylabes_MJR0815_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR0815_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR0815_1/split-adapter-quality-trimmed/Oxylabes_MJR0815_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR0815_1/split-adapter-quality-trimmed/Oxylabes_MJR0815_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR0815_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_427387.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_427387.fasta  /2_Clean_reads/Oxylabes_427387_1/split-adapter-quality-trimmed/Oxylabes_427387_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_427387_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_427387.fasta /2_Clean_reads/Oxylabes_427387_1/split-adapter-quality-trimmed/Oxylabes_427387_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_427387_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_427387.fasta /5_Velvet_Mapping/Oxylabes_427387_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_427387_1_read2.sa.sai /2_Clean_reads/Oxylabes_427387_1/split-adapter-quality-trimmed/Oxylabes_427387_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_427387_1/split-adapter-quality-trimmed/Oxylabes_427387_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_427387_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0703.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0703.fasta  /2_Clean_reads/Oxylabes_MJR0703_1/split-adapter-quality-trimmed/Oxylabes_MJR0703_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0703_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0703.fasta /2_Clean_reads/Oxylabes_MJR0703_1/split-adapter-quality-trimmed/Oxylabes_MJR0703_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0703_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0703.fasta /5_Velvet_Mapping/Oxylabes_MJR0703_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR0703_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR0703_1/split-adapter-quality-trimmed/Oxylabes_MJR0703_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR0703_1/split-adapter-quality-trimmed/Oxylabes_MJR0703_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR0703_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/reads.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/reads.fasta  /2_Clean_reads/reads_1/split-adapter-quality-trimmed/reads_1-READ1.fastq.gz  > /5_Velvet_Mapping/reads_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/reads.fasta /2_Clean_reads/reads_1/split-adapter-quality-trimmed/reads_1-READ2.fastq.gz  > /5_Velvet_Mapping/reads_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/reads.fasta /5_Velvet_Mapping/reads_1_read1.sa.sai /5_Velvet_Mapping/reads_1_read2.sa.sai /2_Clean_reads/reads_1/split-adapter-quality-trimmed/reads_1-READ1.fastq.gz /2_Clean_reads/reads_1/split-adapter-quality-trimmed/reads_1-READ2.fastq.gz > /5_Velvet_Mapping/reads_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1235.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1235.fasta  /2_Clean_reads/Oxylabes_MJR1235_1/split-adapter-quality-trimmed/Oxylabes_MJR1235_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR1235_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1235.fasta /2_Clean_reads/Oxylabes_MJR1235_1/split-adapter-quality-trimmed/Oxylabes_MJR1235_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR1235_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR1235.fasta /5_Velvet_Mapping/Oxylabes_MJR1235_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR1235_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR1235_1/split-adapter-quality-trimmed/Oxylabes_MJR1235_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR1235_1/split-adapter-quality-trimmed/Oxylabes_MJR1235_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR1235_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0758.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0758.fasta  /2_Clean_reads/Oxylabes_MJR0758_1/split-adapter-quality-trimmed/Oxylabes_MJR0758_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0758_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0758.fasta /2_Clean_reads/Oxylabes_MJR0758_1/split-adapter-quality-trimmed/Oxylabes_MJR0758_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_MJR0758_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_MJR0758.fasta /5_Velvet_Mapping/Oxylabes_MJR0758_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_MJR0758_1_read2.sa.sai /2_Clean_reads/Oxylabes_MJR0758_1/split-adapter-quality-trimmed/Oxylabes_MJR0758_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_MJR0758_1/split-adapter-quality-trimmed/Oxylabes_MJR0758_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_MJR0758_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_431264.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_431264.fasta  /2_Clean_reads/Oxylabes_431264_1/split-adapter-quality-trimmed/Oxylabes_431264_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_431264_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_431264.fasta /2_Clean_reads/Oxylabes_431264_1/split-adapter-quality-trimmed/Oxylabes_431264_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_431264_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_431264.fasta /5_Velvet_Mapping/Oxylabes_431264_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_431264_1_read2.sa.sai /2_Clean_reads/Oxylabes_431264_1/split-adapter-quality-trimmed/Oxylabes_431264_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_431264_1/split-adapter-quality-trimmed/Oxylabes_431264_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_431264_1-aln.sam &&

bwa index -a is /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_363844.fasta &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_363844.fasta  /2_Clean_reads/Oxylabes_363844_1/split-adapter-quality-trimmed/Oxylabes_363844_1-READ1.fastq.gz  > /5_Velvet_Mapping/Oxylabes_363844_1_read1.sa.sai &&
bwa aln /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_363844.fasta /2_Clean_reads/Oxylabes_363844_1/split-adapter-quality-trimmed/Oxylabes_363844_1-READ2.fastq.gz  > /5_Velvet_Mapping/Oxylabes_363844_1_read2.sa.sai &&
bwa sampe /5_Secapr_reference_assembly/reference_seqs/joined_fasta_library.fasta/Oxylabes_363844.fasta /5_Velvet_Mapping/Oxylabes_363844_1_read1.sa.sai /5_Velvet_Mapping/Oxylabes_363844_1_read2.sa.sai /2_Clean_reads/Oxylabes_363844_1/split-adapter-quality-trimmed/Oxylabes_363844_1-READ1.fastq.gz /2_Clean_reads/Oxylabes_363844_1/split-adapter-quality-trimmed/Oxylabes_363844_1-READ2.fastq.gz > /5_Velvet_Mapping/Oxylabes_363844_1-aln.sam &&

samtools view -bS /5_Velvet_Mapping/Oxylabes_479627-aln.sam > /5_Velvet_Mapping/Oxylabes_479627-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_396173-aln.sam > /5_Velvet_Mapping/Oxylabes_396173-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_352915-aln.sam > /5_Velvet_Mapping/Oxylabes_352915-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR0892-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR0892-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR1202-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR1202-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_479630-aln.sam > /5_Velvet_Mapping/Oxylabes_479630-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR0365-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR0365-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_384744-aln.sam > /5_Velvet_Mapping/Oxylabes_384744-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_438720-aln.sam > /5_Velvet_Mapping/Oxylabes_438720-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_396168-aln.sam > /5_Velvet_Mapping/Oxylabes_396168-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR0647-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR0647-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_396172-aln.sam > /5_Velvet_Mapping/Oxylabes_396172-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR0280-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR0280-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_393354-aln.sam > /5_Velvet_Mapping/Oxylabes_393354-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR0815-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR0815-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_427387-aln.sam > /5_Velvet_Mapping/Oxylabes_427387-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR0703-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR0703-aln.bam &&
samtools view -bS /5_Velvet_Mapping/reads-aln.sam > /5_Velvet_Mapping/reads-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR1235-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR1235-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_MJR0758-aln.sam > /5_Velvet_Mapping/Oxylabes_MJR0758-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_431264-aln.sam > /5_Velvet_Mapping/Oxylabes_431264-aln.bam &&
samtools view -bS /5_Velvet_Mapping/Oxylabes_363844-aln.sam > /5_Velvet_Mapping/Oxylabes_363844-aln.bam &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_479627-aln.bam O=/6_Picard/Oxylabes_479627-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_396173-aln.bam O=/6_Picard/Oxylabes_396173-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_352915-aln.bam O=/6_Picard/Oxylabes_352915-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR0892-aln.bam O=/6_Picard/Oxylabes_MJR0892-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR1202-aln.bam O=/6_Picard/Oxylabes_MJR1202-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_479630-aln.bam O=/6_Picard/Oxylabes_479630-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR0365-aln.bam O=/6_Picard/Oxylabes_MJR0365-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_384744-aln.bam O=/6_Picard/Oxylabes_384744-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_438720-aln.bam O=/6_Picard/Oxylabes_438720-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_396168-aln.bam O=/6_Picard/Oxylabes_396168-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR0647-aln.bam O=/6_Picard/Oxylabes_MJR0647-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_396172-aln.bam O=/6_Picard/Oxylabes_396172-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR0280-aln.bam O=/6_Picard/Oxylabes_MJR0280-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_393354-aln.bam O=/6_Picard/Oxylabes_393354-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR0815-aln.bam O=/6_Picard/Oxylabes_MJR0815-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_427387-aln.bam O=/6_Picard/Oxylabes_427387-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR0703-aln.bam O=/6_Picard/Oxylabes_MJR0703-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/reads-aln.bam O=/6_Picard/reads-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR1235-aln.bam O=/6_Picard/Oxylabes_MJR1235-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_MJR0758-aln.bam O=/6_Picard/Oxylabes_MJR0758-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_431264-aln.bam O=/6_Picard/Oxylabes_431264-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -jar ~//home/matthew/miniconda3/jar/picard.jar I=/5_Velvet_Mapping/Oxylabes_363844-aln.bam O=/6_Picard/Oxylabes_363844-aln_CL.bam VALIDATION_STRINGENCY=SILENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_479627-aln_CL.bam  O=/6_Picard/Oxylabes_479627-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_479627 RGSM=Oxylabes_479627 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_396173-aln_CL.bam  O=/6_Picard/Oxylabes_396173-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_396173 RGSM=Oxylabes_396173 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_352915-aln_CL.bam  O=/6_Picard/Oxylabes_352915-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_352915 RGSM=Oxylabes_352915 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR0892-aln_CL.bam  O=/6_Picard/Oxylabes_MJR0892-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR0892 RGSM=Oxylabes_MJR0892 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR1202-aln_CL.bam  O=/6_Picard/Oxylabes_MJR1202-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR1202 RGSM=Oxylabes_MJR1202 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_479630-aln_CL.bam  O=/6_Picard/Oxylabes_479630-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_479630 RGSM=Oxylabes_479630 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR0365-aln_CL.bam  O=/6_Picard/Oxylabes_MJR0365-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR0365 RGSM=Oxylabes_MJR0365 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_384744-aln_CL.bam  O=/6_Picard/Oxylabes_384744-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_384744 RGSM=Oxylabes_384744 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_438720-aln_CL.bam  O=/6_Picard/Oxylabes_438720-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_438720 RGSM=Oxylabes_438720 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_396168-aln_CL.bam  O=/6_Picard/Oxylabes_396168-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_396168 RGSM=Oxylabes_396168 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR0647-aln_CL.bam  O=/6_Picard/Oxylabes_MJR0647-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR0647 RGSM=Oxylabes_MJR0647 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_396172-aln_CL.bam  O=/6_Picard/Oxylabes_396172-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_396172 RGSM=Oxylabes_396172 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR0280-aln_CL.bam  O=/6_Picard/Oxylabes_MJR0280-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR0280 RGSM=Oxylabes_MJR0280 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_393354-aln_CL.bam  O=/6_Picard/Oxylabes_393354-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_393354 RGSM=Oxylabes_393354 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR0815-aln_CL.bam  O=/6_Picard/Oxylabes_MJR0815-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR0815 RGSM=Oxylabes_MJR0815 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_427387-aln_CL.bam  O=/6_Picard/Oxylabes_427387-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_427387 RGSM=Oxylabes_427387 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR0703-aln_CL.bam  O=/6_Picard/Oxylabes_MJR0703-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR0703 RGSM=Oxylabes_MJR0703 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/reads-aln_CL.bam  O=/6_Picard/reads-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=reads RGSM=reads VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR1235-aln_CL.bam  O=/6_Picard/Oxylabes_MJR1235-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR1235 RGSM=Oxylabes_MJR1235 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_MJR0758-aln_CL.bam  O=/6_Picard/Oxylabes_MJR0758-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_MJR0758 RGSM=Oxylabes_MJR0758 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_431264-aln_CL.bam  O=/6_Picard/Oxylabes_431264-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_431264 RGSM=Oxylabes_431264 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/6_Picard/Oxylabes_363844-aln_CL.bam  O=/6_Picard/Oxylabes_363844-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Oxylabes_363844 RGSM=Oxylabes_363844 VALIDATION_STRINGENCY=LENIENT &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_479627-aln_RG.bam O=/6_Picard/Oxylabes_479627-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_479627.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_396173-aln_RG.bam O=/6_Picard/Oxylabes_396173-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_396173.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_352915-aln_RG.bam O=/6_Picard/Oxylabes_352915-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_352915.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR0892-aln_RG.bam O=/6_Picard/Oxylabes_MJR0892-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR0892.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR1202-aln_RG.bam O=/6_Picard/Oxylabes_MJR1202-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR1202.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_479630-aln_RG.bam O=/6_Picard/Oxylabes_479630-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_479630.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR0365-aln_RG.bam O=/6_Picard/Oxylabes_MJR0365-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR0365.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_384744-aln_RG.bam O=/6_Picard/Oxylabes_384744-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_384744.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_438720-aln_RG.bam O=/6_Picard/Oxylabes_438720-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_438720.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_396168-aln_RG.bam O=/6_Picard/Oxylabes_396168-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_396168.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR0647-aln_RG.bam O=/6_Picard/Oxylabes_MJR0647-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR0647.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_396172-aln_RG.bam O=/6_Picard/Oxylabes_396172-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_396172.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR0280-aln_RG.bam O=/6_Picard/Oxylabes_MJR0280-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR0280.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_393354-aln_RG.bam O=/6_Picard/Oxylabes_393354-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_393354.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR0815-aln_RG.bam O=/6_Picard/Oxylabes_MJR0815-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR0815.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_427387-aln_RG.bam O=/6_Picard/Oxylabes_427387-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_427387.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR0703-aln_RG.bam O=/6_Picard/Oxylabes_MJR0703-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR0703.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/reads-aln_RG.bam O=/6_Picard/reads-aln_MD.bam METRICS_FILE=/6_Picard/reads.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR1235-aln_RG.bam O=/6_Picard/Oxylabes_MJR1235-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR1235.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_MJR0758-aln_RG.bam O=/6_Picard/Oxylabes_MJR0758-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_MJR0758.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_431264-aln_RG.bam O=/6_Picard/Oxylabes_431264-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_431264.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/6_Picard/Oxylabes_363844-aln_RG.bam O=/6_Picard/Oxylabes_363844-aln_MD.bam METRICS_FILE=/6_Picard/Oxylabes_363844.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false &&
java -Xmx2g -jar ~/anaconda/jar/MergeSamFiles.jar SO=coordinate AS=true \\
I=/6_Picard/Oxylabes_479627-aln_MD.bam \\
I=/6_Picard/Oxylabes_396173-aln_MD.bam \\
I=/6_Picard/Oxylabes_352915-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR0892-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR1202-aln_MD.bam \\
I=/6_Picard/Oxylabes_479630-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR0365-aln_MD.bam \\
I=/6_Picard/Oxylabes_384744-aln_MD.bam \\
I=/6_Picard/Oxylabes_438720-aln_MD.bam \\
I=/6_Picard/Oxylabes_396168-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR0647-aln_MD.bam \\
I=/6_Picard/Oxylabes_396172-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR0280-aln_MD.bam \\
I=/6_Picard/Oxylabes_393354-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR0815-aln_MD.bam \\
I=/6_Picard/Oxylabes_427387-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR0703-aln_MD.bam \\
I=/6_Picard/reads-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR1235-aln_MD.bam \\
I=/6_Picard/Oxylabes_MJR0758-aln_MD.bam \\
I=/6_Picard/Oxylabes_431264-aln_MD.bam \\
I=/6_Picard/Oxylabes_363844-aln_MD.bam \\
