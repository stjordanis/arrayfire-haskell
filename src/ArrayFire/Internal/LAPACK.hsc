{-# LANGUAGE CPP #-}
module ArrayFire.Internal.LAPACK where

import ArrayFire.Internal.Defines

import Foreign.Ptr
import Foreign.C.Types

#include "af/lapack.h"
foreign import ccall unsafe "af_svd"
    af_svd :: Ptr AFArray -> Ptr AFArray -> Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_svd_inplace"
    af_svd_inplace :: Ptr AFArray -> Ptr AFArray -> Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_lu"
    af_lu :: Ptr AFArray -> Ptr AFArray -> Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_lu_inplace"
    af_lu_inplace :: Ptr AFArray -> AFArray -> CBool -> IO AFErr
foreign import ccall unsafe "af_qr"
    af_qr :: Ptr AFArray -> Ptr AFArray -> Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_qr_inplace"
    af_qr_inplace :: Ptr AFArray -> AFArray -> IO AFErr
foreign import ccall unsafe "af_cholesky"
    af_cholesky :: Ptr AFArray -> Ptr CInt -> AFArray -> CBool -> IO AFErr
foreign import ccall unsafe "af_cholesky_inplace"
    af_cholesky_inplace :: Ptr CInt -> AFArray -> CBool -> IO AFErr
foreign import ccall unsafe "af_solve"
    af_solve :: Ptr AFArray -> AFArray -> AFArray -> AFMatProp -> IO AFErr
foreign import ccall unsafe "af_solve_lu"
    af_solve_lu :: Ptr AFArray -> AFArray -> AFArray -> AFArray -> AFMatProp -> IO AFErr
foreign import ccall unsafe "af_inverse"
    af_inverse :: Ptr AFArray -> AFArray -> AFMatProp -> IO AFErr
foreign import ccall unsafe "af_rank"
    af_rank :: Ptr CUInt -> AFArray -> Double -> IO AFErr
foreign import ccall unsafe "af_det"
    af_det :: Ptr Double -> Ptr Double -> AFArray -> IO AFErr
foreign import ccall unsafe "af_norm"
    af_norm :: Ptr Double -> AFArray -> AFNormType -> Double -> Double -> IO AFErr
foreign import ccall unsafe "af_is_lapack_available"
    af_is_lapack_available :: Ptr CBool -> IO AFErr
