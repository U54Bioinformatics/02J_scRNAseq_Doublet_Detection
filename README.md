# 02J_scRNAseq_Doublet_Detection  

## to run [DoubletFinder](https://github.com/chris-mcginnis-ucsf/DoubletFinder)<sup>[1]</sup>  
- If you have the cell annotation file for your counts data, use [DoubletFinder_w.annot.sh](https://github.com/U54Bioinformatics/02J_scRNAseq_Doublet_Detection/blob/main/DoubletFinder_w.annot.sh)  
- If you don't have the cell annotation file **<sup>*</sup>** for your counts data, use [DoubletFinder_wo.annot.sh](https://github.com/U54Bioinformatics/02J_scRNAseq_Doublet_Detection/blob/main/DoubletFinder_wo.annot.sh)  

## to run [Scrublet](https://github.com/AllonKleinLab/scrublet)<sup>[2]</sup>   
use [Scrublet.sh](https://github.com/U54Bioinformatics/02J_scRNAseq_Doublet_Detection/blob/main/Scrublet.sh)


## reference
[1] [McGinnis, C. S., Murrow, L. M., & Gartner, Z. J. (2019). DoubletFinder: doublet detection in single-cell RNA sequencing data using artificial nearest neighbors. Cell systems, 8(4), 329-337.](https://www.sciencedirect.com/science/article/pii/S2405471219300730)  
[2] [Wolock, S. L., Lopez, R., & Klein, A. M. (2019). Scrublet: computational identification of cell doublets in single-cell transcriptomic data. Cell systems, 8(4), 281-291.](https://www.sciencedirect.com/science/article/pii/S2405471218304745)

---  
### * about the cell annotation file:  
Jeff: 
- DoubletFinder looks for possible pairs of cells that were merged when preparing the 10x samples.  Thus, you should run the doublet detection only on cells from a single sample.  It doesn't really make sense to run on cells from different samples since they can't form doublets if they prepared together.  If cells are from multiple samples, you can supply a "sample_file" that tells BETSY which sample each cell is from.  
- You can leave sample_file out if all the cells in your gene expression file are from the same sample.  

The input "cell annotation" should be in the format of tab-delimited plain text file, looking like so:  

  | Cell | Sample            | 
  | ---- | -----             |
  | Cell.1    | SampleA      |
  | Cell.2    | SampleB      |
  | Cell.3    | SampleC      | 
  | Cell.4    | SampleA      |
  | ...       | ...          |
  
  Here's [an example](https://raw.githubusercontent.com/U54Bioinformatics/02J_scRNAseq_Doublet_Detection/main/sample.txt) of the cell annotation file.  
