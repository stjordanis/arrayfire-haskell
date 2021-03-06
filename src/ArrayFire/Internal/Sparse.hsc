{-# LANGUAGE CPP #-}
module ArrayFire.Internal.Sparse where

import ArrayFire.Internal.Defines
import Foreign.Ptr
import Foreign.C.Types

#include "af/sparse.h"
foreign import ccall unsafe "af_create_sparse_array"
    af_create_sparse_array :: Ptr AFArray -> DimT -> DimT -> AFArray -> AFArray -> AFArray -> AFStorage -> IO AFErr
foreign import ccall unsafe "af_create_sparse_array_from_ptr"
    af_create_sparse_array_from_ptr :: Ptr AFArray -> DimT -> DimT -> DimT -> Ptr () -> Ptr CInt -> Ptr CInt -> AFDtype -> AFStorage -> AFSource -> IO AFErr
foreign import ccall unsafe "af_create_sparse_array_from_dense"
    af_create_sparse_array_from_dense :: Ptr AFArray -> AFArray -> AFStorage -> IO AFErr
foreign import ccall unsafe "af_sparse_convert_to"
    af_sparse_convert_to :: Ptr AFArray -> AFArray -> AFStorage -> IO AFErr
foreign import ccall unsafe "af_sparse_to_dense"
    af_sparse_to_dense :: Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_sparse_get_info"
    af_sparse_get_info :: Ptr AFArray -> Ptr AFArray -> Ptr AFArray -> Ptr AFStorage -> AFArray -> IO AFErr
foreign import ccall unsafe "af_sparse_get_values"
    af_sparse_get_values :: Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_sparse_get_row_idx"
    af_sparse_get_row_idx :: Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_sparse_get_col_idx"
    af_sparse_get_col_idx :: Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_sparse_get_nnz"
    af_sparse_get_nnz :: Ptr DimT -> AFArray -> IO AFErr
foreign import ccall unsafe "af_sparse_get_storage"
    af_sparse_get_storage :: Ptr AFStorage -> AFArray -> IO AFErr
