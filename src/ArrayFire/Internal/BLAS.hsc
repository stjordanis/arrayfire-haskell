{-# LANGUAGE CPP #-}
module ArrayFire.Internal.BLAS where

import ArrayFire.Internal.Defines

import Foreign.Ptr
import Foreign.C.Types

#include "af/blas.h"
foreign import ccall unsafe "af_matmul"
    af_matmul :: Ptr AFArray -> AFArray -> AFArray -> AFMatProp -> AFMatProp -> IO AFErr
foreign import ccall unsafe "af_dot"
    af_dot :: Ptr AFArray -> AFArray -> AFArray -> AFMatProp -> AFMatProp -> IO AFErr
foreign import ccall unsafe "af_dot_all"
    af_dot_all :: Ptr Double -> Ptr Double -> AFArray -> AFArray -> AFMatProp -> AFMatProp -> IO AFErr
foreign import ccall unsafe "af_transpose"
    af_transpose :: Ptr AFArray -> AFArray -> CBool -> IO AFErr
foreign import ccall unsafe "af_transpose_inplace"
    af_transpose_inplace :: AFArray -> CBool -> IO AFErr
