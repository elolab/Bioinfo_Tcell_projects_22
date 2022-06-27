#-------------------------------Helper script----------------------------------#
# Author: António Sousa (e-mail: aggode@utu.fi)
# Date: 10/06/2021
# Last update: 10/06/2022
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
merge_metadata <- function(meta_ls) {
	# 'merge_metadata()': rbind multiple data frames 
	#by common column names inserting NAs in the missing
	#values. 
	# 'meta_ls': list of data frames to merge.

	meta_all <- meta_ls[[1]]
	vars2merge <- colnames(meta_all)
	rows <- nrow(meta_all)
	for (i in 2:length(meta_ls)) {
		curr_vars <- colnames(meta_ls[[i]])
		common_vars <- intersect(vars2merge,curr_vars)
		meta_extra_x <- meta_all[,!(vars2merge %in% common_vars),drop=FALSE]
		meta_extra_y <- meta_ls[[i]][,!(curr_vars %in% common_vars), drop=FALSE]
		meta_all <- rbind(meta_all[,common_vars,drop=FALSE],meta_ls[[i]][,common_vars,drop=FALSE])
		meta_all[1:rows,colnames(meta_extra_x)] <- meta_extra_x
		meta_all[(rows+1):nrow(meta_all),colnames(meta_extra_y)] <- meta_extra_y
		rows <- nrow(meta_all)
		vars2merge <- colnames(meta_all)
	}
	return(meta_all)
}
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
scanorama_int <- function(seu_ls) {
	
	# 'scanorama_int()': scanorama integration method
	#by using a Seurat object with HVG/HVF and scaled
	#already to return corrected counts and embedding
	#as a Seurat object

	## Parse data for Scanorama
	mtx <- lapply(seu_ls, function(x) t(as.matrix(GetAssayData(x, slot="scale.data")))) 
	genes <- lapply(mtx, function(x) colnames(x))
	cells <- lapply(mtx, function(x) row.names(x)) 
	cells <- unlist(cells) 
	names(mtx) <- names(genes)  <- NULL

	# Integration & batch-correction
	int_ls <- scanorama$correct(mtx, genes, 
				    return_dimred=TRUE, 
				    return_dense=TRUE)

	## Parse results
	# Join dimensional reductions
	int_dr <- do.call(rbind,int_ls[[1]])
	colnames(int_dr) <- paste0("PC_", 1:100)
	row.names(int_dr) <- cells

	# Join integrated counts
	int_t <- lapply(int_ls[[2]],t)
	int_counts <- do.call(cbind,int_t)
	row.names(int_counts) <- as.character(int_ls[[3]])
	colnames(int_counts) <- cells

	# Create Seurat object, merge scaled.data from list & 
	#save @scale.data in @data in integrated obj
	int <- CreateSeuratObject(counts=int_counts, # @counts: corrected scanorama data
				  assay="integrated") 
				  #project="batch")
	int@assays$integrated@data <- t(do.call("rbind",mtx)) # @data: scale.data used for integration
	if (!is.null(seu_ls)) { # add metadata
		meta_ls <- lapply(seu_ls, function(x) x@meta.data)
		meta_all <- merge_metadata(meta_ls)
		int@meta.data <- meta_all
		row.names(int@meta.data) <- colnames(int)
	}

	# Add dimensional reduction 
	std <- apply(int_dr, MARGIN=2, FUN=sd)
	int@reductions$pca <- CreateDimReducObject(embeddings=int_dr, 
						   stdev=std, key="PC_", 
						   assay = "integrated")
	row.names(int@reductions$pca@cell.embeddings) <- colnames(int)

	# Add the 'RNA' assay with the slot 'counts' (added at: 13/05/2022)
	raw_counts <- lapply(seu_ls, function(x) GetAssayData(x, assay="RNA", slot="counts")) 
	raw_counts <- do.call(cbind, raw_counts)
	int@assays$RNA <- CreateAssayObject(counts=raw_counts)
	int@assays$RNA@key <- "rna_" # required due to issue: https://github.com/satijalab/seurat/issues/5676

	return(int)
}
#------------------------------------------------------------------------------#
